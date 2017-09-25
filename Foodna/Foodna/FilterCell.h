//
//  FilterCell.h
//  Foodna
//
//  Created by Macbook on 22/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label_headertitle;
@property (weak, nonatomic) IBOutlet UILabel *label_sorttype;
@property (weak, nonatomic) IBOutlet UILabel *label_filtertype;
@property (weak, nonatomic) IBOutlet UIButton *btn_tick;
@property (weak, nonatomic) IBOutlet UIButton *btn_switch;
@property (weak, nonatomic) IBOutlet UIView *view_whiteview;
@property (weak, nonatomic) IBOutlet UILabel *label_option;
@property (weak, nonatomic) IBOutlet UIButton *btn_next;
@property (weak, nonatomic) IBOutlet UIView *view_bg;
@end
