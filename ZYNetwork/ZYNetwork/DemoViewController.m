//
//  DemoViewController.m
//  ZYNetwork
//
//  Created by ZYVincent on 15/7/14.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *tableView;

@property (nonatomic,strong)NSMutableArray *sourceArray;

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sourceArray = [[NSMutableArray alloc]init];
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.frame = self.view.bounds;
    
    [self.view addSubview:self.tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.sourceArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row %ld",indexPath.row];
    
    return cell;
}


@end
