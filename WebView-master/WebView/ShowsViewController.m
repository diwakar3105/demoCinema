//
//  ShowsViewController.m
//  OzoneCinemas
//
//  Created by Shivendra Pandey on 25/01/18.
//  Copyright © 2018 Özcan Akbulut. All rights reserved.
//

#import "ShowsViewController.h"

@interface ShowsViewController ()

@end

@implementation ShowsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
# define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]
    self.navigationController.navigationBar.barTintColor = UIColorFromRGB(0xdaa520);
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    

    
    self.webView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.http://ozonecinemas-kw.com/ozone1/mobile/   //  http://dialc2c.com/ozone1/mobile/
    
    NSString *stringURL = @"https://www.ozonecinemas-kw.com/mobile/shows.php";
    NSURL *URL = [NSURL URLWithString:stringURL];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:requestURL];
    
    UIBarButtonItem *NewBackButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    // Do any additional setup after loading the view.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToPrevious:(id)sender{
    [[self navigationController] popViewControllerAnimated:YES];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
