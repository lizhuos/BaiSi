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
#import "LZNavigationController.h"

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
    [self setupChildViewController:[[LZEssenceViewController alloc] init] tabBarItemTitle:@"鸡笼商城" imageName:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];

    [self setupChildViewController:[[LZNewViewController alloc] init] tabBarItemTitle:@"商品分类" imageName:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];

    [self setupChildViewController:[[LZFollowViewController alloc] init] tabBarItemTitle:@"企业信息" imageName:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildViewController:[[LZMeViewController alloc] init] tabBarItemTitle:@"个人中心" imageName:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}

- (void)setupChildViewController:(UIViewController *)viewController tabBarItemTitle:(NSString *)tabBarItemTitle imageName:(NSString *)imageName selectedImage:(NSString *)selectedImage {
    LZNavigationController *navigationController = [[LZNavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:navigationController];
    
    // 设置子控制器的tabBarItem
    navigationController.tabBarItem.title = tabBarItemTitle;
    navigationController.tabBarItem.image = [UIImage imageNamed:imageName];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
}

- (void)setupTabBar {
    LZTabBar *tabBar = [[LZTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
}

@end
