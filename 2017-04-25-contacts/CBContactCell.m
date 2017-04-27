//
//  CBContactCellTableViewCell.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBContactCell.h"
#import "CBContact.h"
#import "CBAvatarView.h"

NSString *const CBContactCellIdentifier = @"CBContactCellIdentifier";

@interface CBContactCell ()

@property(nonatomic, strong) UILabel *firstNameLabel;
@property(nonatomic, strong) UILabel *lastNameLabel;
@property(nonatomic, strong) CBAvatarView *avatarView;

@end


@implementation CBContactCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        [self createSubviewsWithContact];
    }
    return self;
}

- (void)createSubviewsWithContact {
    _firstNameLabel = [UILabel new];
    _lastNameLabel = [UILabel new];
    _avatarView = [CBAvatarView new];
    
    _firstNameLabel.frame = CGRectMake(20.0, 10.0, 100.0, 20.0);
    _lastNameLabel.frame =  CGRectMake(20.0, 35.0, 100.0, 20.0);
    
    [self addSubview:_firstNameLabel];
    [self addSubview:_lastNameLabel];
    [self addSubview:_avatarView];
}

- (void)addContact:(CBContact *)contact {
    self.firstNameLabel.text = contact.firstName;
    self.lastNameLabel.text = contact.lastName;
}

+ (CGFloat)heightForCell {
    return 80;
}

@end
