//
//  YCYOverall.h
//  Weibo
//
//  Created by Cheney on 15/10/17.
//  Copyright © 2015年 Cheney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// RGB颜色
#define YCYColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 随机色
#define YCYRandomColor YCYColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface YCYOverall : NSObject

@end
