//
//  YCYTest2ViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/4.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYTest2ViewController.h"
#import "PrefixHeader.pch"
#import "YCYTest3ViewController.h"

@interface YCYTest2ViewController ()

@end

@implementation YCYTest2ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    YCYTest3ViewController *test3 = [[YCYTest3ViewController alloc] init];
    test3.title = @"测试3控制器";
    [self.navigationController pushViewController:test3 animated:YES];
}

@end
