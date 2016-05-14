//
//  LeftViewController.m
//  ResideMenuDemo
//
//  Created by 张新 on 16/5/14.
//  Copyright © 2016年 zhangxin. All rights reserved.
//

#import "LeftViewController.h"
#import "HomePageController.h"
#import "SecondViewController.h"
@implementation LeftViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    
    //
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"点我呀" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.height.equalTo(@50);
        make.width.equalTo(@100);
        make.left.equalTo(self.view).offset(20);
    }];
}

-(void)btnAction{
    SecondViewController *newsSVC = [[SecondViewController alloc] init];
    newsSVC.title=@"第二个页面";
    
    [self setContentViewController:newsSVC];
    

}
- (void)setContentViewController:(UIViewController *)viewController
{
    viewController.hidesBottomBarWhenPushed = YES;
    UINavigationController *nav = (UINavigationController *)(self.sideMenuViewController.contentViewController);
    
    [nav pushViewController:viewController animated:NO];
    
    [self.sideMenuViewController hideMenuViewController];
}

@end
