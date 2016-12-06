//
//  NSObject+Model.h
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)
+ (instancetype)sharedModelWithDict:(NSDictionary *)dict;
@end
