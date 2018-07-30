//
//  LZTabBarController.m
//  BaiSi
//
//  Created by jack on 2018/7/30.
//  Copyright © 2018年 jack. All rights reserved.
//

#import "LZTabBarController.h"
#import "LZEssenceViewController.h"
#import "LZMeViewController.h"
#import "LZNewViewController.h"
#import "LZFollowViewController.h"
#import "LZPublishViewController.h"

@interface LZTabBarController ()

@end

@implementation LZTabBarController

+ (void)load
{
    // 获取哪个类中UITabBarItem
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
//    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    
    // 设置按钮选中标题的颜色:富文本:描述一个文字颜色,字体,阴影,空心,图文混排
    // 创建一个描述文本属性的字典
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    // 设置字体尺寸:只有设置正常状态下,才会有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LZEssenceViewController *essenceVC = [[LZEssenceViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:nav];
    
    LZNewViewController *newVC = [[LZNewViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVC];
    [self addChildViewController:nav1];
    
    LZPublishViewController *publishVC = [[LZPublishViewController alloc] init];
    [self addChildViewController:publishVC];
    
    LZFollowViewController *followVC = [[LZFollowViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:followVC];
    [self addChildViewController:nav2];
    
    LZMeViewController *meVC = [[LZMeViewController alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:meVC];
    [self addChildViewController:nav3];
    
    essenceVC.tabBarItem.title = @"精华";
    essenceVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    essenceVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    newVC.tabBarItem.title = @"新帖";
    newVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    newVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    publishVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    publishVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_publish_click_icon"];
    publishVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    followVC.tabBarItem.title = @"关注";
    followVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    followVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    meVC.tabBarItem.title = @"我";
    meVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    meVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
}

@end
