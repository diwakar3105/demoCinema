//
//  SettingsViewController.h
//  WebView
//
//  Created by Shivendra Pandey on 15/12/17.
//  Copyright © 2017 Diwakar Pandey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UITableViewController
- (IBAction)RingtoneButton:(id)sender;
-(IBAction)information;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *BackButton;
-(IBAction)returnToPrevious:(id)sender;
- (IBAction)SwitchNotification:(id)sender;
- (IBAction)SwitchVibration:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *notificationSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *vibrationSwitch;

@end
