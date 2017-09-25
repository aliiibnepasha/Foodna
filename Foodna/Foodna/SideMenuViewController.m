//
//  SideMenuViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.

#import "SideMenuViewController.h"
#import "MFSideMenu.h"
#import "SettingsVC.h"
#import "HomeVC.h"
#import "AboutFoodnaVC.h"
#import "RestaurantVC.h"


@implementation SideMenuViewController
{
    bool isprofile;
    NSArray *arrayDescp;
    NSArray *arrayPic;
    NSTimer *aTimer ;
}
UIImage *image;


NSArray *patientAlertsCount;
NSArray *doctorAlertsCount;




-(void) viewDidLoad
{
    
  
    //[self joinSignalR];
    _tableViewSideMenu.delegate=self;
    _tableViewSideMenu.dataSource=self;
    _user=[[NSDictionary alloc] init];
    
  //  dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableViewSideMenu reloadData];
  //  });
    
         isprofile=NO;
    
    
    
    //
    
    
    
    // [self.tableViewSideMenu reloadData];
    
      
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadtable:) name:@"reloadtable" object:nil];
    
    
    aTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(reloadtable:) userInfo:nil repeats:YES];
    
    
    
    
    
    
    
    
    
    
    
}
- (void)reloadtable:(NSNotification *)notification
{
    [_tableViewSideMenu reloadData];
}






#pragma mark - SignalR
//
//-(void)joinSignalR
//{
//    if([Common isPatient])
//    {
//        NSDictionary *dictionary=[[NSDictionary alloc] initWithObjectsAndKeys:[[NSUserDefaults standardUserDefaults] objectForKey:@"userID"],@"Id",[[NSUserDefaults standardUserDefaults] objectForKey:@"Email"],@"UserName", @"Patient",@"UserType",[[NSUserDefaults standardUserDefaults] objectForKey:@"FirstName"],@"FirstName",[[NSUserDefaults standardUserDefaults] objectForKey:@"LastName"],@"LastName",nil];
//        [[ConnectionStatusConnection sharedConnection] Join:dictionary];
//    }
//    else
//    {
//        NSDictionary *dictionary=[[NSDictionary alloc] initWithObjectsAndKeys:[[NSUserDefaults standardUserDefaults] objectForKey:@"userID"],@"Id",[[NSUserDefaults standardUserDefaults] objectForKey:@"Email"],@"UserName", @"Doctor",@"UserType",[[NSUserDefaults standardUserDefaults] objectForKey:@"FirstName"],@"FirstName",[[NSUserDefaults standardUserDefaults] objectForKey:@"LastName"],@"LastName",nil];
//        [[ConnectionStatusConnection sharedConnection] Join:dictionary];
//    }
//    
//}




-(void)viewWillAppear:(BOOL)animated
{
       
    
    
    
    
    //  isprofile=NO;
   
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableViewSideMenu reloadData];
    });
    
        //[self getPatientAlertsCount];
        arrayDescp=[[NSArray alloc] initWithObjects:@"Home",@"Settings",@"About Foodna",@"FAQ",@"Log out",nil];
    
        
        //self.tableViewSideMenu.scrollEnabled=NO;
    
    _tableViewSideMenu.delegate=self;
    _tableViewSideMenu.dataSource=self;
     [self.tableViewSideMenu reloadData];
    
}

#pragma mark -
#pragma mark - UITableViewDataSource


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    
    return arrayDescp.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
  
        static NSString *CellIdentifier;
        
        
        CellIdentifier= @"MenuCell";
        
        
        
        MenuCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        
    
        cell.labelDescription.text=[arrayDescp objectAtIndex:indexPath.row];
        
    
            
    
        cell.backgroundColor=[UIColor clearColor];
        return cell;
        
    
}

