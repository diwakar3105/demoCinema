//
//  ViewController.h
//  WebView
//
//  Created by Özcan Akbulut on 01.11.13.
//  Copyright (c) 2013 Özcan Akbulut. All rights reserved.
//

#import <UIKit/UIKit.h>


@class GADBannerView, GADRequest;

@interface ViewController : UIViewController <UIWebViewDelegate>
    


@property (nonatomic, strong) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *loadingSign;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menuBarButton;

@end
