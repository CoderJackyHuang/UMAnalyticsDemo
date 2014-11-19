//
//  RootViewController.m
//  UMAnalyticsDemo
//
//  Created by 黄仪标 on 14/11/19.
//  Copyright (c) 2014年 黄仪标. All rights reserved.
//

#import "RootViewController.h"
#import "HYBUMAnalyticsHelper.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"next"
                                                                style:UIBarButtonItemStylePlain
                                                               target:self
                                                               action:@selector(next)];
  self.navigationItem.rightBarButtonItem = rightItem;
}

- (void)next {
  SecondViewController *s = [[SecondViewController alloc] init];
  [self.navigationController pushViewController:s animated:YES];
  s.hidesBottomBarWhenPushed = YES;
  return;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
