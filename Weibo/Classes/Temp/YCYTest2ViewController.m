//
//  HWTest2ViewController.m
//  黑马微博2期
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "YCYTest2ViewController.h"
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
