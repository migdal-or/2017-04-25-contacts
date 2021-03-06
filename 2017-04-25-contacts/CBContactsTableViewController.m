//
//  CBContactsTableViewController.m
//  2017-04-25-contacts
//
//  Created by iOS-School-1 on 25.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "CBContactsTableViewController.h"
#import "CBContactsList.h"
#import "CBContactManager.h"
#import "CBContactCell.h"
#import "CBFakeContactsService.h"
#import "CBAuthToken.h"
#import "CBAutorizationController.h"
#import "CBVKContactService.h"

@interface CBContactsTableViewController ()

@property (nonatomic, strong) CBContactsList *contacts;
@property (nonatomic, strong) id<CBContactManager> contactManager;

@end

@implementation CBContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Contacts";
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CBContactCell class] forCellReuseIdentifier:CBContactCellIdentifier];
}

- (void)viewDidAppear:(BOOL)animated {
    
    if (![CBAuthToken getAccessToken]) {
        CBAutorizationController *authController = [[CBAutorizationController alloc] init];
        [self presentViewController:authController animated:YES completion:nil];
    }
    else {
        self.contactManager = [CBVKContactService new];
        self.contactManager.authToken = [CBAuthToken getAccessToken];
        self.contacts = [self.contactManager getContacts];
        [self.tableView reloadData];
    }
    [super viewDidAppear:animated];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (CBContactCell *)[tableView dequeueReusableCellWithIdentifier:CBContactCellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[CBContactCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CBContactCellIdentifier];
    }
    
    [(CBContactCell *)cell addContact:[self.contacts objectAtIndexedSubscript:indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [CBContactCell heightForCell];
}

@end
