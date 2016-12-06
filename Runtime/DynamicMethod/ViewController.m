//
//  ViewController.m
//  DynamicMethod
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//  动态添加方法
//  使用场景:当类的方法过多时,可以动态添加使用时再调用
#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person * xiaoMing = [Person new];
    
    // unrecognized selector sent to instance
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
//    [xiaoMing performSelector:NSSelectorFromString(methodKey)];
    [xiaoMing performSelector:NSSelectorFromString(methodKey) withObject:@"123"];
#pragma clang diagnostic pop
    
}

@end
