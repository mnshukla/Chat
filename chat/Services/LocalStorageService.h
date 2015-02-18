//
//  LocalStorageService.h
//  chat
//
//  Created by Manish Shukla on 1/30/2015.
//  Copyright (c) 2015 Manish Shukla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocalStorageService : NSObject

@property (nonatomic, strong) QBUUser *currentUser;
@property (nonatomic, strong) NSArray *users;
@property (nonatomic, readonly) NSDictionary *usersAsDictionary;

+ (instancetype)shared;

@end
