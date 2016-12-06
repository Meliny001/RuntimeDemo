//
//  User.h
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic, strong) NSString *profile_image_url;

@property (nonatomic, assign) BOOL vip;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) int mbrank;

@property (nonatomic, assign) int mbtype;
@end
