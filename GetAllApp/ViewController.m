//
//  ViewController.m
//  GetAllApp
//
//  Created by shuzhenguo on 15/4/2.
//  Copyright (c) 2015年 shuzhenguo. All rights reserved.
////获取手机上安装的应用


#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
    
    
    NSObject* workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    
    NSMutableArray *bundleIdentifierArray=[[NSMutableArray alloc]initWithArray:[workspace performSelector:@selector(allApplications)]];
    
    
    NSLog(@"%@",[workspace performSelector:@selector(allApplications)]);
    
    
//    NSLog(@"bundleIdentifierArray---%@",bundleIdentifierArray );
    
        NSMutableArray *bundleIdentifierString=[[NSMutableArray alloc]init];
    
    for (int i=0; i<[bundleIdentifierArray count]; i++) {
        
        NSString *string=[NSString stringWithFormat:@"%@",[bundleIdentifierArray objectAtIndex:i]];
        
     NSLog(@"%@",[[string componentsSeparatedByString:@" "]lastObject]);
        
        [bundleIdentifierString addObject:[[string componentsSeparatedByString:@" "]lastObject]];
        
        

    }
    

    
    
    
    
    //        NSRange ran=[string rangeOfString:@">"];
    
    //        NSString *sutstring=[string substringWithRange:NSMakeRange(ran.location+2, string.length-ran.location-2)];
    
    //        [bundleIdentifierString addObject:sutstring];

    
    
//    NSLog(@"arraystr--%@",bundleIdentifierString);
// ---- com.apple.Maps

//    Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
    
    
    
//    NSObject* workspace =[LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)]; NSLog(@"openURL: %@",[workspace performSelector:@selector(applicationsAvailableForHandlingURLScheme:)withObject:@"alipay"]);
//    
//    NSLog(@"openURL: %@",[workspace performSelector:@selector(applicationsAvailableForHandlingURLScheme:)withObject:@"alipay"]);

    
//NSString *saa=@"sddfds";
//    
//    NSLog(@"==%@",[saa substringToIndex:4]);
//    

    
    
    
    
//    NSLog(@"apps: %@", [[workspace performSelector:@selector(allApplications)] objectAtIndex:0]);

    
    
    
//    NSObject *du=  [[workspace performSelector:@selector(allApplications)] objectAtIndex:0];
    
//    NSLog(@"description%@",du.description);
//    NSLog(@"observationInfo%@",du.observationInfo);

    
//    NSDictionary *dict=[[NSDictionary alloc]initWithDictionary:[workspace performSelector:@selector(allApplications)]];

//    NSLog(@"allInstalledApplications: %@", [workspace performSelector:@selector(allInstalledApplications)]);
//    NSLog(@"applicationsWithSettingsBundle: %@", [workspace performSelector:@selector(applicationsWithSettingsBundle)]);
//    NSLog(@"applicationsWithUIBackgroundModes: %@", [workspace performSelector:@selector(applicationsWithUIBackgroundModes)]);
//    NSLog(@"clearAdvertisingIdentifier: %@", [workspace performSelector:@selector(clearAdvertisingIdentifier)]);
//    NSLog(@"deviceIdentifierForVendor: %@", [workspace performSelector:@selector(deviceIdentifierForVendor)]);
//    NSLog(@"directionsApplications: %@", [workspace performSelector:@selector(directionsApplications)]);
//    NSLog(@"establishConnection: %@", [workspace performSelector:@selector(establishConnection)]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
