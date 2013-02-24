//
//  ViewController.m
//  TestSocial
//
//  Created by oy on 13-2-21.
//  Copyright (c) 2013年 吴 建强. All rights reserved.
//

// changes

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITabBarItem *item = [_tabbar.items objectAtIndex:0];
    [item setImage:[UIImage imageNamed:@"Crash Smoke step3.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clicked:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeSinaWeibo]) {
        NSLog(@"Weibo service is available");
        
//        SLComposeViewController *slComposerSheet = nil;
//        
//        [slComposerSheet setCompletionHandler:^(SLComposeViewControllerResult result) {
//            NSLog(@"start completion block");
//            NSString *output;
//            switch (result) {
//                case SLComposeViewControllerResultCancelled:
//                    output = @"Action Cancelled";
//                    break;
//                case SLComposeViewControllerResultDone:
//                    output = @"Post Successfull";
//                    break;
//                default:
//                    break;
//            }
//            if (result != SLComposeViewControllerResultCancelled)
//            {
//                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Weibo Message" message:output delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//                [alert show];
//            }
//        }];
//        
//        if([SLComposeViewController isAvailableForServiceType:SLServiceTypeSinaWeibo])
//        {
//            slComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeSinaWeibo];
//            [slComposerSheet setInitialText:@"hello"];
//            //            [slComposerSheet addImage:self.sharingImage];
//            [slComposerSheet addURL:[NSURL URLWithString:@"http://www.weibo.com/"]];
//            [self presentViewController:slComposerSheet animated:YES completion:nil];
//        }

        
        NSArray *activityItems;
        

        activityItems = @[@"hello !", [UIImage imageNamed:@"headImage_Default.png"]];
        
        UIActivityViewController *activityController =
        [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                          applicationActivities:nil];
        
        activityController.excludedActivityTypes = @[UIActivityTypeAssignToContact, UIActivityTypeMessage,
        UIActivityTypeSaveToCameraRoll, UIActivityTypePrint, UIActivityTypeMail,
        UIActivityTypeCopyToPasteboard];
        
        [self presentViewController:activityController
                           animated:YES completion:nil];
        
    } else {
        NSLog(@"Weibo service is NOT available");
    }

}
- (void)dealloc {
    [_tabbar release];
    [super dealloc];
}
@end
