//
//  CBContactManager.h
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

@class CBContactsList;

@protocol CBContactManager <NSObject>
@required
- (CBContactsList *)getContacts;

@end
