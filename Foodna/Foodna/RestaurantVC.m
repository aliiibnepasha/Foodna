//
//  RestaurantVC.m
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "RestaurantVC.h"
#import "MFSideMenu.h"
#import "CourseDetailCell.h"
#import "RestaurantCourseCell.h"

@interface RestaurantVC ()

@end

@implementation RestaurantVC
NSArray *coursenamearray;
- (void)viewDidLoad {
    [super viewDidLoad];
     [self.menuContainerViewController setPanMode:MFSideMenuPanModeDefault];
     coursenamearray=[[NSArray alloc] initWithObjects:@"PLATTER",@"SALAD",@"MAINCOURSE",@"DESSERT",@"DRINK",nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView.tag==0) {
        return coursenamearray.count;
    }
    else
    {
        return 6;
    }
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
      NSString *CellIdentifier;
  
    if (collectionView.tag==0) {
       CellIdentifier=@"RestaurantCourseCell";
        RestaurantCourseCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        if (cell == nil)
        {
            //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        cell.label_coursename.text=[coursenamearray objectAtIndex:indexPath.row];
        if (indexPath.row!=2) {
            cell.image_yellowindicator.hidden=YES;
            cell.label_coursename.textColor=[UIColor grayColor];
        }
        return cell;
    }
    else
    {
        CellIdentifier=@"CourseDetailCell";
        CourseDetailCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
        if (cell == nil)
        {
            //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        
        cell.view_cellview.layer.cornerRadius=3.0f;
        return cell;
    }
    
   

}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView.tag==0) {
         return CGSizeMake(90,68);
    }
    else
    {
    return CGSizeMake(177,235);
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

- (IBAction)action_menu:(id)sender {
    [self.menuContainerViewController toggleLeftSideMenuCompletion:^{
        //[self setupMenuBarButtonItems];
    }];

}
@end
