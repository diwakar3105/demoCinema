//
//  NotificationsViewController.m
//  WebView
//
//  Created by Shivendra Pandey on 20/12/17.
//  Copyright © 2017 Diwakar Pandey. All rights reserved.
//

#import "NotificationsViewController.h"
#import "NotificationsCell.h"

@interface NotificationsViewController ()

@end

@implementation NotificationsViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    titles = [[NSArray alloc]
              initWithObjects:@"Chevy",
              @"BMW",
              @"Toyota",
              @"Volvo",
              @"Smart", nil];
    description = [[NSArray alloc]
                   initWithObjects:@"Volt",
                   @"Mini",
                   @"Venza",
                   @"S60",
                   @"Fortwo", nil];
    
    NSDate *Date = [NSString stringWithFormat:@"November 30, 2017", @"November 30, 2017", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"NotificationsCell";
    NotificationsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationsCell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[NotificationsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"NotificationsCell"];//[[NotificationsCell alloc] initwithide]
                //initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"NotificationsCell"];
    }

    
    
    cell.titlesLabel.font = [UIFont boldSystemFontOfSize:14];
    cell.titlesLabel.text = [titles objectAtIndex:indexPath.row];
    cell.descriptionLabel.text = [description objectAtIndex:indexPath.row];
    //cell.textLabel.text = [Date objectAtIndex:indexPath.row];
    
    return cell;
    
}

-(IBAction)returnToPrevious:(id)sender{
    [[self navigationController] popViewControllerAnimated:YES];
}


-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    //put your values, this is part of my code
    UIView *header = self.tableView.tableHeaderView;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 30.0f)];
    [view setBackgroundColor:[UIColor redColor]];
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 5, 150, 20)];
    [lbl setFont:[UIFont systemFontOfSize:18]];
    [lbl setTextColor:[UIColor blueColor]];
    [view addSubview:lbl];
    
    [lbl setText:[NSString stringWithFormat:@"Section: %ld",(long)section]];
    self.tableView.tableHeaderView = header;
    
    return view;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}


-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return nil;
    } else {
        return indexPath;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [titles count];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
//    [self.NotificationsButton setTitle:cell.textLabel.text forState:UIControlStateNormal];
//    self.tableView.hidden = YES;
}
@end
