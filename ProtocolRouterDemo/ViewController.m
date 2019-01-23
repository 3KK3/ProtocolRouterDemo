//
//  ViewController.m
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//

#import "ViewController.h"

#import "ProtocolRouter/ProtocolMediator.h"
#import "DetailModule/DetailModuleProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    id<DetailModuleProtocol> provider = [[ProtocolMediator sharedInstance] providerByProtocol:@protocol(DetailModuleProtocol)];
    
    UIViewController *detailVC = [provider detailVCByGoodID: @"12342342"];
    
    [self presentViewController: detailVC animated: YES completion: nil];
}


@end
