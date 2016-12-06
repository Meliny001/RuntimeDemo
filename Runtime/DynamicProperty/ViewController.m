//
//  ViewController.m
//  DynamicProperty
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//  给类动态添加属性

#import "ViewController.h"
#import "NSObject+ZGExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject * obj = [[NSObject alloc]init];
    obj.name = @"123";
    NSLog(@"%@",obj.name);
}

@end
