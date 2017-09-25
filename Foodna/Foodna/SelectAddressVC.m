//
//  SelectAddressVC.m
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "SelectAddressVC.h"
#import "OrderCell.h"

@interface SelectAddressVC ()

@end

@implementation SelectAddressVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableview_selectaddress.backgroundColor=[UIColor clearColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier;
   
        if (indexPath.row==3) {
            CellIdentifier = @"OrderclearCell";
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
    if (indexPath.row==1) {
        cell.label_name.text=@"Office";
    }
    if (indexPath.row==2) {
        cell.label_name.text=@"Sara's House";
    }
    if (indexPath.row==3) {
     
    }

    // cell.backgroundColor = [UIColor clearColor];
    
    
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
        return 100;
    
    
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
