//
//  ViewController.m
//  GetPropertys
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Propertys.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * path = [[NSBundle mainBundle]pathForResource:@"status" ofType:@"plist"];
    NSDictionary * status = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSArray * dataArr = status[@"statuses"];
    NSDictionary * targetDict = dataArr[0];
    [NSObject getPlistFilePropertysFromDict:targetDict];
}

@end
