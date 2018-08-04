//
//  SettingsViewController.m
//  WebView
//
//  Created by Shivendra Pandey on 15/12/17.
//  Copyright © 2017 Diwakar Pandey. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
NSArray *settingsItems;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    settingsItems = @[@"Notifications", @"Ringtones", @"Vibrate", @"Contact Us", @"Copyright", @"Build Version", @"Terms & Policies", @"Contact", @"Contact Developer"];
    
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
                                 CGRectMake(0, 0, self.tableView.frame.size.width, 50.0)];
    sectionHeaderView.backgroundColor = [UIColor cyanColor];
    
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:
                            CGRectMake(15, 15, sectionHeaderView.frame.size.width, 25.0)];
    
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textAlignment = NSTextAlignmentCenter;
    //[headerLabel setFont:[UIFont fontWithName:@"Verdana" size:20.0]];
    [sectionHeaderView addSubview:headerLabel];
    
    
    //®   self.tableView.tableHeaderView = sectionHeaderView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
}

-(IBAction)returnToPrevious:(id)sender{
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)SwitchNotification:(id)sender {
    
    if(self.notificationSwitch.isOn) {
        NSLog(@"Notification is turning ON");
}
    else {
        NSLog(@"Notification is turning OF");
    }
}

- (IBAction)SwitchVibration:(id)sender {
    if (self.vibrationSwitch.isOn) {
        NSLog(@"Vibration is turning ON");
    }
    else {
        NSLog(@"Vibration is turning OF");
    }
}

- (IBAction)RingtoneButton:(id)sender {
    if(self.tableView.hidden == YES){
        self.tableView.hidden = NO;
    }
    
    else
        self.tableView.hidden = YES;
}

-(IBAction)information
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Terms and Conditions "
                                                    message: [NSString stringWithFormat: @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor risus, aliquet a erat quis, viverra molestie orci. Suspendisse vehicula porta libero. Nam tincidunt nulla ipsum, vel iaculis risus scelerisque sed. Phasellus venenatis, enim vel placerat blandit, leo eros bibendum erat, at auctor mauris diam ac risus. Aenean sit amet congue neque, sit amet condimentum elit. Fusce lacinia massa vel nisl scelerisque, in scelerisque dolor elementum. Vivamus leo enim, congue dictum congue vitae, porttitor id purus. Sed eu ultricies erat. Morbi hendrerit, mi ac volutpat commodo, magna turpis pretium nibh, at fringilla eros lorem quis tellus. Praesent porttitor purus nibh, ac vestibulum massa fringilla vel. Pellentesque dapibus nulla quis luctus dictum. In scelerisque ut ex sed facilisis. Nunc eu finibus nulla, ut hendrerit sem. Suspendisse accumsan risus vel diam fringilla iaculis.", round]
                                                   delegate:self
                                          cancelButtonTitle: @"OK"
                                          otherButtonTitles:nil];
    [alert show];

}

    // Dispose of any resources that can be recreated.


#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}*/

- (UIImageView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIImage *myImage = [UIImage imageNamed:@"gradient.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
    imageView.frame = CGRectMake(10,10,1,30);
    
    return imageView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 30.0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50.0;
}





/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
