//
//  PKLeftTableView.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLeftTableView.h"
#import "LeftMenuCell.h"
#import "PKTableModel.h"


@interface PKLeftTableView ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) NSArray *tableSource;
@end

@implementation PKLeftTableView

- (NSArray *)tableSource {
    if (!_tableSource) {
        PKTableModel *model = [[PKTableModel alloc] init];
        _tableSource = [model parseDataWithPath:@"LeftMenu"];
    }
    return _tableSource;
}

-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[LeftMenuCell class] forCellReuseIdentifier:@"tfCell"];
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self setBackgroundColor:RGB(51, 51, 51)];
    }
    
    return self;
}

#pragma mark- UITableViewDataSource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LeftMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tfCell" forIndexPath:indexPath];
    PKTableModel *model = self.tableSource[indexPath.row];
    cell.model = model;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

#pragma mark- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    for (NSUInteger i = 0; i < self.tableSource.count; i++) {
        NSIndexPath *index = [NSIndexPath indexPathForRow:i inSection:0];
        LeftMenuCell *cell = [tableView cellForRowAtIndexPath:index];
        if (indexPath.row == i) {
            [cell.contentView setBackgroundColor:RGB(71, 71, 71)];
        }else {
            [cell.contentView setBackgroundColor:RGB(51, 51, 51)];
        }
    }
}
@end
