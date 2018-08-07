//
//  UIBarButtonItem+LZExtension.h
//  BaiSi
//
//  Created by jack on 2018/8/7.
//  Copyright © 2018年 jack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LZExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage addTarget:(nullable id)target action:(SEL)action;
+ (instancetype)itemWithImage:(NSString *)image selImage:(NSString *)selImage targer:(id)target action:(SEL)action;

@end
