//
//  KCStatusTableViewCell.h
//  pp
//
//  Created by oilklenze on 15/11/18.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KCStatus;

@interface KCStatusTableViewCell : UITableViewCell

#pragma mark 微博对象
@property (nonatomic,strong) KCStatus *status;

#pragma mark 单元格高度
@property (assign,nonatomic) CGFloat height;

@end
