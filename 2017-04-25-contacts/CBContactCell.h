//
//  CBContactCellTableViewCell.h
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const CBContactCellIdentifier;

@class CBContact;

@interface CBContactCell : UITableViewCell

- (void)addContact:(CBContact *)contact;
+ (CGFloat)heightForCell;

@end
