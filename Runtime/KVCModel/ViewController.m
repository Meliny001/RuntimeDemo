//
//  ViewController.m
//  KVCModel
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "ViewController.h"
#import "Status.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * path = [[NSBundle mainBundle]pathForResource:@"status" ofType:@"plist"];
    NSDictionary * status = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSArray * dataArr = status[@"statuses"];
    
    NSMutableArray * targetArr = [NSMutableArray array];
    for (NSDictionary * dict in dataArr) {
        Status * status = [Status sharedStatusWithDict:dict];
        [targetArr addObject:status];
    }
    NSLog(@"%@",targetArr);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
