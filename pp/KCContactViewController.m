//
//  KCContactViewController.m
//  pp
//
//  Created by oilklenze on 15/11/25.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCContactViewController.h"

@interface KCContactViewController ()

@end

@implementation KCContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor  yellowColor];
    
    self.tabBarItem.title=@"Contact";
    self.tabBarItem.image=[UIImage imageNamed:@"tabbar_contacts"];
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"tabbar_contactsHL"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
