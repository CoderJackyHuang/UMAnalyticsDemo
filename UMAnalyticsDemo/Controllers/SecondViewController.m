//
//  SecondViewController.m
//  UMAnalyticsDemo
//
//  Created by 黄仪标 on 14/11/19.
//  Copyright (c) 2014年 黄仪标. All rights reserved.
//

#import "SecondViewController.h"
#import "HYBUMAnalyticsHelper.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  // 测试错误日志
#if 0
  NSArray *array = [[NSArray alloc] init];
  NSMutableArray *arr = (NSMutableArray *)array;
  NSLog(@"an error will occure");
  [arr addObject:@"error"];
#endif
  return;
}


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  [HYBUMAnalyticsHelper beginLogPageView:[self class]];
  return;
}

- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
  
  [HYBUMAnalyticsHelper endLogPageView:[self class]];
  return;
}


@end
