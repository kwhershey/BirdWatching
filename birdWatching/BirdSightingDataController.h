//
//  birdSightingDataController.h
//  birdWatching
//
//  Created by KYLE HERSHEY on 1/22/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BirdSighting;

@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (NSUInteger)countOfList;

- (BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex;

- (void)addBirdSightingWithSighting:(BirdSighting *)sighting;

@end
