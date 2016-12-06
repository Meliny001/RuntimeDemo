//
//  UIImage+ZGExtension.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "UIImage+ZGExtension.h"
#import <objc/message.h>

@implementation UIImage (ZGExtension)

+(void)load
{
    Method method = class_getClassMethod([self class], @selector(imageNamed:));
    Method swizzlingMethod = class_getClassMethod([self class], @selector(ZG_ImageNamed:));
    method_exchangeImplementations(method, swizzlingMethod);
}

+(__kindof UIImage *)ZG_ImageNamed:(NSString *)name
{
    UIImage * image = [UIImage ZG_ImageNamed:name];
    if (!image) {
        NSLog(@"图片不存在或者name:%@错误",name);
    }
    return image;
}
@end
