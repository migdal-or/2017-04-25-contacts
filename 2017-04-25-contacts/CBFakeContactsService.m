//
//  CBFakeContactsService.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBFakeContactsService.h"
#import "CBContactsList.h"
#import "CBContact.h"


@implementation CBFakeContactsService

- (CBContactsList *)getContacts {
    
    CBContact* (^createContact)(NSString *, NSString *, NSString *, NSString *);
    createContact = ^CBContact*(NSString *firstName,
                               NSString *lastName,
                               NSString *phoneNumber,
                               NSString *email) {
        CBContact *contact = [CBContact new];
        contact.firstName = firstName;
        contact.lastName = lastName;
        contact.phoneNumber = phoneNumber;
        contact.email = email;
        return contact;
    };
    
    NSArray *contacts = @[createContact(@"dfdsf",@"fdfsdf",@"+5665787",@"dfsdgdfgdfgd@gmail.com")];
    
    return [[CBContactsList alloc] initWithArray:contacts];
}

@end
