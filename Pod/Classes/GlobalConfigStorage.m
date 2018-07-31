//
//  GlobalConfigStorage.m
//  Upster
//
//  Created by Sunnyke on 15/12/15.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import "GlobalConfigStorage.h"

@implementation GlobalConfigStorage

- (void)setString:(NSString *)string forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:string forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)getStringForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

- (void)setData:(NSData *)data forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSData *)getDataForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] dataForKey:key];
}

- (void)setArray:(NSArray *)array forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:array forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSArray *)getArrayForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] arrayForKey:key];
}

- (void)setDictionary:(NSDictionary *)dictionary forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:dictionary forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSDictionary *)getDictionaryForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
}

- (void)setNumber:(NSNumber *)number forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setValue:number forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSNumber *)getNumberForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}

- (void)setInteger:(NSInteger)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setInteger:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSInteger)getIntegerForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

- (void)setFloat:(float)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setFloat:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (float)getFloatForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

- (void)setDouble:(double)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setDouble:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (double)getDoubleForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}

- (void)setBool:(BOOL)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (BOOL)getBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

- (void)setUrl:(NSURL *)url forKey:(NSString *)key
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setURL:url forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSURL *)getUrlForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] URLForKey:key];
}

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

- (void)removeValueForKey:(NSString *)key {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:key];
    [userDefaults synchronize];
}

@end
