//
//  HYBUMAnalyticsHelper.h
//  UMAnalyticsDemo
//
//  Created by 黄仪标 on 14/11/19.
//  Copyright (c) 2014年 黄仪标. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 * @brief 友盟统计功能相关操作API封装
 *
 * @author huangyibiao
 */
@interface HYBUMAnalyticsHelper : NSObject

/*!
 * 启动友盟统计功能
 */
+ (void)UMAnalyticStart;

/// 在viewWillAppear调用,才能够获取正确的页面访问路径、访问深度（PV）的数据
+ (void)beginLogPageView:(__unsafe_unretained Class)pageView;

/// 在viewDidDisappeary调用，才能够获取正确的页面访问路径、访问深度（PV）的数据
+ (void)endLogPageView:(__unsafe_unretained Class)pageView;

@end
