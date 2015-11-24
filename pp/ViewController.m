//
//  ViewController.m
//  pp
//
//  Created by oilklenze on 15/11/18.
//  Copyright © 2015年 oilklenze. All rights reserved.
//

#import "ViewController.h"
#import "KCStatus.h"
#import "KCStatusTableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
{
    UITableView *_tableView;
    NSMutableArray *_status;
    NSMutableArray *_statusCells;
}


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initData];
    _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.dataSource=self;
    _tableView.delegate=self;
    [self.view addSubview:_tableView];
    NSLog(@"wtffffff");
}

-(void)initData
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"StatusInfo" ofType:@"plist"];
    NSArray *array=[NSArray arrayWithContentsOfFile:path];
    _status=[[NSMutableArray alloc]init];
    _statusCells =[[NSMutableArray alloc]init];
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_status addObject:[KCStatus statusWithDictionary:obj]];
        KCStatusTableViewCell *cell=[[KCStatusTableViewCell alloc]init];
        [_statusCells addObject:cell];
    }];
}

-(NSInteger )numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  _status.count;
    
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier =@"UITableViewCellIdentifierKey1";
    KCStatusTableViewCell    *cell;
    cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell=[[KCStatusTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    KCStatus *status =_status[indexPath.row];
    cell.status=status;
    return cell;
    
}
-(CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    KCStatusTableViewCell   *cell=_statusCells[indexPath.row];
    cell.status=_status[indexPath.row];
    return cell.height;
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
