//
//  YCYDropdownMenu.h
//  Weibo
//
//  Created by Cheney on 15/7/6.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCYDropdownMenu : UIView

+ (instancetype)menu;

/**
 *  显示
 */
- (void)showFrom:(UIView *)from;
/**
 *  销毁
 */
- (void)dismiss;

/**
 *  内容
 */
@property (nonatomic, strong) UIView *content;
/**
 *  内容控制器
 */
@property (nonatomic, strong) UIViewController *contentController;

@end
