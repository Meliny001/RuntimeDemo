//
//  Person.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>
@implementation Person

// id self,SEL _cmd 隐式参数
void addMethod(id self,SEL _cmd,id parameter)
{
    NSLog(@"%@-%@-%@",self,NSStringFromSelector(_cmd),parameter);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if (sel == NSSelectorFromString(methodKey)) {
        class_addMethod([self class], sel, (IMP)addMethod, "v@:@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}


@end
