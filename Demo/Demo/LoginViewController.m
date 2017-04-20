//
//  LoginViewController.m
//  Demo
//
//  Created by DONNIE on 17-4-20.
//  Copyright (c) 2017年 DONNIE. All rights reserved.
//

#import "LoginViewController.h"
#import "UIColor+ColorWithHexString.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:60/255.0 green:60/255.0 blue:60/255.0 alpha:1]];
//    [self.topView setBackgroundColor:[UIColor colorWithHexString:@"#4baff4"]];
    [self.topView setBackgroundColor:[UIColor colorWithRed:60/255.0 green:60/255.0 blue:60/255.0 alpha:1]];
    [self layoutLoginTextField];
}

- (void)layoutLoginTextField {
    //手机输入框左视图
    self.phoneTF.leftViewMode = UITextFieldViewModeAlways;
    UIView *phone_leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55, 50)];
    UIImageView *phone_imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow"]];
    phone_imgView.frame = CGRectMake(0, 0, 48, 50);
    [phone_leftView addSubview:phone_imgView];
    self.phoneTF.leftView = phone_leftView;
    self.phoneTF.layer.cornerRadius = 3.0;
//    phone_leftView.backgroundColor = [UIColor colorWithRed:94/255.0 green:155/255.0 blue:155/255.0 alpha:1];
    
    //验证码输入框左视图
    UIView *code_leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55, 50)];
//    code_leftView.backgroundColor = [UIColor colorWithRed:94/255.0 green:155/255.0 blue:155/255.0 alpha:1];
    self.codeTF.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *code_imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow"]];
    code_imgView.frame = CGRectMake(0, 0, 48, 50);
    [code_leftView addSubview:code_imgView];
    self.codeTF.leftView = code_leftView;
    self.codeTF.layer.cornerRadius = 5.0;
    
    //输入框背景色
    self.phoneTF.backgroundColor = [UIColor colorWithRed:215/255.0 green:215/255.0 blue:215/255.0 alpha:1];
    self.codeTF.backgroundColor = [UIColor colorWithRed:215/255.0 green:215/255.0 blue:215/255.0 alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

















