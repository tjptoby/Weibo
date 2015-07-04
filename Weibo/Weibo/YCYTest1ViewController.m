//
//  YCYTest1ViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/4.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYTest1ViewController.h"
#import "YCYTest2ViewController.h"

@interface YCYTest1ViewController ()

@end

@implementation YCYTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    YCYTest2ViewController *test2 = [[YCYTest2ViewController alloc] init];
    test2.title = @"测试2控制器";
    [self.navigationController pushViewController:test2 animated:YES];
}

@end
