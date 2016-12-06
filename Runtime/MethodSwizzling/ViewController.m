//
//  ViewController.m
//  MethodSwizzling
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//  MethodSwizzling 在系统原有方法上进行扩展,可以不用导入分类头文件

#import "ViewController.h"
//#import "UIImage+ZGExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [UIImage ZG_ImageNamed:@"111"];
    [UIImage imageNamed:@"111"];
}

@end