#pragma mark -
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"ProfileNotComplete"]);
//    if([[NSUserDefaults standardUserDefaults] boolForKey:@"ProfileNotComplete"])
//    {
//        if([Common isPatient])
//        {
//        if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
//        {
//            PatientProfileVC *demoController = [[UIStoryboard storyboardWithName:@"MyProfile-ipad" bundle:nil] instantiateViewControllerWithIdentifier:@"ProfileVC"];
//            UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//            
//            [navigationController pushViewController:demoController animated:YES];
//        }
//        else{
//            PatientProfileVC *demoController = [[UIStoryboard storyboardWithName:@"MyProfile" bundle:nil] instantiateViewControllerWithIdentifier:@"ProfileVC"];
//            UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//            
//            [navigationController pushViewController:demoController animated:YES];
//        }
//        }
//        else
//        {
//            if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
//            {
//                
//                PatientProfileVC *demoController = [[UIStoryboard storyboardWithName:@"MyProfile-ipad" bundle:nil] instantiateViewControllerWithIdentifier:@"DoctorEditProficVC"];
//                UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//                
//                [navigationController pushViewController:demoController animated:YES];
//            }
//            else{
//                PatientProfileVC *demoController = [[UIStoryboard storyboardWithName:@"MyProfile" bundle:nil] instantiateViewControllerWithIdentifier:@"DoctorEditProficVC"];
//                UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
//                
//                [navigationController pushViewController:demoController animated:YES];
//            }
//            
//
//        }
//
//    }
    
    if (indexPath.row==0)
    {
        HomeVC *demoController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HomeVC"];
        //                UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        //
        //                [navigationController pushViewController:demoController animated:YES];
        
        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        
        [navigationController presentViewController:demoController animated:YES completion:nil];
    }

    if (indexPath.row==1)
    {
        SettingsVC *demoController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SettingsVC"];
        //                UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        //
        //                [navigationController pushViewController:demoController animated:YES];
        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        
        [navigationController presentViewController:demoController animated:YES completion:nil];
    }
    if (indexPath.row==2)
    {
        RestaurantVC *demoController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"RestaurantVC"];
        //                UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        //
        //                [navigationController pushViewController:demoController animated:YES];
        UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
        
        [navigationController presentViewController:demoController animated:YES completion:nil];
    }
       [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
            return 50;
    

}

#pragma mark -





#pragma mark -
#pragma mark - Base64 Conversion
- (UIImage *)decodeBase64ToImage1:(NSString *)strEncodeData {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:data];
}
- (NSData *)decodeBase64ToImage:(NSString *)strEncodeData {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return data;
}
- (BOOL)isJPEGValid:(NSData *)jpeg {
    if ([jpeg length] < 4) return NO;
    const char * bytes = (const char *)[jpeg bytes];
    if (bytes[0] != 0xFF || bytes[1] != 0xD8) return NO;
    if (bytes[[jpeg length] - 2] != 0xFF || bytes[[jpeg length] - 1] != 0xD9) return NO;
    return YES;
}

#pragma mark - Archiving

-(NSString *)getDirectoryPathForArchiving
{
    // use the Documents directory (preferred URL method)
    NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    NSString * fileName = [[NSString stringWithFormat:@"profile"] stringByAppendingString:@".txt"];
    NSURL *plist = [documentDir URLByAppendingPathComponent:fileName];
    return plist.path;
}

#pragma mark -
#pragma mark - Remove All User Defaults Keys

- (void)resetDefaults {
    
    image=NULL;
    
    NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
    NSDictionary * dict = [defs dictionaryRepresentation];
    for (id key in dict) {
     
        [defs removeObjectForKey:key];
    }
    [defs synchronize];
    
    [aTimer invalidate];
 //    [[ConnectionStatusConnection sharedConnection] stop];
    NSIndexPath *IndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
  //  MenuProfileCell *cell = [_tableViewSideMenu cellForRowAtIndexPath:IndexPath];
  //  [cell.buttonDropdown setSelected:true];
     isprofile=NO;

        NSDictionary *dic=[[NSUserDefaults standardUserDefaults]dictionaryRepresentation];
    for(NSString *key in [dic allKeys])
    {
        if([key isEqualToString:@"DeviceToken"])
        {
            
        }
        else
        {
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
        }
    }
}








@end
