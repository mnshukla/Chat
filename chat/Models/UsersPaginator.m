//
//  UsersPaginator.m
//  chat
//
//  Created by Manish Shukla on 1/30/2015.
//  Copyright (c) 2015 Manish Shukla. All rights reserved.
//

#import "UsersPaginator.h"

@interface UsersPaginator () <QBActionStatusDelegate>

@end

@implementation UsersPaginator

- (void)fetchResultsWithPage:(NSInteger)page pageSize:(NSInteger)pageSize
{
    // Retrieve QuickBlox users
    // 10 users per page
    //
    QBGeneralResponsePage *responsePage = [QBGeneralResponsePage responsePageWithCurrentPage:page perPage:pageSize];
    [QBRequest usersForPage:responsePage successBlock:^(QBResponse *response, QBGeneralResponsePage *page, NSArray *users) {
        
        [self receivedResults:users total:page.totalEntries];
        
    } errorBlock:^(QBResponse *response) {
        NSLog(@"%@", response.error);
    }];
}
@end
