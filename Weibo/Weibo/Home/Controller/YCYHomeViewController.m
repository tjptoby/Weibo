//
//  YCYHomeViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYHomeViewController.h"
#import "PrefixHeader.pch"

@interface YCYHomeViewController ()

@end

@implementation YCYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 设置导航栏上面的内容 */
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(friendSearch) image:@"navigationbar_friendsearch" highImage:@"navigationbar_friendsearch_highlighted"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop) image:@"navigationbar_pop" highImage:@"navigationbar_pop_highlighted"];
}

- (void)friendSearch
{
    
}

- (void)pop
{
    
}

@end
