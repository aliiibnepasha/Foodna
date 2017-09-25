//
//  HomeVC.h
//  Foodna
//
//  Created by Macbook on 22/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeVC : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview_home;
- (IBAction)action_menu:(id)sender;

@end
