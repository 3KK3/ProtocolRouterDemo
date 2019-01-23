//
//  ProtocolMediator.h
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProtocolMediator : NSObject

+ (ProtocolMediator *)sharedInstance;

- (void)registeProvoder:(id)provider protocol:(Protocol *)protocol;

- (id)providerByProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
