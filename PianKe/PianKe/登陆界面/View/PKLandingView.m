//
//  PKLandingView.m
//  PianKe
//
//  Created by ma c on 16/1/15.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLandingView.h"
#import "Masonry.h"


@implementation PKLandingView
-(instancetype)initWithFrame:(CGRect)frame {
    self= [super initWithFrame:frame];
    if (self) {
//        [self setBackgroundColor:[UIColor redColor]];
        [self addSubview:self.mailLabel];
        [self addSubview:self.passwordLabel];
        [self addSubview:self.mailField];
        [self addSubview:self.passwordField];
        [self addSubview:self.mailLine];
        [self addSubview:self.passwordLine];
        [self addSubview:self.loginBtn];
        
    }
    return self;
}

- (UILabel *)mailLabel {
    if (!_mailLabel) {
        _mailLabel = [[UILabel alloc] init];
        [_mailLabel setText:@"邮箱："];
        [_mailLabel setTextColor:[UIColor blackColor]];
        [_mailLabel setTextAlignment:NSTextAlignmentCenter];
        [_mailLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _mailLabel;
}

- (UILabel *)passwordLabel {
    if (!_passwordLabel) {
        _passwordLabel = [[UILabel alloc] init];
        [_passwordLabel setText:@"密码："];
        [_passwordLabel setTextColor:[UIColor blackColor]];
        [_passwordLabel setTextAlignment:NSTextAlignmentCenter];
        [_passwordLabel setFont:[UIFont systemFontOfSize:15]];

    }
    return _passwordLabel;
}

- (UITextField *)mailField {
    if (!_mailField) {
        _mailField = [[UITextField alloc] init];
        [_mailField setBorderStyle:UITextBorderStyleNone];
    }
    return _mailField;
}

- (UITextField *)passwordField {
    if (!_passwordField) {
        _passwordField = [[UITextField alloc] init];
        [_passwordField setSecureTextEntry:YES];
        [_passwordField setBorderStyle:UITextBorderStyleNone];
    }
    return _passwordField;
}

- (UIView *)mailLine {
    if (!_mailLine) {
        _mailLine = [[UIView alloc] init];
        _mailLine.backgroundColor = RGB(213, 213, 213);
    }
    return _mailLine;
}

- (UIView *)passwordLine {
    if (!_passwordLine) {
        _passwordLine = [[UIView alloc] init];
        _passwordLine.backgroundColor = RGB(213, 213, 213);
    }
    return _passwordLine;
}

- (UIButton *)loginBtn {
    if (!_loginBtn) {
        _loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loginBtn setBackgroundColor:RGB(104, 170, 45)];
        [_loginBtn setTitle:@"登陆" forState:UIControlStateNormal];
        [_loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_loginBtn.titleLabel setFont:[UIFont systemFontOfSize:25]];
    }
    return _loginBtn;
}

- (void)layoutSubviews {
    WS(ws);
    [_mailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.top.equalTo(ws.mas_top).offset(28);
        make.size.equalTo(CGSizeMake(50, 15));
    }];
    
    [_mailField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mailLabel.mas_right).offset(1);
        make.right.equalTo(ws.mas_right).offset(-40);
        make.centerY.equalTo(ws.mailLabel.mas_centerY);
        make.height.equalTo(20);
    }];
    
    [_passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.top.equalTo(ws.mailField.mas_bottom).offset(30);
        make.size.equalTo(CGSizeMake(50, 15));
    }];
    
    [_passwordField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.passwordLabel.mas_right).offset(1);
        make.right.equalTo(ws.mas_right).offset(-40);
        make.centerY.equalTo(ws.passwordLabel.mas_centerY);
        make.height.equalTo(20);
    }];
    
    [_loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.right.equalTo(ws.mas_right).offset(-40);
        make.height.equalTo(32);
        make.top.equalTo(ws.passwordField.mas_bottom).offset(30);
    }];
    
    [_mailLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.right.equalTo(ws.mas_right).offset(-40);
        make.height.equalTo(0.5);
        make.top.equalTo(ws.mailLabel.mas_bottom).offset(10);
        
    }];
    
    [_passwordLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.right.equalTo(ws.mas_right).offset(-40);
        make.height.equalTo(0.5);
        make.top.equalTo(ws.passwordLabel.mas_bottom).offset(10);
    }];
}
@end
