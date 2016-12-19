//
//  ViewController.h
//  ContainerDemo
//
//  Created by Tecksky Techonologies on 12/14/16.
//  Copyright © 2016 Softranz Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContainerViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *second;
@property (weak, nonatomic) IBOutlet UIButton *first;
@property (weak, nonatomic) IBOutlet UIButton *third;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *menubtn;
@property ContainerViewController *container;

@property (nonatomic)NSInteger btntag;
@end

