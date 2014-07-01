//
//  UIDevice+SystemVersion.m
//  SDKExamples
//
//  Created by Emperor on 10/3/13.
//  Copyright (c) 2013 Wikitude. All rights reserved.
//

#import "UIDevice+SystemVersion.h"

@implementation UIDevice (SystemVersion)

+ (BOOL)isRunningiOS7
{
    BOOL isRunningiOS7 = NO;

    NSComparisonResult systemCheckResult = [[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch];
    if ( NSOrderedDescending == systemCheckResult || NSOrderedSame == systemCheckResult) {
        isRunningiOS7 = YES;
    }
    
    return isRunningiOS7;
}

@end
