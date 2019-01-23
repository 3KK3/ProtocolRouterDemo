//
//  ProtocolMediator.m
//  ProtocolRouterDemo
//
//  Created by YZY on 2019/1/23.
//  Copyright © 2019 Cocfish. All rights reserved.
//

#import "ProtocolMediator.h"

static ProtocolMediator *_instance = nil;

@interface ProtocolMediator () <NSCopying, NSMutableCopying>
@property (nonatomic, strong) NSMutableDictionary *mutDic;

@end

@implementation ProtocolMediator

+ (ProtocolMediator *)sharedInstance {
    @synchronized (self) {
        if (!_instance) {
            _instance = [[super allocWithZone: NULL] init];
        }
    }
    return _instance;
}

- (instancetype)init {
    if (self = [super init]) {
        self.mutDic = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [ProtocolMediator sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    return [ProtocolMediator sharedInstance];
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return [ProtocolMediator sharedInstance];
}


- (void)registeProvoder:(id)provider protocol:(Protocol *)protocol {
    if (provider == nil || protocol == nil) {
        return;
    }
    [self.mutDic setObject: provider forKey: NSStringFromProtocol(protocol)];
}

- (id)providerByProtocol:(Protocol *)protocol {
    return [self.mutDic objectForKey: NSStringFromProtocol(protocol)];
}


@end
