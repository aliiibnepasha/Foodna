//
//  RestaurantVC.h
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantVC : UIViewController <UICollectionViewDelegate,UICollectionViewDataSource>
- (IBAction)action_menu:(id)sender;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionview_coursename;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionview_coursedetail;

@end
