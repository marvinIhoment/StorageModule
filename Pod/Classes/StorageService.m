//
//  StorageService.m
//  Upster
//
//  Created by Sunnyke on 15/12/16.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import "StorageService.h"

static StorageService *storageService;

@implementation StorageService

+ (StorageService *)shareStorageService
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        storageService = [[StorageService alloc] init];
    });
    
    return storageService;
}

- (id)init
{
    if (self = [super init]) {
        self.globalConfigStorage = [[GlobalConfigStorage alloc] init];
        self.dataCacheStorage = [[DataCacheStorage alloc] init];
    }
    
    return self;
}

- (void)initUserConfigStorageWithUserId:(NSString *)userId
{
    self.userConfigStorage = [[UserConfigStorage alloc] initWithUserId:userId];
}

- (void)dealloc
{
    self.globalConfigStorage = nil;
    self.userConfigStorage = nil;
    self.dataCacheStorage = nil;
}

@end
