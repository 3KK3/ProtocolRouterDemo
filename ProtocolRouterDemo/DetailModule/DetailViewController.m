//
//  DetailViewController.m
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (instancetype)initWithGoodID:(NSString *)goodID {
    if (self = [super init]) {
        NSLog(@"💃☁️☁️☁️☁️☁️☁️☁️💃 这里是详情页面， goodID是： %@", goodID);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated: YES completion: nil];
}


@end
