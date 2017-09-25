//
//  LoginVC.m
//  Foodna
//
//  Created by Macbook on 24/09/2017.
//  Copyright © 2017 Macbook. All rights reserved.
//

#import "LoginVC.h"
#import "SideMenuViewController.h"
#import "MFSideMenu.h"
#import "HomeVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)action_login:(id)sender
{
    SideMenuViewController *leftMenuViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SideMenuViewController"];;
    
    MFSideMenuContainerViewController *container = [MFSideMenuContainerViewController
                                                    containerWithCenterViewController:[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HomeVC"]
                                                    leftMenuViewController:leftMenuViewController
                                                    rightMenuViewController:nil];
    [[UIApplication sharedApplication].keyWindow setRootViewController:container];
    [self presentViewController:container animated:YES completion:nil];
}
- (HomeVC *)demoController {
    
   
        return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HomeVC"];
    
}


-(void) touchesBegan:(NSSet<UITouch * >* )touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
@end
