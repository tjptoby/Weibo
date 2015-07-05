//
//  YCYTabBarViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYTabBarViewController.h"
#import "PrefixHeader.pch"
#import "YCYProfileViewController.h"
#import "YCYDiscoverViewController.h"
#import "YCYHomeViewController.h"
#import "YCYMessageCenterViewController.h"
#import "YCYNavigationController.h"

@interface YCYTabBarViewController ()

@end

@implementation YCYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化子控制器
    // 设置子控制器
    YCYHomeViewController *home = [[YCYHomeViewController alloc] init];
    [self addChildVc:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    YCYMessageCenterViewController *messageCenter = [[YCYMessageCenterViewController alloc] init];
    [self addChildVc:messageCenter title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    YCYDiscoverViewController *discover = [[YCYDiscoverViewController alloc] init];
    [self addChildVc:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    YCYProfileViewController *profile = [[YCYProfileViewController alloc] init];
    [self addChildVc:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc      子控制器
 *  @param title        标题
 *  @param image        图片
 *  @param selectdImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectdImage
{
    // 设置子控制器的文字和图片
//    childVc.tabBarItem.title = title; // 设置tabBar的文字
//    childVc.navigationItem.title = title; // 设置navigationBar的文字
    
    // 设置childVc的title可以显示tabBar和navigationBar文字
    childVc.title = title;
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    
    // 声明：这张图片按照原始的样子显示出来，不要自动渲染。
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectdImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = YCYColor(123, 123, 123);
    NSMutableDictionary *selecteTextAttrs = [NSMutableDictionary dictionary];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selecteTextAttrs forState:UIControlStateSelected];
    
    childVc.view.backgroundColor = YCYRandomColor;
    
    // 先给外面传进来的小控制器，包装一个导航控制器
    YCYNavigationController *nav = [[YCYNavigationController alloc] initWithRootViewController:childVc];
    
    // 添加为子控制器
    [self addChildViewController:nav];
}

@end
