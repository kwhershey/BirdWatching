//
//  birdWatchingMasterViewController.h
//  birdWatching
//
//  Created by KYLE HERSHEY on 1/22/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSightingDataController;

@interface BirdWatchingMasterViewController : UITableViewController

@property (strong, nonatomic) BirdSightingDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;

- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end