//
//  PKThirdLandingView.m
//  PianKe
//
//  Created by ma c on 16/1/15.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKThirdLandingView.h"
#import "Masonry.h"

@implementation PKThirdLandingView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.sinaBtn];
        [self addSubview:self.renrenBtn];
        [self addSubview:self.doubanBtn];
        [self addSubview:self.qqBtn];
        [self addSubview:self.leftLine];
        [self addSubview:self.rightLine];
        [self addSubview:self.centerLabel];
    }
    return self;
}

- (UIButton *)sinaBtn {
    if (!_sinaBtn) {
        _sinaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sinaBtn setImage:[UIImage imageNamed:@"新浪"] forState:UIControlStateNormal];
    }
    return _sinaBtn;
}

- (UIButton *)renrenBtn {
    if (!_renrenBtn) {
        _renrenBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_renrenBtn setImage:[UIImage imageNamed:@"人人"] forState:UIControlStateNormal];
    }
    return _renrenBtn;
}

- (UIButton *)doubanBtn {
    if (!_doubanBtn) {
        _doubanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_doubanBtn setImage:[UIImage imageNamed:@"豆瓣"] forState:UIControlStateNormal];
    }
    return _doubanBtn;
}

- (UIButton *)qqBtn {
    if (!_qqBtn) {
        _qqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_qqBtn setImage:[UIImage imageNamed:@"腾讯"] forState:UIControlStateNormal];
    }
    return _qqBtn;
}

- (UIView *)leftLine {
    if (!_leftLine) {
        _leftLine = [[UIView alloc] init];
        _leftLine.backgroundColor = RGB(213, 213, 213);
    }
    return _leftLine;
}
- (UIView *)rightLine {
    if (!_rightLine) {
        _rightLine = [[UIView alloc] init];
        _rightLine.backgroundColor = RGB(213, 213, 213);
    }
    return _rightLine;
}

- (UILabel *)centerLabel {
    if (!_centerLabel) {
        _centerLabel = [[UILabel alloc] init];
        [_centerLabel setText:@"合作伙伴登陆片刻"];
        [_centerLabel setTextColor:[UIColor blackColor]];
        [_centerLabel setTextAlignment:NSTextAlignmentCenter];
        [_centerLabel setFont:[UIFont systemFontOfSize:13]];
    }
    return _centerLabel;
}
- (void)layoutSubviews {
    WS(ws);
    CGFloat interval = (VIEW_WIDTH-4*27)/5;
    [_sinaBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.mas_bottom).offset(-37);
        make.height.equalTo(27);
        make.left.equalTo(ws.mas_left).offset(interval);
    }];
    [_renrenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.mas_bottom).offset(-37);
        make.height.equalTo(27);
        make.left.equalTo(ws.sinaBtn.mas_right).offset(interval);
        make.width.equalTo(ws.sinaBtn.mas_width);
        
    }];
    [_doubanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.mas_bottom).offset(-37);
        make.height.equalTo(27);
        make.left.equalTo(ws.renrenBtn.mas_right).offset(interval);
        make.width.equalTo(ws.renrenBtn.mas_width);

    }];
    [_qqBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(ws.mas_bottom).offset(-37);
        make.height.equalTo(27);
        make.left.equalTo(ws.doubanBtn.mas_right).offset(interval);
        make.width.equalTo(ws.doubanBtn.mas_width);
        make.right.equalTo(ws.mas_right).offset(-interval);
    }];
    
    [_centerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(110);
        make.height.equalTo(11);
        make.bottom.equalTo(ws.sinaBtn.mas_top).offset(-30);
        make.centerX.equalTo(ws.mas_centerX);
        
    }];
    
    [_leftLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(40);
        make.centerY.equalTo(ws.centerLabel.mas_centerY);
        make.height.equalTo(1);
        make.right.equalTo(ws.centerLabel.mas_left).offset(-3);
    }];
    
    [_rightLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.mas_right).offset(-40);
        make.centerY.equalTo(ws.centerLabel.mas_centerY);
        make.height.equalTo(1);
        make.left.equalTo(ws.centerLabel.mas_right).offset(3);
    }];
    

}

@end
