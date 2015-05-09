//
//  DetailViewController.m
//  DayX
//
//  Created by Michael Sacks on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () 
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithEntry:self.entry];
}

- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.textView.text = @"";
    
}

- (IBAction)saveButtonTapped:(id)sender {
    self.entry = [[EntryController sharedInstance] createEntryWithTitle:self.textField.text andText:self.textView.text];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)updateWithEntry:(Entry *)entry{
    self.textField.text = entry.title;
    self.textView.text = entry.bodyText;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
