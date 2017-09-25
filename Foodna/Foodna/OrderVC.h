//
//  OrderVC.h
//  Foodna
//
//  Created by Macbook on 22/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderVC : UIViewController <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview_order;

@end
