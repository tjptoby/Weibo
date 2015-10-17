//
//  HWTest1ViewController.m
//  黑马微博2期
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "YCYTest1ViewController.h"
#import "YCYTest2ViewController.h"

@interface YCYTest1ViewController ()

@end

@implementation YCYTest1ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    YCYTest2ViewController *test2 = [[YCYTest2ViewController alloc] init];
    test2.title = @"测试2控制器";
    [self.navigationController pushViewController:test2 animated:YES];
}

@end
