//
//  Status.m
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "Status.h"

@implementation Status
+ (__kindof Status *)sharedStatusWithDict:(NSDictionary *)dict
{
    Status * status = [[Status alloc]init];
    [status setValuesForKeysWithDictionary:dict];
    return status;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        _ID = [value integerValue];
    }
}
@end
