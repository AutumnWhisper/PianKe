//
//  PKLogInViewController.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLogInViewController.h"
#import "Masonry.h"
#import "PKThirdLandingView.h"
#import "PKLandingView.h"
#import "PKRegisterViewController.h"

@interface PKLogInViewController ()

@property (strong, nonatomic) UIButton *backBtn;
@property (strong, nonatomic) UIButton *registerBtn;
@property (strong, nonatomic) UIImageView *titleImage;
@property (strong, nonatomic) PKThirdLandingView *thirdLandingView;
@property (strong, nonatomic) PKLandingView *landingView;

@end

@implementation PKLogInViewController

- (PKThirdLandingView *)thirdLandingView {
    if (!_thirdLandingView) {
        _thirdLandingView = [[PKThirdLandingView alloc] init];
    }
    return  _thirdLandingView;
}

- (PKLandingView *)landingView {
    if (!_landingView) {
        _landingView = [[PKLandingView alloc] init];
    }
    return _landingView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self createUI];
    [self setAutoLayout];
    
    [self.view addSubview:self.thirdLandingView];

    WS(ws);
    [self.thirdLandingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right);
        make.bottom.equalTo(ws.view.mas_bottom);
        make.height.equalTo(125);
    }];
    
    [self.view addSubview:self.landingView];
    [self.landingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right);
        make.centerX.equalTo(ws.view.mas_centerX);
        make.centerY.equalTo(ws.view.mas_centerY);
        make.height.equalTo(180);

    }];
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
    
    _registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn setTitleColor:RGB(122,122,122) forState:UIControlStateNormal];
    _registerBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [_registerBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
    [_registerBtn addTarget:self action:@selector(registerAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_registerBtn];
    
    _titleImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图标"]];
    [self.view addSubview:_titleImage];
    [_titleImage setContentMode:UIViewContentModeCenter];
    

}

- (void)setAutoLayout {
    
    WS(ws);
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.view.mas_left).offset(15);
        make.top.equalTo(ws.view.mas_top).offset(35);
        make.size.equalTo(CGSizeMake(15, 15));
    }];
    
    [_registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.view.mas_right).offset(-15);
        make.centerY.equalTo(_backBtn.mas_centerY);
        make.width.equalTo(60);
    }];
    
    [_titleImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view.mas_top).offset(100);
        make.centerX.equalTo(ws.view.mas_centerX);
    }];

}

- (void)backBtnAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)registerAction {
    PKRegisterViewController *registerVC = [[PKRegisterViewController alloc] init];
    [self.navigationController pushViewController:registerVC animated:YES];
}
@end
