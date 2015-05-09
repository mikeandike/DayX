//
//  EntryController.h
//  DayX
//
//  Created by Michael Sacks on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic, readonly) NSArray *allEntries;

+ (EntryController *)sharedInstance;
- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;
- (Entry *)createEntryWithTitle:(NSString *)title andText:(NSString *)body;


@end
