//
//  DPNetManager.m
//  HappyBuy
//
//  Created by tarena on 16/4/1.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import "DPNetManager.h"

@implementation DPNetManager
+ (void)getBusinessesWithCategory:(NSString *)category page:(NSInteger)page completionHandler:(void (^)(BusinessModel *, NSError *))completionHandler{
    //使用点评网提供的方法获取完整的连接地址
    //@{字典} @[数组] @YES @1 @(数字变量)->NSNumber类型
    NSDictionary *pa = @{@"city": kCurrentCity,
                         @"platform": @2,
                         @"page": @(page),
                         @"category": category};
    NSString *path = [DPRequest serializeURL:@"http://api.dianping.com/v1/business/find_businesses" params:pa];
    [self GET:path parameters:nil progress:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandler([BusinessModel parseJSON:responseObj], error);
    }];
}








@end
