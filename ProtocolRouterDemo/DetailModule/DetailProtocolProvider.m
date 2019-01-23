//
//  DetailProtocolProvider.m
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//

#import "DetailProtocolProvider.h"
#import "ProtocolMediator.h"
#import "DetailViewController.h"

@implementation DetailProtocolProvider

+ (void)load {
    
    [[ProtocolMediator sharedInstance] registeProvoder: [[self alloc] init]
                                              protocol: @protocol(DetailModuleProtocol)];
}

- (UIViewController *)detailVCByGoodID:(NSString *)goodID {
    DetailViewController *detailVC = [[DetailViewController alloc] initWithGoodID: goodID];
    return detailVC;
}


@end
