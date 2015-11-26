//
//  KCFriendViewController.m
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCFriendViewController.h"
#import "KCQQContactViewController.h"

@interface KCFriendViewController ()

@end

@implementation KCFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"=============》childViewController:%@",self.navigationController.childViewControllers);
    
    NSLog(@"==============》%i",self.navigationController==self.parentViewController);
    
    self.navigationItem.title=@"Friends";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"ff_IconAdd"] style:UIBarButtonItemStyleDone target:self action:@selector(addFriends)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addFriends
{
    KCQQContactViewController *qqContactViewController =[[KCQQContactViewController alloc]init];
    [self.navigationController pushViewController:qqContactViewController animated:YES];
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
