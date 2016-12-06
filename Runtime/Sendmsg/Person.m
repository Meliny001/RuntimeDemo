//
//  Person.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat
{
    NSLog(@"对象-%@",NSStringFromSelector(_cmd));
}
+ (void)eat
{
    NSLog(@"类-%@",NSStringFromSelector(_cmd));
}
- (void)runFor:(NSInteger)length
{
    NSLog(@"run %zi",length);
}
@end
