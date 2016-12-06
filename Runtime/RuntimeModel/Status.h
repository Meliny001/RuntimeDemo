//
//  Status.h
//  Runtime
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Status : NSObject
@property (nonatomic,copy) NSString * source;

@property (nonatomic,assign) NSInteger reposts_count;

@property (nonatomic,strong) NSArray * pic_urls;

@property (nonatomic,copy) NSString * created_at;

@property (nonatomic,assign) NSInteger attitudes_count;

@property (nonatomic,copy) NSString * idstr;

@property (nonatomic,copy) NSString * text;

@property (nonatomic,assign) NSInteger comments_count;

@property (nonatomic,strong) User * user;


@end
