//
//  MaisOuiViewController.h
//  MaisOui
//
//  Created by Robert Irwin on 1/28/14.
//  Copyright (c) 2014 Robert Irwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MaisOuiViewController : UIViewController <UITextFieldDelegate ,UIPickerViewDataSource ,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *inLanguagePicker;
@end


