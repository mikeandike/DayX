//
//  EntryController.m
//  DayX
//
//  Created by Michael Sacks on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"
@interface EntryController ()

@property (strong, nonatomic) NSArray *allEntries;

@end

@implementation EntryController

+ (instancetype)sharedInstance{
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        sharedInstance.allEntries = [NSArray new];
    });
    
    return sharedInstance;
}

- (void)addEntry:(Entry *)entry{
    NSMutableArray *mutable = [[EntryController sharedInstance] mutableCopy];
    [mutable addObject:entry];
    self.allEntries = mutable;
    
}

-(void)removeEntry:(Entry *)entry{
    NSMutableArray *mutable = [[EntryController sharedInstance] mutableCopy];
    [mutable removeObject:entry];
    self.allEntries = mutable;
    
}

-(Entry *)createEntryWithTitle:(NSString *)title andText:(NSString *)body{
    Entry *newEntry = [Entry new];
    newEntry.title = title;
    newEntry.bodyText = body;
    newEntry.timestamp = [NSDate date];
    
    [self addEntry:newEntry];
    return newEntry;
    
}



















@end
