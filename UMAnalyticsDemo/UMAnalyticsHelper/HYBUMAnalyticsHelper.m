//
//  HYBUMAnalyticsHelper.m
//  UMAnalyticsDemo
//
//  Created by 黄仪标 on 14/11/19.
//  Copyright (c) 2014年 黄仪标. All rights reserved.
//

#import "HYBUMAnalyticsHelper.h"
#import "MobClick.h"

#define kUMAnalyticsAppKey @"546c4457fd98c5cb9a00319d"

@implementation HYBUMAnalyticsHelper

+ (void)UMAnalyticStart {
  [MobClick startWithAppkey:kUMAnalyticsAppKey reportPolicy:BATCH channelId:@"App Store"];
  
  // version标识
  NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
  [MobClick setAppVersion:version];
  
#if DEBUG
  // 打开友盟sdk调试，注意Release发布时需要注释掉此行,减少io消耗
  [MobClick setLogEnabled:YES];
#endif
  return;
}

+ (void)beginLogPageView:(__unsafe_unretained Class)pageView {
  [MobClick beginLogPageView:NSStringFromClass(pageView)];
  return;
}

+ (void)endLogPageView:(__unsafe_unretained Class)pageView {
  [MobClick endLogPageView:NSStringFromClass(pageView)];
  return;
}

@end
