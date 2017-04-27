//
//  CBContactsList.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBContactsList.h"
#import "CBContact.h"

@interface CBContactsList ()

@property(nonatomic, copy, readwrite) NSArray *contacts;

@end


@implementation CBContactsList

- (instancetype)initWithArray:(NSArray<CBContact *> *)contacts {
    self = [super init];
    if (self) {
        _contacts = contacts;
    }
    return self;
}

- (NSUInteger)count {
    return self.contacts.count;
}

- (CBContact*)objectAtIndexedSubscript:(NSUInteger)index {
    return self.contacts[index];
}

@end
