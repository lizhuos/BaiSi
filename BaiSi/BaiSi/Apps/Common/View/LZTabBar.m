//
//  LZTabBar.m
//  BaiSi
//
//  Created by jack on 2018/7/30.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "LZTabBar.h"

@interface LZTabBar ()

@property(nonatomic, weak) UIButton *publishButton;

@end

@implementation LZTabBar

- (UIButton *)publishButton {
    if (_publishButton == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [button sizeToFit];
        
        [self addSubview:button];
        _publishButton = button;
    }
    return _publishButton;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSUInteger count = self.items.count + 1;
    NSUInteger index = 0;
    CGFloat buttonWidth = self.bounds.size.width / count;
    CGFloat buttonHeight = self.bounds.size.height;
    
    // 调整子控件布局
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (index == 2) {
                index += 1;
            }
            tabBarButton.frame = CGRectMake(index * buttonWidth, 0, buttonWidth, buttonHeight);
            index++;
        }
    }
    self.publishButton.center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
}

@end
