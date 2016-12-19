//
//  ViewController.m
//  ContainerDemo
//
//  Created by Tecksky Techonologies on 12/14/16.
//  Copyright © 2016 Softranz Technologies. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _menubtn.target = self.revealViewController;
    _menubtn.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    // Do any additional setup after loading the view, typically from a nib.
    if (_btntag == 1)
    {
        [self.container segueIdentifierReceivedFromParent:@"buttonOne"];
    }
    else if (_btntag == 2)
    {
        [self.container segueIdentifierReceivedFromParent:@"buttonTwo"];
    }
    else if (_btntag == 3)
    {
        [self.container segueIdentifierReceivedFromParent:@"buttonThree"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)b1:(id)sender
{
   [self.container segueIdentifierReceivedFromParent:@"buttonOne"];
}
- (IBAction)b2:(id)sender
{
    [self.container segueIdentifierReceivedFromParent:@"buttonTwo"];
}
- (IBAction)b3:(id)sender
{
   [self.container segueIdentifierReceivedFromParent:@"buttonThree"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //  vc = [[UIViewController alloc]init];
    // Make sure your segue name in storyboard is the same as this line
  
    
    if ([[segue identifier] isEqual: @"container"]){
        self.container = (ContainerViewController *)[segue destinationViewController];
    }
}


@end
