//
//  DPNetManager.h
//  HappyBuy
//
//  Created by tarena on 16/4/1.
//  Copyright © 2016年 tedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPRequest.h"
#import "BusinessModel.h"
#import "DealModel.h"

@interface DPNetManager : NSObject
/**
 *  用于请求商家信息
 参数: 页数 从1开始, 类型: 美食,电影...
 */
+ (void)getBusinessesWithCategory:(NSString *)category page:(NSInteger)page completionHandler:(void(^)(BusinessModel *model, NSError *error))completionHandler;

@end










