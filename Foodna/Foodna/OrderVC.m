//
//  OrderVC.m
//  Foodna
//
//  Created by Macbook on 22/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "OrderVC.h"
#import "OrderCell.h"
@interface OrderVC ()

@end

@implementation OrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableview_order.backgroundColor=[UIColor clearColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSString *CellIdentifier;
    if (indexPath.row==0 || indexPath.row==2) {
        CellIdentifier = @"ordercellheader";
    }
    else
        if (indexPath.row==1) {
            CellIdentifier = @"ordercelloption";
        }
    else
    {
        CellIdentifier = @"ordercell";
        
    }
    OrderCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if (indexPath.row==2) {
        cell.label_headertitle.text=@"Previous Orders";
    }
    
   // cell.backgroundColor = [UIColor clearColor];
    
    
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0 || indexPath.row==2) {
        return 44;
    }
    else
        {
             return 100;
        }
 
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
