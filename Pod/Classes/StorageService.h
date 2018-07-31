//
//  StorageService.h
//  Upster
//
//  Created by Sunnyke on 15/12/16.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StorageConfigConstants.h"
#import "GlobalConfigStorage.h"
#import "UserConfigStorage.h"
#import "DataCacheStorage.h"

@interface StorageService : NSObject

@property (nonatomic, strong) GlobalConfigStorage *globalConfigStorage;
@property (nonatomic, strong) UserConfigStorage *userConfigStorage;
@property (nonatomic, strong) DataCacheStorage *dataCacheStorage;

+ (StorageService *)shareStorageService;

- (void)initUserConfigStorageWithUserId:(NSString *)userId;

@end
