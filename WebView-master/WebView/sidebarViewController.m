//
//  sidebarViewController.m
//  WebView
//
//  Created by Shivendra Pandey on 14/12/17.
//  Copyright © 2017 Diwakar Pandey. All rights reserved.
//

#import "sidebarViewController.h"
#import "SWRevealViewController.h"

@interface sidebarViewController ()

@end

@implementation sidebarViewController{
    NSArray *menuItems;
}

- (IBAction)ShareActivityView:(id)sender {
    NSString *shareText = @"Text I am sharing";
    NSArray *ItemsToShare = @[shareText];
    UIActivityViewController *ActivityVC = [[UIActivityViewController alloc] initWithActivityItems:ItemsToShare applicationActivities:nil];
    ActivityVC.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeMail, UIActivityTypeAirDrop, UIActivityTypeMessage, UIActivityTypeCopyToPasteboard, UIActivityTypePostToFacebook,UIActivityTypePostToTwitter, UIActivityTypeAddToReadingList];
    [self presentViewController:ActivityVC animated:YES completion:nil];
}

- (IBAction)settingsButton:(id)sender {
}

-(IBAction)information
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"About "
                                                    message: [NSString stringWithFormat: @"Ozone Cinemas Company owns ten cinema theatres in Kuwait,four of which are in the Trio Mall of Khaitan, and the other six will be present in Al-Jahra.Ozone Cinema aims to provide a distinctive entertainment services for the people of these two regions[Khaitan and Al-Jahra] after a long period of privation, especially after the demolition of GranadaCinema and the closure of the Sulaibikhat Cinema and Metro Cinema in Farwaniya .Its new lounges provide the latest picture and audio quality of the cinema, as well as the adoption of modern,comfortable seating ,wall designs and the provision of distinctive services to viewers.", round]
                                                   delegate:self
                                          cancelButtonTitle: @"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    menuItems = @[@"Notifications", @"Order History", @"Instruction", @"Share It", @"Settings", @"Rate", @"About", @"Contact", @"Contact Developer"];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
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
    // Dispose of any resources that can be recreated.
}




#pragma mark - Table view data source


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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
