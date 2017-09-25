//
//  FAQVC.m
//  Foodna
//
//  Created by Macbook on 25/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "FAQVC.h"
#import "FilterCell.h"

@interface FAQVC ()

@end

@implementation FAQVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableview_faq.HVTableViewDataSource=self;
    _tableview_faq.HVTableViewDelegate=self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
        return 7;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath isExpanded:(BOOL)isExpanded

{
    if (isExpanded) {
        return 200;
    }
    else
    {
        return 63;
    }
}
-(void)tableView:(UITableView *)tableView expandCell:(UITableViewCell *)cell withIndexPath:(NSIndexPath *)indexPath
{
    [self.tableview_faq reloadData];
}
-(void)tableView:(UITableView *)tableView collapseCell:(UITableViewCell *)cell withIndexPath:(NSIndexPath *)indexPath
{
    [self.tableview_faq reloadData];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath isExpanded:(BOOL)isExpanded
{
    
    NSString *CellIdentifier;
                   CellIdentifier = @"filtercelloption";
    
    FilterCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
   
        if (indexPath.row==0)
        {
            cell.label_sorttype.text=@"What does Foodna do?";
        }
        if (indexPath.row==1) {
            cell.label_sorttype.text=@"How to be part of Foodna";
            
        }
        if (indexPath.row==2) {
            cell.label_sorttype.text=@"I didn't receive my order";
           
        }
        if (indexPath.row==3) {
            cell.label_sorttype.text=@"How can i re-order the previous order?";
        }
        if (indexPath.row==4) {
            cell.label_sorttype.text=@"How can i contact Foodna?";
       
        }
        if (indexPath.row==5) {
            cell.label_sorttype.text=@"What's the exclusive feature?";
          
           
        }
    if (indexPath.row==6) {
        cell.label_sorttype.text=@"How can I delete my account?";
        
        
    }
    if (isExpanded) {
        cell.view_bg.backgroundColor=[UIColor colorWithRed:235/255.0f green:235/255.0f  blue:235/255.0f  alpha:1.0];
        [cell.btn_tick setImage:[UIImage imageNamed:@"minusicon@"]forState:UIControlStateNormal];
    }
    else
    {
       [cell.btn_tick setImage:[UIImage imageNamed:@"plusicon@"]forState:UIControlStateNormal];
    }
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)action_menu:(id)sender {
}
@end
