//
//  PKTableModel.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKTableModel.h"

@implementation PKTableModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"%@",key);
}

- (NSArray *)parseDataWithPath:(NSString *)path {
    NSString *dataPath =[[NSBundle mainBundle] pathForResource:path ofType:@"plist"];
    NSArray *dataArray = [[NSArray alloc] initWithContentsOfFile:dataPath];
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dic in dataArray) {
        PKTableModel *model = [[PKTableModel alloc] init];
        [model setValuesForKeysWithDictionary:dic];
        [tmpArray addObject:model];
    }
    return tmpArray;
}
@end
