//
//  PKLeftHeadView.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLeftHeadView.h"
#import "Masonry.h"
#import "UIImage+Helper.h"
#import "PKLogInViewController.h"

@implementation PKLeftHeadView

- (instancetype)initWithFrame:(CGRect)frame {
    self =  [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        [self addSubview:self.backImage];
        [self addSubview:self.iconImageBtn];
        [self addSubview:self.userNameBtn];
        [self addSubview:self.loveBtn];
        [self addSubview:self.messageBtn];
        [self addSubview:self.writeBtn];
        [self addSubview:self.downBtn];
        [self addSubview:self.searchBtn];
        
        [self addAutoLayout];
        
    }
    return self;
}

- (UIButton *)iconImageBtn {
    if (!_iconImageBtn) {
        _iconImageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_iconImageBtn setImage:[UIImage imageNamed:@"头像"] forState:UIControlStateNormal];
        _iconImageBtn.layer.cornerRadius = 25.0;
        _iconImageBtn.layer.masksToBounds = YES;
    }
    return _iconImageBtn;
}

- (UIButton *)userNameBtn {
    if (!_userNameBtn) {
        _userNameBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _userNameBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_userNameBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_userNameBtn setTitle:@"登陆 | 注册" forState:UIControlStateNormal];
//        [_userNameBtn addTarget:self action:@selector(logInAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _userNameBtn;
}

- (UIButton *)downBtn {
    if (!_downBtn) {
        _downBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_downBtn setImage:[UIImage imageNamed:@"下载"] forState:UIControlStateNormal];
    }
    return _downBtn;
}

- (UIButton *
   )loveBtn {
    if (!_loveBtn) {
        _loveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_loveBtn setImage:[UIImage imageNamed:@"收藏"] forState:UIControlStateNormal];
    }
    return _loveBtn;
}

- (UIButton *)messageBtn {
    if (!_messageBtn) {
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_messageBtn setImage:[UIImage imageNamed:@"评论"] forState:UIControlStateNormal];
    }
    return _messageBtn;
}

- (UIButton *)writeBtn {
    if (!_writeBtn) {
        _writeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_writeBtn setImage:[UIImage imageNamed:@"写评论"] forState:UIControlStateNormal];
    }
    return _writeBtn;
}

- (UIButton *)searchBtn {
    if (!_searchBtn) {
        _searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_searchBtn setBackgroundImage:[UIImage resizedImage:@"搜索"] forState:UIControlStateNormal];
    }
    return _searchBtn;
}

- (UIImageView *)backImage {
    if (!_backImage) {
        _backImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"头部背景"]];
        
    }
    return _backImage;
}

- (void)addAutoLayout {
    WS(ws);
    
    [_backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(ws).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [_iconImageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(50, 50));
        make.top.equalTo(ws.mas_top).offset(20);
        make.left.equalTo(ws.mas_left).offset(12);
    }];
    
    [_userNameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.iconImageBtn.mas_right).offset(15);
        make.height.equalTo(20);
        make.right.equalTo(ws.mas_right).offset(-100);
        make.centerY.equalTo(ws.iconImageBtn.mas_centerY);
    }];
    
    CGFloat width = 25.0;
    [_downBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(width);
        make.height.equalTo(15);
        make.top.equalTo(ws.iconImageBtn.mas_bottom).offset(24);
    }];
    
    [_loveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.downBtn.mas_right).offset(25);
//        make.size.equalTo(CGSizeMake(15, 15));
        make.height.equalTo(15);
        make.width.equalTo(ws.downBtn.mas_width);
        make.centerY.equalTo(ws.downBtn.mas_centerY);
    }];
    
    [_messageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.loveBtn.mas_right).offset(25);
        make.height.equalTo(15);
        make.width.equalTo(ws.loveBtn.mas_width);
        make.centerY.equalTo(ws.loveBtn.mas_centerY);
    }];
    
    [_writeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.messageBtn.mas_right).offset(25);
        make.height.equalTo(15);
        make.width.equalTo(ws.messageBtn.mas_width);
        make.centerY.equalTo(ws.messageBtn.mas_centerY);
        make.right.equalTo(ws.mas_right).offset(-25);
    }];
    
    [_searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.messageBtn.mas_bottom).offset(16);
        make.left.equalTo(ws.mas_left).offset(25);
        make.right.equalTo(ws.mas_right).offset(-25);
        make.height.equalTo(26);
    }];
}

//- (void)logInAction:(UIButton *)sender {
//    PKLogInViewController *logVC = [[PKLogInViewController alloc] init];
//    
//}


@end
