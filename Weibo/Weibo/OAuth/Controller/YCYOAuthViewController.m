//
//  YCYOAuthViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/10.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYOAuthViewController.h"

@interface YCYOAuthViewController ()

@end

@implementation YCYOAuthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建一个webView
    UIWebView *webView = [[UIWebView alloc] init];
    webView.frame = self.view.bounds;
    [self.view addSubview:webView];
    
    // 用webView加载登录页面
    NSURL *url = [NSURL URLWithString:@"https://api.weibo.com/oauth2/authorize?client_id=2893713829&redirect_uri=http://"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
}

@end
