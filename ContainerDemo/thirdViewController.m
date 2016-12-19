//
//  thirdViewController.m
//  ContainerDemo
//
//  Created by Tecksky Techonologies on 12/14/16.
//  Copyright © 2016 Softranz Technologies. All rights reserved.
//

#import "thirdViewController.h"
#include <CommonCrypto/CommonDigest.h>
#import <AdSupport/ASIdentifierManager.h>

@interface thirdViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrlview;

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",[self admobDeviceID]);
    
    CGRect contentRect = CGRectZero;
    for (UIView *view in self.scrlview.subviews)
    {
        contentRect = CGRectUnion(contentRect, view.frame);
    }
    
    self.scrlview.contentSize = contentRect.size;
    
    
    self.bannerview.adUnitID = @"ca-app-pub-6429526891658542/7105155712";
    self.bannerview.rootViewController = self;
    [self.bannerview loadRequest:[GADRequest request]];
    
    
    GADRequest *request = [GADRequest request];
    // Requests test ads on devices you specify. Your test device ID is printed to the console when
    // an ad request is made. GADBannerView automatically returns test ads when running on a
    // simulator.
    request.testDevices = @[
                            @"af81da7167c29b1f1dc1e9e08031f1ff"  // Eric's iPod Touch
                            ];
    [self.bannerview loadRequest:request];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)b1:(id)sender
{
    NSLog(@"rfewrewre");
}

- (NSString *) admobDeviceID
{
    NSUUID* adid = [[ASIdentifierManager sharedManager] advertisingIdentifier];
    const char *cStr = [adid.UUIDString UTF8String];
    unsigned char digest[16];
    CC_MD5( cStr, strlen(cStr), digest );
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  output;
    
}

@end
