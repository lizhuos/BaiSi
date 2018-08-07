//
//  UIBarButtonItem+LZExtension.m
//  BaiSi
//
//  Created by jack on 2018/8/7.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "UIBarButtonItem+LZExtension.h"

@implementation UIBarButtonItem (LZExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage addTarget:(nullable id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    
    return [[self alloc] initWithCustomView:button];
}

+ (instancetype)itemWithImage:(NSString *)image selImage:(NSString *)selImage targer:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selImage] forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end
