//
//  SettingsVC.m
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "SettingsVC.h"
#import "FilterCell.h"
#import "SideMenuViewController.h"
#import "MFSideMenu.h"


@interface SettingsVC ()

@end

@implementation SettingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.menuContainerViewController setPanMode:MFSideMenuPanModeDefault];

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
        return 2;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *CellIdentifier;
  
        if (indexPath.section==0) {
            
            if (indexPath.row==6)
            {
                  CellIdentifier = @"filtercellheader";
            }
            else
            {
           
                CellIdentifier = @"filtercell";
            }
            
        }
        else
        {
            if (indexPath.row==0) {
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
        cell.label_option.hidden=YES;
        if (indexPath.row==0) {
            cell.label_filtertype.text=@"Account Info";
            
            
        }
        if (indexPath.row==1) {
            cell.label_filtertype.text=@"My Addresses";
         
        }
        if (indexPath.row==2) {
            cell.label_filtertype.text=@"Change Email";
       
        }
        if (indexPath.row==3) {
            cell.label_filtertype.text=@"Change Password";
            
        }
        if (indexPath.row==4) {
            cell.label_filtertype.text=@"Country";
           
            
        }
         if (indexPath.row==5)
         {
              cell.label_filtertype.text=@"";
             cell.btn_next.hidden=YES;
         }
        
    }
    else
        
    {
        if (indexPath.row==0)
        {
            cell.label_headertitle.text=@"Turn on notification";
        }
        if (indexPath.row==1) {
            cell.label_filtertype.text=@"Payment methods";
            cell.label_option.text=@"Cash on Delivery";
            
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

- (IBAction)action_menu:(id)sender
{
    [self.menuContainerViewController toggleLeftSideMenuCompletion:^{
        //[self setupMenuBarButtonItems];
    }];
}
@end
