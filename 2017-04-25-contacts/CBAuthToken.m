//
//  CBAuthToken.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 27.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBAuthToken.h"

static NSString *const CBToken = @"CBToken";

@implementation CBAuthToken

+ (nullable NSString *)getAccessToken {
    return [[NSUserDefaults standardUserDefaults] objectForKey:CBToken];
}

+ (void)saveAccessToken:(nonnull NSString *)accessToken {
    [[NSUserDefaults standardUserDefaults] setObject:accessToken forKey:CBToken];
}

@end
