//
//  DataCacheStorage.h
//  Upster
//
//  Created by Sunnyke on 15/12/16.
//  Copyright © 2015年 oceanwing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCacheStorage : NSObject

- (void)setModel:(id)model forKey:(NSString *)key;

- (id)getModelForKey:(NSString *)key;

- (void)setModel:(id)model forKey:(NSString *)key withUserId:(NSString *)userId;

- (id)getModelForKey:(NSString *)key withUserId:(NSString *)userId;

@end
