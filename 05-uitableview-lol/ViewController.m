//
//  ViewController.m
//  05-uitableview-lol
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "ViewController.h"
#import "HeroMode.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView*  tableView;
@property (nonatomic,strong) NSArray*  dataList;

@end

@implementation ViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    [self tableView];
    self.tableView.rowHeight = 80;
}

-(UITableView*) tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

-(NSArray*) dataList
{
    if (_dataList == nil) _dataList =  [HeroMode heros];
    
    return _dataList;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString* id = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:id];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:id];
        NSLog(@"create uitableviewcell");
    }
    
    HeroMode *mode = self.dataList[indexPath.row];
    [cell.textLabel setText:mode.name];
    [cell.imageView setImage:[UIImage imageNamed:mode.icon]];
    [cell.detailTextLabel setText:mode.intro];
    
    return cell;
}

@end
