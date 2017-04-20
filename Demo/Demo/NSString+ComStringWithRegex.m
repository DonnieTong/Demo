//
//  NSString+ComStringWithRegex.m
//  Demo
//
//  Created by DONNIE on 17-4-20.
//  Copyright (c) 2017年 DONNIE. All rights reserved.
//

#import "NSString+ComStringWithRegex.h"

@implementation NSString (ComStringWithRegex)

+ (BOOL)isValidatePhoneNumber:(NSString *)phoneNumber {
    NSString *regex = @"^((13[0-9])|(147)|(15[^4,\\D])|(18[0-9])|(17[0-9]))\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:phoneNumber];
    if (!isMatch) {
        return NO;
    }
    return YES;
}

+ (BOOL)isValidateEmailAddress:(NSString *)email {
        //^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w{2,3}){1,3})$
    NSString *regex = @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [emailTest evaluateWithObject:email];
}

+ (BOOL)isString:(NSString *)string equalsToString:(NSString *)confirmString {
    if ([string isEqualToString:confirmString]) {
        return YES;
    }else
        return NO;
}

@end
