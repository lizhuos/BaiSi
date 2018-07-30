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
#import "LZTabBar.h"

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
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [item setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置子控制器
    [self setupViewController];
    
    // 自定义tabBar
    [self setupTabBar];
}

- (void)setupViewController {
    LZEssenceViewController *essenceVC = [[LZEssenceViewController alloc] init];
    [self setupTabBarItem:essenceVC tabBarItemTitle:@"精华" imageName:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:nav];
    
    LZNewViewController *newVC = [[LZNewViewController alloc] init];
    [self setupTabBarItem:newVC tabBarItemTitle:@"新帖" imageName:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVC];
    [self addChildViewController:nav1];
    
    LZFollowViewController *followVC = [[LZFollowViewController alloc] init];
    [self setupTabBarItem:followVC tabBarItemTitle:@"关注" imageName:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:followVC];
    [self addChildViewController:nav2];
    
    LZMeViewController *meVC = [[LZMeViewController alloc] init];
    [self setupTabBarItem:meVC tabBarItemTitle:@"我" imageName:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:meVC];
    [self addChildViewController:nav3];
}

- (void)setupTabBarItem:(UIViewController *)viewController tabBarItemTitle:(NSString *)tabBarItemTitle imageName:(NSString *)imageName selectedImage:(NSString *)selectedImage {
    
    viewController.tabBarItem.title = tabBarItemTitle;
    viewController.tabBarItem.image = [UIImage imageNamed:imageName];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
}

- (void)setupTabBar {
    LZTabBar *tabBar = [[LZTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

@end
