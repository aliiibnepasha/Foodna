//
//  FAQVC.h
//  Foodna
//
//  Created by Macbook on 25/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HVTableView.h"

@interface FAQVC : UIViewController <HVTableViewDelegate,HVTableViewDataSource>
@property (weak, nonatomic) IBOutlet HVTableView *tableview_faq;
- (IBAction)action_menu:(id)sender;

@end
