//
//  PKBaseViewController.m
//  PianKe
//
//  Created by ma c on 16/1/14.
//  Copyright © 2016年 bjsxt. All rights reserved.
//

#import "PKBaseViewController.h"


@interface PKBaseViewController ()

@end

@implementation PKBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)addBackItemBtn {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithNormalIcon:@"nomal" highlightedIcon:@"highlighted" target:self action:@selector(backView)];
    [self.navigationItem setLeftBarButtonItem:backItem];
}

- (void)GetWithUrl:(NSString *)url params:(NSDictionary *)params success:(SuccessBlock)HttpSuccess failer:(FailerBlock)HttpFailed {
    [ZJPBaseHttpTool getWithPath:url params:params success:^(id JSON) {
        HttpSuccess(JSON);
    } failure:^(NSError *error) {
        HttpFailed(error);
    }];
}
- (void)PostWithUrl:(NSString *)url params:(NSDictionary *)params success:(SuccessBlock)HttpSuccess failer:(FailerBlock)HttpFailed {
    [ZJPBaseHttpTool postWithPath:url params:params success:^(id JSON) {
        HttpSuccess(JSON);
    } failure:^(NSError *error) {
        HttpFailed(error);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backView {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
