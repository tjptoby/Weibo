//
//  YCYDiscoverViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYDiscoverViewController.h"
#import "UIView+Extension.h"

@interface YCYDiscoverViewController ()

@end

@implementation YCYDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建搜索框对象
    UITextField *searchBar = [[UITextField alloc] init];
    searchBar.width = 300;
    searchBar.height = 30;
    searchBar.font = [UIFont systemFontOfSize:15];
    searchBar.placeholder = @"请输入搜索条件";
    searchBar.background = [UIImage imageNamed:@"searchbar_textfield_background"];
    
    // 设置左边的放大镜图标
    UIImageView *searchIcon = [[UIImageView alloc] init];
    searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
    searchIcon.width = 30;
    searchIcon.height = 30;
    searchIcon.contentMode = UIViewContentModeCenter;
    searchBar.leftView = searchIcon;
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    
    self.navigationItem.titleView = searchBar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
