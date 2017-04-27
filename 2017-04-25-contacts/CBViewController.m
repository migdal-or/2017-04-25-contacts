//
//  CBViewController.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBViewController.h"
#import "CBContactsTableViewController.h"

@implementation CBViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CBContactsTableViewController *tableViewController = [[CBContactsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    self.viewControllers = @[tableViewController] ;
}


@end
