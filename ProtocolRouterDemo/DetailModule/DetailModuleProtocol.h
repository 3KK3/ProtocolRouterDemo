//
//  DetailModuleProtocol.h
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//
#import <UIKit/UIKit.h>

#ifndef DetailModuleProtocol_h
#define DetailModuleProtocol_h

@protocol DetailModuleProtocol <NSObject>

- (UIViewController *)detailVCByGoodID:(NSString *)goodID;

@end


#endif /* DetailModuleProtocol_h */
