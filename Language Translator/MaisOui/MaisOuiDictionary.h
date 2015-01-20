//
//  MaisOuiDictionary.h
//  MaisOui
//
//  Created by Robert Irwin on 1/28/14.
//  Copyright (c) 2014 Robert Irwin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MaisOuiDictionary : NSObject

- (NSString *) lookup: (NSString *) in;

-(id) init : (NSString *) inWord : (NSString *) outWord;
@end
