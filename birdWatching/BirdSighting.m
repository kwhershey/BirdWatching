//
//  birdSighting.m
//  birdWatching
//
//  Created by KYLE HERSHEY on 1/22/13.
//  Copyright (c) 2013 KYLE HERSHEY. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting

-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        
        _name = name;
        
        _location = location;
        
        _date = date;
        
        return self;
        
    }
    
    return nil;
}

@end
