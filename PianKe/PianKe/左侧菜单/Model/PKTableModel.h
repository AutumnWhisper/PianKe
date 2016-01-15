//
//  PKTableModel.h
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PKTableModel : NSObject

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *titleName;

- (NSArray *)parseDataWithPath:(NSString *)path;
@end
