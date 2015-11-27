//
//  KCLoginViewController.m
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "KCLoginViewController.h"

@interface KCLoginViewController ()
{
    UITextField *_txtUserName;
    UITextField *_txtPassword;
}

@end

@implementation KCLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addLoginForm];
    NSLog(@"suan qian    -------!%f",11440.42*0.41/100);
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


-(void)addLoginForm
{
    UILabel *lbUserName=[[UILabel alloc]initWithFrame:CGRectMake(50, 150, 100, 30)];
    lbUserName.text=@"用户名";
    [self.view addSubview:lbUserName];
    
    
    
     _txtUserName=[[UITextField alloc]initWithFrame:CGRectMake(120, 150, 150, 30)];
    _txtUserName.borderStyle=UITextBorderStyleRoundedRect;
    [self.view addSubview:_txtUserName];
    
    
    UILabel *lbPassWord=[[UILabel alloc]initWithFrame:CGRectMake(50, 200, 100, 30)];
    lbPassWord.text=@"密码";
    [self.view addSubview:lbPassWord];
    
    _txtPassword=[[UITextField alloc]initWithFrame:CGRectMake(120, 200, 150, 30)];
    _txtPassword.secureTextEntry=YES;
    _txtPassword.borderStyle=UITextBorderStyleRoundedRect;
    [self.view addSubview:_txtPassword];
    
    
    
    UIButton *btnLogin=[UIButton  buttonWithType:UIButtonTypeSystem];
    btnLogin.frame=CGRectMake(120, 270, 80, 30);
    [btnLogin setTitle:@"Log in" forState:UIControlStateNormal];
    [self.view addSubview:btnLogin];
    [btnLogin addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btnCancel=[UIButton buttonWithType:UIButtonTypeSystem];
    btnCancel.frame=CGRectMake(170, 270, 80, 30);
    [btnCancel setTitle:@"取消" forState:UIControlStateNormal];
    [self.view addSubview:btnCancel];
    [btnCancel addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}



-(void)login
{
    if ([_txtUserName.text isEqualToString:@"pp"]&&[_txtPassword.text isEqualToString:@"123"] ) {
        
        
       [self.delegate showUserInfoWithUserName:_txtUserName.text];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
        
        
    }else
        
    {
        UIAlertView *view   =[[UIAlertView alloc]initWithTitle:@"系统提示" message:@"用户名或密码错误" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil    , nil];
        [view show  ];
    }
    
    
    
    
}


-(void) cancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
