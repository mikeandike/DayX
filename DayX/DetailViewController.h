//
//  DetailViewController.h
//  DayX
//
//  Created by Michael Sacks on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Entry* entry;

- (IBAction)clearButtonTapped:(id)sender;
- (void)updateWithEntry:(Entry *)entry;


@end
