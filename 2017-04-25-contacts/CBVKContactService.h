//
//  CBVKContactService.h
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 27.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBContactManager.h"

@interface CBVKContactService : NSObject <CBContactManager>

@property (nonatomic, copy) NSString *authToken;

@end
