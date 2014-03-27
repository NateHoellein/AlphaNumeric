//
//  AlphaNumericTestsTests.m
//  AlphaNumericTestsTests
//
//  Created by Nathan Hoellein on 3/26/14.
//  Copyright (c) 2014 Nathan Hoellein. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AlphaNumericTests.h"

@interface AlphaNumericTestsTests : XCTestCase

@end

@implementation AlphaNumericTestsTests
    AlphaNumericTests *alphaTests;

-(void)setUp {
    alphaTests = [[AlphaNumericTests alloc] init];
}
- (void)testA
{
    [self assertString:@"A"];
}

-(void)testZ {
    [self assertString:@"Z"];
}

-(void)test_a {
    [self assertString:@"a"];
}

-(void)test_r {
    [self assertString:@"r"];
}

-(void)test_pound {
    BOOL isAlpha = [alphaTests isAlphaNumeric:@"#"];
    XCTAssertTrue(!isAlpha, @"Expected True");
}

-(void)testNumbers {
    [self assertString:@"1"];
}

-(void)test_blanks {
    BOOL isAlpha = [alphaTests isAlphaNumeric:@"          "];
    XCTAssertTrue(!isAlpha, @"Expected True");
}
    

-(void)assertString:(NSString *) testValue {
    BOOL isAlpha = [alphaTests isAlphaNumeric:testValue];
    XCTAssertTrue(isAlpha, @"Expected True");
}
@end
