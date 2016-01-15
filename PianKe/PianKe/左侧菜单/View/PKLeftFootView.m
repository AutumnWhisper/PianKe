//
//  PKLeftFootView.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKLeftFootView.h"
#import "Masonry.h"

@implementation PKLeftFootView

- (instancetype)initWithFrame:(CGRect)frame {
    self =  [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor blackColor]];
        [self addSubview:self.backBtn];
        [self addSubview:self.musicImage];
        [self addSubview:self.musicName];
        [self addSubview:self.musicFrom];
        [self addSubview:self.playBtn];
        [self addAutoLayout];
        
    }
    return self;
}

- (UIImageView *)musicImage {
    if (!_musicImage) {
        _musicImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CD"]];
   
    }
    return _musicImage;
}

- (UILabel *)musicName  {
    if (!_musicName) {
        _musicName = [[UILabel alloc] init];
        _musicName.textColor = [UIColor whiteColor];
        _musicName.textAlignment = NSTextAlignmentLeft;
        _musicName.font = [UIFont systemFontOfSize:15.0];
    }
    return _musicName;
}
- (UILabel *)musicFrom  {
    if (!_musicFrom) {
        _musicFrom = [[UILabel alloc] init];
        _musicFrom.textColor = [UIColor whiteColor];
        _musicFrom.textAlignment = NSTextAlignmentLeft;
        _musicFrom.font = [UIFont systemFontOfSize:11.0];
    }
    return _musicFrom;
}




- (UIButton *)playBtn {
    if (!_playBtn) {
        _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_playBtn setImage:[UIImage imageNamed:@"播放"] forState:UIControlStateNormal];
        [_playBtn setImage:[UIImage imageNamed:@"暂停"] forState:UIControlStateSelected];
        _playBtn.selected = NO;
        [_playBtn addTarget:self action:@selector(playAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _playBtn;
}

- (UIButton *)backBtn {
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _backBtn.backgroundColor = RGB(21, 21, 21);
    }
    return _backBtn;
}

- (void)addAutoLayout {
    WS(ws);
    
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(ws).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    [_musicImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left).offset(9);
        make.top.equalTo(ws.mas_top).offset(10);
        make.size.equalTo(CGSizeMake(40, 40));
    }];
    
    [_playBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.mas_right).offset(-27);
        make.top.equalTo(ws.mas_top).offset(22);
        make.size.equalTo(CGSizeMake(16, 16));
    }];
    
    [_musicName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.mas_top).offset(15);
        make.left.equalTo(ws.musicImage.mas_right).offset(18);
        make.height.equalTo(20);
        make.right.equalTo(ws.playBtn.mas_left).offset(-5);
    }];
    
    [_musicFrom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.musicName.mas_bottom);
        make.left.equalTo(ws.musicName.mas_left);
        make.right.equalTo(ws.playBtn.mas_left).offset(-5);
    }];
}

- (void)playAction:(UIButton *)sender {
    UIButton *btn = (UIButton *)sender;
    btn.selected = !btn.selected;
    if (btn.selected == YES) {
        _musicName.text = @"死了都要爱";
        _musicFrom.text = @"信乐团";
    }else {
        _musicFrom.text = @"";
        _musicName.text = @"";
    }
}
@end
