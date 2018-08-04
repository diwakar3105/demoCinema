//
//  NotificationsCell.m
//  WebView
//
//  Created by Shivendra Pandey on 21/12/17.
//  Copyright © 2017 Özcan Akbulut. All rights reserved.
//

#import "NotificationsCell.h"

@implementation NotificationsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)updateCellWithTitle:(NSString *)titles description:(NSString *)descriptionLabel  {
    self.titlesLabel.text = _titlesLabel;
    self.descriptionLabel.text = _descriptionLabel;
    


}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
