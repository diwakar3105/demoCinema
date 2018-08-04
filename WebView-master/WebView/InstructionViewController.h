//
//  InstructionViewController.h
//  WebView
//
//  Created by Shivendra Pandey on 27/12/17.
//  Copyright © 2017 Özcan Akbulut. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstructionViewController : UIViewController {
    
    IBOutlet UIScrollView *scrollVIew;
    
}
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
-(IBAction)returnToPrevious:(id)sender;

@end
