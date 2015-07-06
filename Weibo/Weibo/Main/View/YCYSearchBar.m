//
//  YCYSearchBar.m
//  Weibo
//
//  Created by Cheney on 15/7/6.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYSearchBar.h"
#import "PrefixHeader.pch"

@implementation YCYSearchBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont systemFontOfSize:15];
        self.placeholder = @"请输入搜索条件";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        
        // 设置左边的放大镜图标
        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.contentMode = UIViewContentModeCenter;
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways;
        
        }
    return self;
}

+ (instancetype)searchBar
{
    return [[self alloc] init];
}

@end
