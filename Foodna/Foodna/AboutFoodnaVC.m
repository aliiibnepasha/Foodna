//
//  AboutFoodnaVC.m
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "AboutFoodnaVC.h"
#import "SideMenuViewController.h"
#import "MFSideMenu.h"


@interface AboutFoodnaVC ()

@end

@implementation AboutFoodnaVC

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.menuContainerViewController setPanMode:MFSideMenuPanModeDefault];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
