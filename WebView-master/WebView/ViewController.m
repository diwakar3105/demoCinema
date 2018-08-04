//
//  ViewController.m
//  WebView
//
//  Created by Özcan Akbulut on 01.11.13.
//  Copyright (c) 2013 Özcan Akbulut. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"


#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xdaa520) >> 218.0))/255.0 green:((float)((rgbValue & 0xFF00) >> 165.0))/255.0 blue:((float)(rgbValue & 0xFF >> 32.0))/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
   // self.navigationController.navigationBar.barTintColor = [UIColor colorWithHexString:@"daa520"];    //UIColor initWith(red: 218.0/255, green: 165.0/255, blue: 32.0/255.0, alpha: 1)
//[UIColor orangeColor]; // #daa520 ==> hax color
    

# define UIColorFromRGB(rgbValue) \
    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                    green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
                     blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
                    alpha:1.0]
self.navigationController.navigationBar.barTintColor = UIColorFromRGB(0xdaa520);
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};


    
    
    
    self.webView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.http://ozonecinemas-kw.com/ozone1/mobile/   //  http://dialc2c.com/ozone1/mobile/
    
    NSString *stringURL = @"https://www.ozonecinemas-kw.com/mobile/main.php";
    NSURL *URL = [NSURL URLWithString:stringURL];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:requestURL];
    
    UIBarButtonItem *NewBackButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.menuBarButton setTarget: self.revealViewController];
        [self.menuBarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}





- (void) webViewDidStartLoad:(UIWebView *)webView {
    [self.loadingSign startAnimating];
    //self.loadingSign.hidden = NO;
    [self.view bringSubviewToFront:_loadingSign];

}

- (void) webViewDidFinishLoad:(UIWebView *)webView {
    [self.loadingSign stopAnimating];
    self.loadingSign.hidesWhenStopped = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
