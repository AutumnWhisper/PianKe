//
//  PKLeftMenuViewController.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLeftMenuViewController.h"
#import "PKLeftHeadView.h"
#import "PKLeftTableView.h" // 表格选项
#import "PKLeftFootView.h"
#import "PKLogInViewController.h"

@interface PKLeftMenuViewController ()

@property (strong, nonatomic) PKLeftHeadView *leftHeadView;
@property (strong, nonatomic) PKLeftFootView *leftFootView;

@property (strong, nonatomic) PKLeftTableView *leftTable;

@end

@implementation PKLeftMenuViewController

- (PKLeftHeadView *)leftHeadView {
    if (!_leftHeadView) {
        _leftHeadView = [[PKLeftHeadView alloc] init];
        [_leftHeadView.iconImageBtn addTarget:self action:@selector(logInAction:) forControlEvents:UIControlEventTouchUpInside];
        [_leftHeadView.userNameBtn addTarget:self action:@selector(logInAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftHeadView;
}

- (PKLeftFootView *)leftFootView {
    if (!_leftFootView) {
        _leftFootView = [[PKLeftFootView alloc] init];
    }
    return _leftFootView;
}

- (PKLeftTableView *)leftTable {
    if (!_leftTable) {
        _leftTable = [[PKLeftTableView alloc] initWithFrame:CGRectMake(0, 165, VIEW_WIDTH-45, VIEW_HEIGHT-165-60) style:UITableViewStylePlain];
    }
    return _leftTable;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.userInteractionEnabled = YES;
    [self.view setBackgroundColor:RGB(51, 51, 51)];
    [self.view addSubview:self.leftHeadView];
    WS(ws);
    [_leftHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view.mas_top);
        make.height.equalTo(165);
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right).offset(-40);
    }];

    [self.view addSubview:self.leftFootView];
    [_leftFootView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.view.mas_bottom);
        make.height.equalTo(60);
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right).offset(-40);
    }];
    
    [self.view addSubview:self.leftTable];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)logInAction:(UIButton *)sender {
    PKLogInViewController *logVC = [[PKLogInViewController alloc] init];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:logVC];
    [self presentViewController:navVC animated:YES completion:nil];

}



@end
