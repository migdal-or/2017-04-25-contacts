//
//  CBAuthToken.h
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 27.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBAuthToken : NSObject

+ (nullable NSString *)getAccessToken;
+ (void)saveAccessToken:(nonnull NSString *)accessToken;

@end
