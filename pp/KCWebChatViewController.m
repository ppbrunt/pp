//
//  KCWebChatViewController.m
//  pp
//
//  Created by oilklenze on 15/11/25.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCWebChatViewController.h"

@interface KCWebChatViewController ()

@end

@implementation KCWebChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor redColor];
    self.title=@"Chat";
    NSLog(@"%i",self.tabBarController==self.parentViewController);
    self.tabBarItem.title=@"Web chat";
    self.tabBarItem.image =[UIImage imageNamed:@"tabbar_mainframe"];
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"tabbar_mainframeHL"];
    
    self.tabBarItem.badgeValue=@"WTF";
    
    
    
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
