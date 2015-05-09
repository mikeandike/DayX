//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Michael Sacks on 5/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"

static NSString *cellID = @"entryCell";

@implementation ListTableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.textLabel.text = [EntryController sharedInstance].allEntries[indexPath.row];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [EntryController sharedInstance].allEntries.count;
}


@end
