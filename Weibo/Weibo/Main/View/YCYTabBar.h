//
//  YCYTabBar.h
//  Weibo
//
//  Created by Cheney on 15/7/9.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YCYTabBar;

// warning 因为HWTabBar继承自UITabBar，所以称为HWTabBar的代理，也必须实现UITabBar的代理协议
@protocol HWTabBarDelegate <UITabBarDelegate>

@optional

- (void)tabBarDidClickPlusButton:(YCYTabBar *)tabBar;
@end

@interface YCYTabBar : UITabBar
@property (nonatomic, weak) id<HWTabBarDelegate> delegate;

@end
