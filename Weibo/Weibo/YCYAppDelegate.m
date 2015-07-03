//
//  AppDelegate.m
//  Weibo
//
//  Created by Cheney on 15/7/2.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYAppDelegate.h"
#import "PrefixHeader.pch"
#import "YCYProfileViewController.h"
#import "YCYDiscoverViewController.h"
#import "YCYHomeViewController.h"
#import "YCYMessageCenterViewController.h"

@interface YCYAppDelegate ()

@end

@implementation YCYAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 设置根控制器
    UITabBarController *tabbarVc = [[UITabBarController alloc] init];
    self.window.rootViewController = tabbarVc;
    
    // 设置子控制器
    YCYHomeViewController *home = [[YCYHomeViewController alloc] init];
    [self addChildVc:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    YCYMessageCenterViewController *messageCenter = [[YCYMessageCenterViewController alloc] init];
    [self addChildVc:messageCenter title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    YCYDiscoverViewController *discover = [[YCYDiscoverViewController alloc] init];
    [self addChildVc:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    YCYProfileViewController *profile = [[YCYProfileViewController alloc] init];
    [self addChildVc:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
    [tabbarVc addChildViewController:home];
    [tabbarVc addChildViewController:messageCenter];
    [tabbarVc addChildViewController:discover];
    [tabbarVc addChildViewController:profile];
    
    // 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
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
    childVc.tabBarItem.title = title;
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
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
