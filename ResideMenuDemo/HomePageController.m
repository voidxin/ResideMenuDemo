//
//  HomePageController.m
//  ResideMenuDemo
//
//  Created by 张新 on 16/5/14.
//  Copyright © 2016年 zhangxin. All rights reserved.
//

#import "HomePageController.h"
#import "ResideMenu.h"
@implementation HomePageController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title=@"首页";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"left" style:UIBarButtonItemStyleDone target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"right" style:UIBarButtonItemStyleDone target:self action:@selector(presentRightMenuViewController:)];
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
}
@end
