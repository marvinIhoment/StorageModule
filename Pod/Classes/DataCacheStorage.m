//
//  DataCacheStorage.m
//  Upster
//
//  Created by Sunnyke on 15/12/16.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import "DataCacheStorage.h"

@implementation DataCacheStorage

- (void)setModel:(id)model forKey:(NSString *)key
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:model];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id)getModelForKey:(NSString *)key
{
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

- (void)setModel:(id)model forKey:(NSString *)key withUserId:(NSString *)userId
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:model];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:[self translateKey:key withUserId:userId]];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (id)getModelForKey:(NSString *)key withUserId:(NSString *)userId
{
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:[self translateKey:key withUserId:userId]];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

- (NSString *)translateKey:(NSString *)key withUserId:(NSString *)userId
{
    return [NSString stringWithFormat:@"%@_%@", key, userId];
}

@end
