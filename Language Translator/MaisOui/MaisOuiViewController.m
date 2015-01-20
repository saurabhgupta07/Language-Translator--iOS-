//
//  MaisOuiViewController.m
//  MaisOui
//
//  Created by Robert Irwin on 1/28/14.
//  Copyright (c) 2014 Robert Irwin. All rights reserved.
//  Modified By :
// Saurabh Gupta
// CIS 651
// HW - 2

#import "MaisOuiViewController.h"
#import "MaisOuiDictionary.h"

@interface MaisOuiViewController ()
{
    __weak IBOutlet UILabel *InputLanguageLabel;
    __weak IBOutlet UILabel *OutputLanguageLabel;
    NSArray *_firstPickerData;
    NSArray *_secondPickerData;
       
}
@property (strong,nonatomic) MaisOuiDictionary *dictionary;
@property (weak, nonatomic) IBOutlet UITextField *inWord;
@property (weak, nonatomic) IBOutlet UILabel *outWord;

@end

@implementation MaisOuiViewController


@synthesize inWord = _inWord;
@synthesize outWord = _outWord;
@synthesize dictionary = _dictionary;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.inWord.delegate = self;
    _firstPickerData = @[@"English",@"French",@"Spanish",@"German"];
    _secondPickerData = @[@"French",@"Spanish",@"German"];
    InputLanguageLabel.text = [_firstPickerData objectAtIndex:0];
    OutputLanguageLabel.text =[_secondPickerData objectAtIndex:0];
    self.inLanguagePicker.dataSource = self;
    self.inLanguagePicker.delegate = self;
    
    
    
}

- (MaisOuiDictionary *) dictionary
{
    if (!_dictionary)
        _dictionary = [[MaisOuiDictionary alloc] init: InputLanguageLabel.text : OutputLanguageLabel.text];
    return _dictionary;
}

- (IBAction)translate:(UIButton *)sender
{
    
    _dictionary = [[MaisOuiDictionary alloc] init: InputLanguageLabel.text : OutputLanguageLabel.text];
    [self.inWord resignFirstResponder];  // dismisses soft keyboard
    self.outWord.text = [self.dictionary lookup: self.inWord.text];
    // equivalent to preceding; doesn't use dot notation:
    // [[self outWord] setText: [[self dictionary] lookup: [[self inWord] text]]];
}




// implements UITextFieldDelegate protocol method
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.inWord ) {
        _dictionary = [[MaisOuiDictionary alloc] init: InputLanguageLabel.text : OutputLanguageLabel.text];
        [textField resignFirstResponder];
        self.outWord.text = [self.dictionary lookup: self.inWord.text];
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Function returning number of columns picker will have
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    
    return 2;
    
}

//Function returning number of rows picker will have
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{           if(component==0)
    return _firstPickerData.count;
        else
           return _secondPickerData.count;
        
        
}




//Function to set row value for picker
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
   
        if (component==0) {
            return _firstPickerData[row];
        }
    return _secondPickerData[row];
    
    
}

//UIPicker function when a row in picker is selected
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
        if (component==0){
        
        self.inWord.text = @"";
        self.outWord.text = @"";
        InputLanguageLabel.text = [_firstPickerData objectAtIndex:[pickerView selectedRowInComponent:0]];
        OutputLanguageLabel.text = [_secondPickerData objectAtIndex:[pickerView selectedRowInComponent:1]];
        NSMutableArray * arr = [[NSMutableArray alloc]init];
            NSLog(@"%@%@",InputLanguageLabel.text,[_firstPickerData objectAtIndex:0]);
        
        for(int i=0 ;i< _firstPickerData.count;i++){
            
            if([InputLanguageLabel.text isEqualToString:[_firstPickerData objectAtIndex:i]]){
                continue;
            }
            else{
                
                [arr addObject:[_firstPickerData objectAtIndex:i]];
                
                
            }
        }
           
        _secondPickerData =arr;
        [self.inLanguagePicker reloadComponent:1];
        OutputLanguageLabel.text = [_secondPickerData objectAtIndex:[pickerView selectedRowInComponent:1]];
            
        }
    if(component==1){
       // self.inWord.text = @"";
        self.outWord.text = @"";
        OutputLanguageLabel.text = [_secondPickerData objectAtIndex:[pickerView selectedRowInComponent:1]];
        
        
    }
      
        
      
        
        
    }








@end

