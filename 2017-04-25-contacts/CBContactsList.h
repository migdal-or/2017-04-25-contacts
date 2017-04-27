//
//  CBContactsList.h
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CBContact;

@interface CBContactsList : NSObject

@property(nonatomic, readonly) NSUInteger count;

- (instancetype)initWithArray:(NSArray<CBContact *> *)contacts;
- (CBContact*)objectAtIndexedSubscript:(NSUInteger)index;

@end
