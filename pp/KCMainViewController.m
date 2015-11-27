//
//  KCMainViewController.m
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCMainViewController.h"
#import "KCLoginViewController.h"
#import "KCMeViewController.h"

@interface KCMainViewController ()<KCMainDelegate,UIActionSheetDelegate>
{
    UILabel *_loginInfo;
    UIBarButtonItem *_loginButton;
    UIBarButtonItem *_meButton;
    
    BOOL _isLogon;
}

@end

@implementation KCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addNavigationBar];
    
    
    [self addLoginInfo];
    
    
    
    
    
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
-(void)addNavigationBar
{
    UINavigationBar *navigationBar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 64)];
    
    [self.view addSubview:navigationBar];
    UINavigationItem *navugationItem=[[UINavigationItem alloc]initWithTitle:@"We Chat"];
    
    
    
    _loginButton=[[UIBarButtonItem alloc]initWithTitle:@"log in" style:UIBarButtonItemStyleDone target:self action:@selector(login)];
    
    navugationItem.leftBarButtonItem =_loginButton;
    
    
    _meButton =[[UIBarButtonItem alloc]initWithTitle:@"Me" style:UIBarButtonItemStyleDone target:self action:@selector(showInfo)];
    _meButton.enabled=NO;
    
    
    navugationItem.rightBarButtonItem=_meButton;
    
    [navigationBar pushNavigationItem:navugationItem animated:YES];
    
}


-(void)addLoginInfo
{
    
    
    _loginInfo =[[UILabel alloc]initWithFrame:CGRectMake(0, 100, 320, 30)];
    _loginInfo.textAlignment =NSTextAlignmentCenter;
    [self.view addSubview:_loginInfo];
    
}

-(void)login
{
    if (!_isLogon) {
        KCLoginViewController *loginController=[[KCLoginViewController alloc]init];
        loginController.delegate=self;
        
         [self presentViewController:loginController animated:YES completion:nil];

    }else{
        UIActionSheet *action=[[UIActionSheet alloc]initWithTitle:@"系统消息" delegate:self cancelButtonTitle:@" 取消" destructiveButtonTitle:@"注销" otherButtonTitles:nil    , nil];
        
        
        [action showInView:self.view];
        
    }

   
}

-(void)showInfo
{
    if (_isLogon) {
        KCMeViewController   *meViewController=[[KCMeViewController alloc]init];
        meViewController.userInfo=_loginInfo.text;
        [self presentViewController:meViewController animated:YES completion:nil];
        
        
    }
}

-(void)showUserInfoWithUserName:(NSString *)userName
{
    

    _isLogon =YES;
    _loginInfo.text=[NSString stringWithFormat:@"Hello,%@!",userName];
    _loginButton.title=@"注销";
    _meButton.enabled=YES;
    
    

}



-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==0) {
        _isLogon=NO;
        _loginButton.title=@"登陆";
        _loginInfo.text=@"";
        _meButton.enabled=NO;
    }
}



@end
