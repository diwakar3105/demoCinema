//
//  webViewController.m
//  ChsloChsleMOvi
//
//  Created by Diwakar Pandey on 25/09/17.
//  Copyright © 2017 Empwin. All rights reserved.
//

#import "webViewController.h"
#import "SWRevealViewController.h"


@interface webViewController  () <UIWebViewDelegate>

@end

UIImage *image3;

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    
    UIImage *logo = [UIImage imageNamed:@"ozone-2.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage: logo];
    //UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,720,100)];
    //[imgView setImage:image3];
    
    imageView.frame = CGRectMake(160, 2, 40, 40);
    
    //self.navigationItem.titleView = [[UIImageView alloc] initWithImage:logo];
    self.navigationItem.titleView =imageView;
    [imageView setContentMode:UIViewContentModeCenter];
    CGRect frameing = CGRectMake(0, 0, image3.size.width, image3.size.height);
    UIButton *someButton = [[UIButton alloc] initWithFrame:frameing];
    [someButton setBackgroundImage:_image3 forState:UIControlStateNormal];
    [someButton addTarget:self action:@selector(sendmail)
         forControlEvents:UIControlEventTouchUpInside];
    [someButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
    self.navigationItem.rightBarButtonItem=mailbutton;
    //[UIButton release];
    
    
    
    //NSURL *url = [NSURL URLWithString:@"https://www.google.co.in"];
    //[NSURL URLWithString:@"http//www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.stringURL]];
    
    [self.webView loadRequest:request];
//    [self loadRequestFromString:@"http://iosdeveloperzone.com"];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector(revealToggle:)];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
        
        //[self.navigationController pushViewController:controler animated:YES];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
//    Dispose of any resources that can be recreated.
//    [self loadRequestFromString:@"http://www.google.com"];
    
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView;
{
    [self.activityIndicator startAnimating];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView;
{
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidesWhenStopped = YES;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}



@end



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

