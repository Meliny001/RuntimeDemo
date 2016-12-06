//
//  NSObject+ZGExtension.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "NSObject+ZGExtension.h"
#import <objc/message.h>

// NSObject->name属性(nameKey)->name对象@"123"

static NSString * nameKey;

@implementation NSObject (ZGExtension)
- (void)setName:(NSString *)name
{
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)name
{
    return objc_getAssociatedObject(self, &nameKey);
}
@end
