//
//  YCYDiscoverViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYDiscoverViewController.h"
#import "UIView+Extension.h"
#import "YCYSearchBar.h"

@interface YCYDiscoverViewController ()

@end

@implementation YCYDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建搜索框对象
    YCYSearchBar *searchBar = [YCYSearchBar searchBar];
    searchBar.width = 300;
    searchBar.height = 30;
    self.navigationItem.titleView = searchBar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
