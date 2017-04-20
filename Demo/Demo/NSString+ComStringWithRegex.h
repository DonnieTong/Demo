//
//  NSString+ComStringWithRegex.h
//  Demo
//
//  Created by DONNIE on 17-4-20.
//  Copyright (c) 2017年 DONNIE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ComStringWithRegex)

+ (BOOL)isValidatePhoneNumber:(NSString *)phoneNumber;  //检查手机号码是否合法
+ (BOOL)isValidateEmailAddress:(NSString *)email;       //检查邮箱是否合法
@end
