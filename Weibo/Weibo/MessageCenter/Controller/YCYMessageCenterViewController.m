//
//  YCYMessageCenterViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/3.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYMessageCenterViewController.h"
#import "YCYTest1ViewController.h"

@interface YCYMessageCenterViewController ()

@end

@implementation YCYMessageCenterViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(composeMsg)];
    
    // 这个item不能点
    self.navigationItem.rightBarButtonItem.enabled = NO;

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    }

- (void)composeMsg
{
    
}

#pragma mark - Table View data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"test-message-%ld", (long)indexPath.row];
    
    return cell;
}

#pragma mark - 代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    YCYTest1ViewController *test1 = [[YCYTest1ViewController alloc] init];
    test1.title = @"测试1控制器";
    
    [self.navigationController pushViewController:test1 animated:YES];
}

@end
