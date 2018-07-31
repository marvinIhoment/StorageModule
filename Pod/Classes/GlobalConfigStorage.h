//
//  GlobalConfigStorage.h
//  Upster
//
//  Created by Sunnyke on 15/12/15.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalConfigStorage : NSObject

- (void)setString:(NSString *)string forKey:(NSString *)key;

- (NSString *)getStringForKey:(NSString *)key;

- (void)setData:(NSData *)data forKey:(NSString *)key;

- (NSData *)getDataForKey:(NSString *)key;

- (void)setArray:(NSArray *)array forKey:(NSString *)key;

- (NSArray *)getArrayForKey:(NSString *)key;

- (void)setDictionary:(NSDictionary *)dictionary forKey:(NSString *)key;

- (NSDictionary *)getDictionaryForKey:(NSString *)key;

- (void)setNumber:(NSNumber *)number forKey:(NSString *)key;

- (NSNumber *)getNumberForKey:(NSString *)key;

- (void)setInteger:(NSInteger)value forKey:(NSString *)key;

- (NSInteger)getIntegerForKey:(NSString *)key;

- (void)setFloat:(float)value forKey:(NSString *)key;

- (float)getFloatForKey:(NSString *)key;

- (void)setDouble:(double)value forKey:(NSString *)key;

- (double)getDoubleForKey:(NSString *)key;

- (void)setBool:(BOOL)value forKey:(NSString *)key;

- (BOOL)getBoolForKey:(NSString *)key;

- (void)setUrl:(NSURL *)url forKey:(NSString *)key;

- (NSURL *)getUrlForKey:(NSString *)key;

- (void)setModel:(id)model forKey:(NSString *)key;

- (id)getModelForKey:(NSString *)key;

- (void)removeValueForKey:(NSString *)key;

@end
