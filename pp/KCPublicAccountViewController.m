//
//  KCPublicAccountViewController.m
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCPublicAccountViewController.h"

@interface KCPublicAccountViewController ()

@end

@implementation KCPublicAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"childViewController:%@",self.navigationController.childViewControllers);
    self.title =@"Public Account";
    
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"Add Friends" style:UIBarButtonItemStyleDone target:self action:@selector(gotoAddFriends)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)gotoAddFriends
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
