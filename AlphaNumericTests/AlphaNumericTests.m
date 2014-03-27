//
//  AlphaNumericTests.m
//  AlphaNumericTests
//
//  Created by Nathan Hoellein on 3/26/14.
//  Copyright (c) 2014 Nathan Hoellein. All rights reserved.
//

#import "AlphaNumericTests.h"

@implementation AlphaNumericTests


-(BOOL)isAlphaNumeric:(NSString *) string {
    
    for (int i = 0; i < [string length]; i++) {
        unichar mychar = [string characterAtIndex:i];
        if((mychar >= 65 && mychar <= 90) ||
           (mychar >= 97 && mychar <= 122) ||
           (mychar >= 48 && mychar <= 57)) {
            return YES;
        }
    }
    return NO;
}
@end
