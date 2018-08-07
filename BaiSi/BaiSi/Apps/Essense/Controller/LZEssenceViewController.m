//
//  LZEssenceViewController.m
//  BaiSi
//
//  Created by jack on 2018/7/27.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "LZEssenceViewController.h"

@interface LZEssenceViewController ()

@end

@implementation LZEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.text = @"弹框测试";
    [button setBackgroundColor:[UIColor redColor]];
    button.frame = CGRectMake(200, 100, 100, 30);
    [button addTarget:self action:@selector(clickAlertButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickAlertButton {
    NSLog(@"%s", __FUNCTION__);
}

@end
