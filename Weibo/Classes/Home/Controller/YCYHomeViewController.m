//
//  YCYHomeViewController.m
//  Weibo
//
//  Created by Cheney on 15/10/17.
//  Copyright © 2015年 Cheney. All rights reserved.
//

#import "YCYHomeViewController.h"
#import "UIBarButtonItem+Extension.h"

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
    NSLog(@"friendSearch");
}

- (void)pop
{
    NSLog(@"pop");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}

@end
