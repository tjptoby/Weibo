//
//  YCYDropdownMenu.m
//  Weibo
//
//  Created by Cheney on 15/7/6.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYDropdownMenu.h"
#import "PrefixHeader.pch"

@interface YCYDropdownMenu()

@property(nonatomic, weak) UIImageView *containerView;

@end

@implementation YCYDropdownMenu

- (UIImageView *)containerView
{
    if (!_containerView) {
        // 添加一个灰色图片控件
        UIImageView *containerView = [[UIImageView alloc] init];
        containerView.image = [UIImage imageNamed:@"popover_background"];
        containerView.width = 217;
        containerView.height = 217;
        containerView.userInteractionEnabled = YES; // 开启交互
        [self addSubview:containerView];
        self.containerView = containerView;
    }
    return _containerView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 清除颜色
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


+ (instancetype)menu
{
    return [[self alloc] init];
}

- (void)setContent:(UIView *)content
{
    _content = content;
    
    // 调整内容的位置
    content.x = 10;
    content.y = 15;
    
    // 调整内容的宽度
    content.width = self.containerView.width - 2 * content.x;
    
    // 设置灰色的高度
    self.containerView.height = CGRectGetMaxY(content.frame) + 10;
    
    // 添加内容到灰色图片中
    [self.containerView addSubview:content];
}

- (void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    
    self.content = contentController.view;
}

/**
 *  显示
 */
- (void)showFrom:(UIView *)from
{
    // 1.获得最上面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    
    // 2.添加自己到窗口上
    [window addSubview:self];
    
    // 3.设置尺寸
    self.frame = window.bounds;
    
    // 4.调整灰色图片的位置
    self.containerView.x = (self.width - self.containerView.width) * 0.5;
    self.containerView.y = CGRectGetMaxY(from.frame) + 10;
}

/**
 *  销毁
 */
- (void)dismiss
{
    [self removeFromSuperview];
}

@end
