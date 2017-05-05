//
//  JSONDataManager.h
//  MyCircle
//
//  Created by Alex Pearce on 2017-05-02.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface JSONDataManager : NSObject

@property (nonatomic, strong) NSArray *userObjectsArray;
@property (nonatomic, strong) User *loggedInUser;

@end
