//
//  YCYTabBarViewController.m
//  Weibo
//
//  Created by Cheney on 15/10/17.
//  Copyright © 2015年 Cheney. All rights reserved.
//

#import "YCYTabBarViewController.h"
#import "YCYHomeViewController.h"
#import "YCYMessageCenterViewController.h"
#import "YCYDiscoverViewController.h"
#import "YCYProfileViewController.h"
#import "YCYNavigationController.h"
#import "YCYOverall.h"

@interface YCYTabBarViewController ()

@end

@implementation YCYTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.初始化子控制器
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
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 同时设置tabbar和navigationBar的文字
    childVc.title = title;
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = YCYColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    childVc.view.backgroundColor = YCYRandomColor;
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    YCYNavigationController *nav = [[YCYNavigationController alloc] initWithRootViewController:childVc];
    // 添加为子控制器
    [self addChildViewController:nav];
}

@end
