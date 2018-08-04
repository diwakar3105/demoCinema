//
//  webViewController.h
//  ChsloChsleMOvi
//
//  Created by Diwakar Pandey on 25/09/17.
//  Copyright © 2017 Empwin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *barButtonItem;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) UIButton *button;
@property (strong, nonatomic) NSString *stringURL;
//@property (strong, nonatomic) IBAction UIButton *buttonClick;
@property(strong, nonatomic) UIImageView *image3;

- (void)loadRequestFromString:(NSString*)urlString;

@end



//IBOutlet UIWebView *webView;