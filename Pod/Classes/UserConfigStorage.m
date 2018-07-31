//
//  UserConfigStorage.m
//  Upster
//
//  Created by Sunnyke on 15/12/15.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import "UserConfigStorage.h"

@interface UserConfigStorage ()

@property (nonatomic, strong) NSString *userId;

@end

@implementation UserConfigStorage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.userId = @"";
    }
    
    return self;
}

- (UserConfigStorage *)initWithUserId:(NSString *)userId
{
    self = [super init];
    if (self) {
        self.userId = userId;
    }
    
    return self;
}

- (void)setString:(NSString *)string forKey:(NSString *)key
{
    [super setString:string forKey:[self translateKey:key]];
}

- (NSString *)getStringForKey:(NSString *)key
{
    return [super getStringForKey:[self translateKey:key]];
}

- (void)setData:(NSData *)data forKey:(NSString *)key
{
    [super setData:data forKey:[self translateKey:key]];
}

- (NSData *)getDataForKey:(NSString *)key
{
    return [super getDataForKey:[self translateKey:key]];
}

- (void)setArray:(NSArray *)array forKey:(NSString *)key
{
    [super setArray:array forKey:[self translateKey:key]];
}

- (NSArray *)getArrayForKey:(NSString *)key
{
    return [super getArrayForKey:[self translateKey:key]];
}

- (void)setDictionary:(NSDictionary *)dictionary forKey:(NSString *)key
{
    [super setDictionary:dictionary forKey:[self translateKey:key]];
}

- (NSDictionary *)getDictionaryForKey:(NSString *)key {
    return [super getDictionaryForKey:[self translateKey:key]];
}

- (void)setNumber:(NSNumber *)number forKey:(NSString *)key
{
    [super setNumber:number forKey:[self translateKey:key]];
}

- (NSNumber *)getNumberForKey:(NSString *)key
{
    return [super getNumberForKey:[self translateKey:key]];
}

- (void)setInteger:(NSInteger)value forKey:(NSString *)key
{
    [super setInteger:value forKey:[self translateKey:key]];
}

- (NSInteger)getIntegerForKey:(NSString *)key
{
    return [super getIntegerForKey:[self translateKey:key]];
}

- (void)setFloat:(float)value forKey:(NSString *)key
{
    [super setFloat:value forKey:[self translateKey:key]];
}

- (float)getFloatForKey:(NSString *)key
{
    return [super getFloatForKey:[self translateKey:key]];
}

- (void)setDouble:(double)value forKey:(NSString *)key
{
    [super setDouble:value forKey:[self translateKey:key]];
}

- (double)getDoubleForKey:(NSString *)key
{
    return [super getDoubleForKey:[self translateKey:key]];
}

- (void)setBool:(BOOL)value forKey:(NSString *)key
{
    [super setBool:value forKey:[self translateKey:key]];
}

- (BOOL)getBoolForKey:(NSString *)key
{
    return [super getBoolForKey:[self translateKey:key]];
}

- (void)setUrl:(NSURL *)url forKey:(NSString *)key
{
    [super setUrl:url forKey:[self translateKey:key]];
}

- (NSURL *)getUrlForKey:(NSString *)key
{
    return [super getUrlForKey:[self translateKey:key]];
}

- (void)setModel:(id)model forKey:(NSString *)key
{
    [super setModel:model forKey:[self translateKey:key]];
}

- (id)getModelForKey:(NSString *)key
{
    return [super getModelForKey:[self translateKey:key]];
}

- (NSString *)translateKey:(NSString *)key
{
    return [NSString stringWithFormat:@"%@_%@", key, self.userId];
}

@end
