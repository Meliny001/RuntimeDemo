//
//  ViewController.m
//  Sendmsg(消息转发)
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.

//  1.引入头文件 2.配置环境msgsend(获取参数 build settings)

#import "ViewController.h"
#import <objc/message.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 对象 (sel(key)->method_list中找到(value)->IMP)
    Person * xiaoMing = [Person new];
    [xiaoMing eat];
    [xiaoMing performSelector:@selector(eat)];
    objc_msgSend(xiaoMing, @selector(eat));
    objc_msgSend(xiaoMing, @selector(runFor:),100);
    
    // 类
    Class personClass = [Person class];
    [personClass eat];
    [personClass performSelector:@selector(eat)];
    objc_msgSend(personClass, @selector(eat));
}

@end
