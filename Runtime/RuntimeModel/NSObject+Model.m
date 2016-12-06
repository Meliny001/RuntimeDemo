//
//  NSObject+Model.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/runtime.h>
@implementation NSObject (Model)
+ (instancetype)sharedModelXXXWithDict:(NSDictionary *)dict
{
    id model = [[self alloc]init];
    unsigned int count;
#if 0
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        NSString * propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        NSString * propertyType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        
        NSString * key = [propertyName substringFromIndex:1];
        id value = dict[key];
        if (value) {
            [model setValue:value forKey:key];
        }
    }
    free(ivars);
#endif
    
    objc_property_t * propertys = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; i ++) {
        objc_property_t property = propertys[i];
        NSString * key = [NSString stringWithUTF8String:property_getName(property)];
        id value = dict[key];
        if (value) {
            [model setValue:value forKey:key];
        }
    }
    free(propertys);
    return model;
}
+ (instancetype)sharedModelWithDict:(NSDictionary *)dict
{
    id model = [[self alloc]init];
    unsigned int count;

    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        NSString * propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        NSString * propertyType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        
        NSString * key = [propertyName substringFromIndex:1];
        id value = dict[key];
        // 二级模型 (value属于字典&&属性为自定义类型)
        if ([value isKindOfClass:[NSDictionary class]] && ![propertyType containsString:@"NS"]) {
            //propertyType @\"User\"
            // 拿到属性名->获取对应class
            NSRange range = [propertyType rangeOfString:@"\""];
            propertyType = [propertyType substringFromIndex:range.location + range.length];
            range = [propertyType rangeOfString:@"\""];
            propertyType = [propertyType substringToIndex:range.location];
//            NSLog(@"%@",propertyType);

            Class className = NSClassFromString(propertyType);
            // 存入二级模型->模型作为最终的value
            if (className) {
                value = [className sharedModelWithDict:value];
            }
            
        }
        
        // 赋值
        if (value) {
            [model setValue:value forKey:key];
        }
    }
    free(ivars);
    return model;
}
@end
