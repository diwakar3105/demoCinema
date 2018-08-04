//
//  NotificationsViewController.h
//  WebView
//
//  Created by Shivendra Pandey on 20/12/17.
//  Copyright © 2017 Diwakar Pandey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationsViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *titles;
    NSArray *description;
    NSDate *Date;
}
@property(strong, nonatomic) NSArray *data;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
@property(nonatomic, weak) UIButton *NotificationsButton;
-(IBAction)returnToPrevious:(id)sender;

@end
