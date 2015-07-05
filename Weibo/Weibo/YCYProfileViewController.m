//
//  YCYProfileViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYProfileViewController.h"
#import "YCYTest1ViewController.h"

@interface YCYProfileViewController ()

@end

@implementation YCYProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:0 target:self action:@selector(setting)];
}

- (void)setting
{
    YCYTest1ViewController *test1 = [[YCYTest1ViewController alloc] init];
    test1.title = @"test1";
    [self.navigationController pushViewController:test1 animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 0;
}

@end
