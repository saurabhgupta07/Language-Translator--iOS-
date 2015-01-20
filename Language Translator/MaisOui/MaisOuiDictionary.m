//
//  MaisOuiDictionary.m
//  MaisOui
//
//  Created by Robert Irwin on 1/28/14.
//  Copyright (c) 2014 Robert Irwin. All rights reserved.
//

#import "MaisOuiDictionary.h"

@interface MaisOuiDictionary()
@property (strong,nonatomic,readonly) NSDictionary *words;
@end

@implementation MaisOuiDictionary

@synthesize words = _words;

// if we didn't use lazy instantiation in the words getter, can set it up in model class initializer
//- (instancetype) init
//{
//    if ( self = [super init] )
//    {
//        _words = [NSDictionary dictionaryWithObjects:
//                       [NSArray arrayWithObjects: @"tableau noir", @"zut", @"chien", @"triste", @"heureux", nil]
//                                             forKeys:
//                       [NSArray arrayWithObjects: @"blackboard", @"damn", @"dog", @"sad", @"happy", nil]];
//    }
//    return self;
//}

- (instancetype)init:(NSString *) inWord : (NSString *) outWord;
{
    self = [super init];
    if (self) {
        
        if ([[inWord lowercaseString] isEqual :@"english" ] && [[outWord lowercaseString] isEqual: @"spanish"]) {
            
           
                _words = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"pizarra", @"blackboard",
                          @"maldita", @"damn",
                          @"perro", @"dog",
                          @"ahora", @"sad",
                          @"feliz", @"happy",
                          nil];
            

            
        }
        if ([[inWord lowercaseString] isEqual :@"english" ] && [[outWord lowercaseString] isEqual: @"french"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tableau noir", @"blackboard",
                      @"zut", @"damn",
                      @"chien", @"dog",
                      @"triste", @"sad",
                      @"heureux", @"happy",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"spanish" ] && [[outWord lowercaseString] isEqual: @"french"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tableau noir", @"pizarra",
                      @"zut", @"maldita",
                      @"chien", @"perro",
                      @"triste", @"ahora",
                      @"heureux", @"feliz",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"french" ] && [[outWord lowercaseString] isEqual: @"spanish"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                       @"pizarra",@"tableau noir",
                      @"maldita", @"zut",
                       @"perro", @"chien",
                       @"ahora", @"triste",
                       @"feliz", @"heureux",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"french" ] && [[outWord lowercaseString] isEqual: @"english"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"blackboard", @"tableau noir",
                       @"damn", @"zut",
                       @"dog", @"chien",
                      @"sad",  @"triste",
                       @"happy",@"heureux",
                      nil];
            
            
            
        }
        
        if ([[inWord lowercaseString] isEqual :@"spanish" ] && [[outWord lowercaseString] isEqual: @"english"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"blackboard", @"pizarra",
                       @"damn", @"maldita",
                      @"dog",  @"perro",
                       @"sad", @"ahora",
                       @"happy", @"feliz",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"spanish" ] && [[outWord lowercaseString] isEqual: @"german"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tafel", @"pizarra",
                      @"verdammt", @"maldita",
                      @"hund",  @"perro",
                      @"traurig", @"ahora",
                      @"froh", @"feliz",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"german" ] && [[outWord lowercaseString] isEqual: @"spanish"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"pizarra",@"tafel",
                      @"maldita",@"verdammt",
                      @"perro",@"hund",
                      @"ahora",@"traurig",
                      @"feliz",@"froh",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"english" ] && [[outWord lowercaseString] isEqual: @"german"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tafel", @"blackboard",
                      @"verdammt", @"damn",
                      @"hund",  @"dog",
                      @"traurig", @"sad",
                      @"froh", @"happy",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"german" ] && [[outWord lowercaseString] isEqual: @"english"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"blackboard",@"tafel",
                      @"damn",@"verdammt",
                      @"dog",@"hund",
                      @"sad",@"traurig",
                      @"happy",@"froh",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"german" ] && [[outWord lowercaseString] isEqual: @"french"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tableau noir",@"tafel",
                      @"zut",@"verdammt",
                      @"chien",@"hund",
                      @"triste",@"traurig",
                      @"heureux",@"froh",
                      nil];
            
            
            
        }
        if ([[inWord lowercaseString] isEqual :@"french" ] && [[outWord lowercaseString] isEqual: @"german"]) {
            
            
            _words = [NSDictionary dictionaryWithObjectsAndKeys:
                      @"tafel",@"tableau noir",
                      @"verdammt",@"zut",
                      @"hund",@"chien",
                      @"traurig",@"triste",
                      @"froh",@"heureux",
                      nil];
            
            
            
        }






        
        
        
        
        
    }
    return self;
}

- (NSDictionary *) words
{
       return _words;
}

- (NSString *) lookup: (NSString *)in
{
    NSString *rv = [self.words objectForKey: in.lowercaseString];
    if ( !rv )
        return @"*** no translation ***";
    return rv;
}

@end
