//
//  menuViewController.m
//  ContainerDemo
//
//  Created by Tecksky Techonologies on 12/14/16.
//  Copyright © 2016 Softranz Technologies. All rights reserved.
//

#import "menuViewController.h"
#import "SWRevealViewController.h"
#import "thirdViewController.h"
#import "ViewController.h"
@interface menuViewController ()

@end

@implementation menuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"home"])
    {
        ViewController *photoController = (ViewController*)segue.destinationViewController;
    
        photoController.btntag = 1;
    }
    else if ([segue.identifier isEqualToString:@"mysetting"])
    {
        ViewController *photoController = (ViewController*)segue.destinationViewController;
        
        photoController.btntag = 2;
    }
    else if ([segue.identifier isEqualToString:@"history"])
    {
        ViewController *photoController = (ViewController*)segue.destinationViewController;
        
        photoController.btntag = 3;
    }
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] )
    {
        SWRevealViewControllerSegue *swSegue = (SWRevealViewControllerSegue*) segue;
        
        swSegue.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc) {
            
            UINavigationController* navController = (UINavigationController*)self.revealViewController.frontViewController;
            [navController setViewControllers: @[dvc] animated: NO ];
            [self.revealViewController setFrontViewPosition: FrontViewPositionLeft animated: YES];
        };
        
    }
    

    
}


@end
