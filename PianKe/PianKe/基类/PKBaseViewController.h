//
//  PKBaseViewController.h
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "AFNetworking.h"
#import "RESideMenu.h"
#import "ZJPBaseHttpTool.h"
#import "UINavigationItem+BackItem.h"
#import "UIBarButtonItem+Helper.h"


typedef void(^SuccessBlock)(id JSON);
typedef void(^FailerBlock)(NSError *error);

@interface PKBaseViewController : UIViewController

@property (copy, nonatomic) SuccessBlock successBlock;
@property (copy, nonatomic) FailerBlock failedBlock;

- (void)addBackItemBtn;
- (void)GetWithUrl:(NSString *)url params:(NSDictionary *)params success:(SuccessBlock )HttpSuccess failer:(FailerBlock )HttpFailed;
- (void)PostWithUrl:(NSString *)url params:(NSDictionary *)params success:(SuccessBlock )HttpSuccess failer:(FailerBlock )HttpFailed;
@end
