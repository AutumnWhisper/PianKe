//
//  PKRegisterViewController.m
//  PianKe
//
//  Created by ma c on 16/1/15.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKRegisterViewController.h"

@interface PKRegisterViewController ()

@property (strong, nonatomic) UIButton *backBtn;

@end

@implementation PKRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self createUI];
    [self setAutoLayout];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createUI {
    _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_backBtn setImage:[UIImage imageNamed:@"返回箭头"] forState:UIControlStateNormal];
    [_backBtn addTarget:self action:@selector(backBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_backBtn];
    
}

- (void)setAutoLayout {
    
    WS(ws);
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left).offset(15);
        make.top.equalTo(ws.view.mas_top).offset(35);
        make.size.equalTo(CGSizeMake(15, 15));
    }];
}

- (void)backBtnAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
