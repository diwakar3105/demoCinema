//
//  ShowsViewController.h
//  OzoneCinemas
//
//  Created by Shivendra Pandey on 25/01/18.
//  Copyright © 2018 Özcan Akbulut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowsViewController : UIViewController <UIWebViewDelegate>



@property (nonatomic, strong) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *loadingSign;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuBarButton;
-(IBAction)returnToPrevious:(id)sender;

@end
