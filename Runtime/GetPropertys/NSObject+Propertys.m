//
//  NSObject+Propertys.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "NSObject+Propertys.h"

@implementation NSObject (Propertys)
+ (void)getPlistFilePropertysFromDict:(NSDictionary *)dict
{
    NSMutableString * targetStr = [NSMutableString string];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull propertyName, id  _Nonnull value, BOOL * _Nonnull stop) {
//        NSLog(@"%@-%@",propertyName,[value class]);
        NSString * tempStr;
        if ([value isKindOfClass:NSClassFromString(@"__NSCFString")])
        {
            tempStr = [NSString stringWithFormat:@"@property (nonatomic,copy) NSString * %@;",propertyName];
        }else if([value isKindOfClass:NSClassFromString(@"__NSCFNumber")])
        {
            tempStr = [NSString stringWithFormat:@"@property (nonatomic,assign) NSInteger %@;",propertyName];
        }else if([value isKindOfClass:NSClassFromString(@"__NSCFArray")])
        {
            tempStr = [NSString stringWithFormat:@"@property (nonatomic,strong) NSArray * %@;",propertyName];
        }else if([value isKindOfClass:NSClassFromString(@"__NSCFDictionary")])
        {
            tempStr = [NSString stringWithFormat:@"@property (nonatomic,strong) NSDictionary * %@;",propertyName];
        }else if([value isKindOfClass:NSClassFromString(@"__NSCFBoolean")])
        {
            tempStr = [NSString stringWithFormat:@"@property (nonatomic,assign) BOOL %@;",propertyName];
        }
        [targetStr appendFormat:@"\n%@\n",tempStr];
    }];
    
    NSLog(@"%@",targetStr);
}
@end
