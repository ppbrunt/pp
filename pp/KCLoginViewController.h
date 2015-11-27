//
//  KCLoginViewController.h
//  pp
//
//  Created by oilklenze on 15/11/26.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KCMainDelegate <NSObject>

-(void)showUserInfoWithUserName:(NSString *)userName;

@end

@interface KCLoginViewController : UIViewController
@property (nonatomic,strong) id <KCMainDelegate >delegate;

@end
