//
//  KCMeViewController.m
//  pp
//
//  Created by oilklenze on 15/11/27.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCMeViewController.h"

@interface KCMeViewController ()
{
    UILabel *_lbUserInfo;
    
}

@end

@implementation KCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _lbUserInfo =[[UILabel alloc]initWithFrame:CGRectMake(0, 100, 320, 30)];
    [self.view addSubview:_lbUserInfo];
    
    
    
    UIButton *btnClose=[UIButton buttonWithType:UIButtonTypeSystem];
    btnClose.frame=CGRectMake(110, 200, 100, 30);
    [btnClose setTitle:@"关闭" forState:UIControlStateNormal];
    [btnClose addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnClose];
    
    //设置传值信息
    _lbUserInfo.text=_userInfo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resour[ces that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)close
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
