//
//  AddSightingViewController.h
//  birdWatching
//
//  Created by Mary Beth McWhinney on 1/24/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

//#import <Cocoa/Cocoa.h>
#import <UIKit/UIKit.h>
@class BirdSighting;

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
@property (strong, nonatomic) BirdSighting *birdSighting;

@end
