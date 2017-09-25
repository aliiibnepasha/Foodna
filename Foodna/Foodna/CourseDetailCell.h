//
//  CourseDetailCell.h
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseDetailCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *view_cellview;
@property (weak, nonatomic) IBOutlet UIImageView *image_offerimage;
@property (weak, nonatomic) IBOutlet UILabel *label_detail;
@property (weak, nonatomic) IBOutlet UILabel *label_price;
@property (weak, nonatomic) IBOutlet UILabel *label_name;

@end
