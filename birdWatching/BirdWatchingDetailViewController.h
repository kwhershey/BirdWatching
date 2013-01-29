//
//  birdWatchingDetailViewController.h
//  birdWatching
//
//  Created by KYLE HERSHEY on 1/22/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSighting;

@interface BirdWatchingDetailViewController : UITableViewController

@property (strong, nonatomic) BirdSighting *sighting;

@property (weak, nonatomic) IBOutlet UILabel *birdNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@end


