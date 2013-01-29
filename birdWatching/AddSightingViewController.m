//
//  AddSightingViewController.m
//  birdWatching
//
//  Created by Mary Beth McWhinney on 1/24/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import "AddSightingViewController.h"

#import "BirdSighting.h"

@interface AddSightingViewController ()



@end



@implementation AddSightingViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        
        [textField resignFirstResponder];
        
    }
    
    return YES;
    
}

- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    
    // self.clearsSelectionOnViewWillAppear = NO;
    
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        
        if ([self.birdNameInput.text length] || [self.locationInput.text length]) {
            
            BirdSighting *sighting;
            
            NSDate *today = [NSDate date];
            
            sighting = [[BirdSighting alloc] initWithName:self.birdNameInput.text location:self.locationInput.text date:today];
            
            self.birdSighting = sighting;
            
        }
        
    }
    
}

@end