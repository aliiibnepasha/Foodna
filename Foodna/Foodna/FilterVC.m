//
//  FilterVC.m
//  Foodna
//
//  Created by Macbook on 22/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "FilterVC.h"
#import "FilterCell.h"

@interface FilterVC ()

@end

@implementation FilterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section
        ==0) {
        
        return 7;
    }
    else{
    return 6;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *CellIdentifier;
    if (indexPath.row==0 ) {
        CellIdentifier = @"filtercellheader";
    }
    else
        if (indexPath.section==0) {
            
                if (indexPath.row==6) {
                    CellIdentifier = @"filtercellsection";
                    
                }
            else
            {
            CellIdentifier = @"filtercelloption";
            }
        }
        else
        {
            if (indexPath.row==4) {
                CellIdentifier = @"filtercelloption";

            }
            else
                if (indexPath.row==5) {
                    CellIdentifier = @"filtercelloption";

                }
            
                else
                {
                    
            CellIdentifier = @"filtercell";
                }
            
        }
    FilterCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if (indexPath.section==0)
        
    {
        if (indexPath.row==1) {
            cell.label_sorttype.text=@"Alphabetical A to Z";
                        cell.btn_switch.hidden=YES;
             
        }
        if (indexPath.row==2) {
            cell.label_sorttype.text=@"Recommended";
                        cell.btn_switch.hidden=YES;
              cell.btn_tick.hidden=YES;
        }
        if (indexPath.row==3) {
            cell.label_sorttype.text=@"Min. Order Amount";
                        cell.btn_switch.hidden=YES;
              cell.btn_tick.hidden=YES;
        }
        if (indexPath.row==4) {
            cell.label_sorttype.text=@"Fastest delivery";
            cell.btn_switch.hidden=YES;
              cell.btn_tick.hidden=YES;
        }
        if (indexPath.row==5) {
            cell.label_sorttype.text=@"Ratings";
                        cell.btn_switch.hidden=YES;
              cell.btn_tick.hidden=YES;
           
        }
        
    }
    else
        
    {
        if (indexPath.row==0)
        {
            cell.label_headertitle.text=@"Filter by";
        }
        if (indexPath.row==1) {
            cell.label_filtertype.text=@"Type of cuisine";
           
        }
        if (indexPath.row==2) {
            cell.label_filtertype.text=@"Type of dish";
             cell.label_option.text=@"Platters";
        }
        if (indexPath.row==3) {
            cell.label_filtertype.text=@"Payment methods";
        }
        if (indexPath.row==4) {
            cell.label_sorttype.text=@"Show only offers";
            cell.btn_tick.hidden=YES;
        }
        if (indexPath.row==5) {
            cell.label_sorttype.text=@"Show only open Restaurants";
            cell.btn_tick.hidden=YES;
            [cell.btn_switch setImage:[UIImage imageNamed:@"switch_off"] forState:UIControlStateNormal];
             cell.view_whiteview.hidden=NO;
        }
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

@end
