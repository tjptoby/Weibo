//
//  YCYOAuthViewController.m
//  Weibo
//
//  Created by Cheney on 15/7/10.
//  Copyright (c) 2015年 Cheney. All rights reserved.
//

#import "YCYOAuthViewController.h"
#import <AFNetworking.h>

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
    NSURL *url = [NSURL URLWithString:@"https://api.weibo.com/oauth2/authorize?client_id=2893713829&redirect_uri=http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
}

#pragma mark - webView代理方法
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    // 1.获得url
    NSString *url = request.URL.absoluteString;
    
    // 2.判断是否为回调地址
    NSRange range = [url rangeOfString:@"code="];
    if (range.length != 0) { // 是回调地址
        // 截取code=后面的参数值
        int fromIndex = range.location + range.length;
        NSString *code = [url substringFromIndex:fromIndex];
        
        // 利用code换取一个accessToken
        [self accessTokenWithCode:code];
        
        // 禁止加载回调地址
        return NO;
    }
    
    return YES;
}

/**
 *  利用code（授权成功后的request token）换取一个accessToken
 *
 *  @param code 授权成功后的request token
 */
- (void)accessTokenWithCode:(NSString *)code
{
    // 1.请求管理者
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    
    // 2.拼接请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"client_id"] = @"2893713829";
    params[@"client_secret"] = @"f0da0c3d64ae8e60ca1db5a9d2c70a75";
    params[@"grant_type"] = @"authorization_code";
    params[@"redirect_uri"] = @"http://www.baidu.com";
    params[@"code"] = code;
    
    // 3.发送请求
    [mgr POST:@"https://api.weibo.com/oauth2/access_token" parameters:params success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
        // 沙盒路径
        NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        NSString *path = [doc stringByAppendingPathComponent:@"account.plist"];
        
        // 切换窗口的根控制器
        [responseObject writeToFile:path atomically:YES];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"请求失败-%@", error);
    }];
}

@end
