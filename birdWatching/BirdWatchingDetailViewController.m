//
//  birdWatchingDetailViewController.m
//  birdWatching
//
//  Created by KYLE HERSHEY on 1/22/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import "BirdWatchingDetailViewController.h"

#import "BirdSighting.h"

@interface BirdWatchingDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation BirdWatchingDetailViewController

#pragma mark - Managing the detail item

- (void)setSighting:(BirdSighting *) newSighting

{
    
    if (_sighting != newSighting) {
        
        _sighting = newSighting;
        
        
        
        // Update the view.
        
        [self configureView];
        
    }
    
}

- (void)configureView

{
    
    // Update the user interface for the detail item.
    
    BirdSighting *theSighting = self.sighting;
    
    
    
    static NSDateFormatter *formatter = nil;
    
    if (formatter == nil) {
        
        formatter = [[NSDateFormatter alloc] init];
        
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        
    }
    
    if (theSighting) {
        
        self.birdNameLabel.text = theSighting.name;
        
        self.locationLabel.text = theSighting.location;
        
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theSighting.date];
        
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

@end
