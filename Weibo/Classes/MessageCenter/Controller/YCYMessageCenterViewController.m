//
//  YCYMessageCenterViewController.m
//  Weibo
//
//  Created by Cheney on 15/10/17.
//  Copyright © 2015年 Cheney. All rights reserved.
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
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // style : 这个参数是用来设置背景的，在iOS7之前效果比较明显, iOS7中没有任何效果
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(composeMsg)];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 这个item不能点击(目前放在viewWillAppear就能显示disable下的主题)
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

- (void)composeMsg
{
    NSLog(@"composeMsg");
}

#pragma mark - Table view data sourc
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
    
    cell.textLabel.text = [NSString stringWithFormat:@"test-message-%ld", indexPath.row];
    
    return cell;
}

#pragma mark - 代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    YCYTest1ViewController *test1 = [[YCYTest1ViewController alloc] init];
    test1.title = @"测试1控制器";
    // 当test1控制器被push的时候，test1所在的tabbarcontroller的tabbar会自动隐藏
    // 当test1控制器被pop的时候，test1所在的tabbarcontroller的tabbar会自动显示
//    test1.hidesBottomBarWhenPushed = YES;
    
    // self.navigationController === HWNavigationController
    [self.navigationController pushViewController:test1 animated:YES];
}
@end
