//
//  LZEssenceViewController.m
//  BaiSi
//
//  Created by jack on 2018/7/27.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "LZEssenceViewController.h"
#import "UIBarButtonItem+LZExtension.h"

@interface LZEssenceViewController ()



@end

@implementation LZEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupNaviBarButton];
}

#pragma mark - Navigation BarButtonItem
- (void)setupNaviBarButton {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"nav_item_game_icon" highImage:@"nav_item_game_click_icon" addTarget:self action:@selector(clickLeftBarButton)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationButtonRandom" highImage:@"navigationButtonRandomClick" addTarget:self action:@selector(clickRightBarButton)];
}

- (void)clickLeftBarButton {
    NSLog(@"%s", __FUNCTION__);
}

- (void)clickRightBarButton {
    NSLog(@"%s", __FUNCTION__);
}

@end
