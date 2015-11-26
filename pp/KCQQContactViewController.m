//
//  KCQQContactViewController.m
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCQQContactViewController.h"
#import "KCPublicAccountViewController.h"

@interface KCQQContactViewController ()

@end

@implementation KCQQContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"childViewController:^=%@",self.navigationController.childViewControllers);
    [self setTitle:@"QQ Contact"];
    UIBarButtonItem *back=[[UIBarButtonItem alloc]initWithTitle:@"QQ" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem=back;
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"Public Account" style:UIBarButtonItemStyleDone target:self action:@selector(gotoNextView)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)gotoNextView
{
    KCPublicAccountViewController    *publicAccountViewController =[[KCPublicAccountViewController alloc]init];
    [self.navigationController pushViewController:publicAccountViewController animated:YES];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
