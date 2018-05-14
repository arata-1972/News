//
//  HgNews.h
//  News
//
//  Created by CZG on 18/2/8.
//  Copyright © 2018年 xbull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HgNews : NSObject

@property (nonatomic, copy) NSString * desc;

@property (nonatomic, copy) NSString * icon;

@property (nonatomic, copy) NSString * title;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (void)requestData:(NSString *)num success:(void (^)(NSArray *group))success;

@end
