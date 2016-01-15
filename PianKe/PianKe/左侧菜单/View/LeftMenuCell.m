//
//  LeftMenuCell.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "LeftMenuCell.h"
#import "Masonry.h"
#import "PKTableModel.h"

@interface LeftMenuCell()

@property (strong, nonatomic) UIImageView *titleImage;
@property (strong, nonatomic) UILabel *titleLabel;

@end

@implementation LeftMenuCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView setBackgroundColor:RGB(51, 51, 51)];
        // 设置选中行的风格
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        _titleImage = [[UIImageView alloc] init];
        [self addSubview:self.titleImage];
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setTextColor:RGB(135, 135, 135)];
        [_titleLabel setTextAlignment:NSTextAlignmentLeft];
        [_titleLabel setFont:[UIFont systemFontOfSize:19.0]];
        [self addSubview:self.titleLabel];
        [self setAutoLayout];
    }
    return self;
}

- (void)setAutoLayout {
    __weak __typeof(self)weakSelf = self;
    [self.titleImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.contentView.mas_top).offset(17);
        make.left.equalTo(weakSelf.contentView.mas_left).offset(30);
        make.size.equalTo(CGSizeMake(21, 21));
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weakSelf.titleImage.mas_right).offset(26);
        make.right.equalTo(weakSelf.contentView.mas_right).offset(-60);
        make.centerY.equalTo(weakSelf.titleImage.mas_centerY);
    }];
}

- (void)setModel:(PKTableModel *)model {
    self.titleImage.image = [UIImage imageNamed:model.imageName];
    self.titleLabel.text = model.titleName;
}

@end
