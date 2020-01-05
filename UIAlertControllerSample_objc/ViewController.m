//
//  ViewController.m
//  UIAlertControllerSample_objc
//
//  Created by 丸本聡 on 2020/01/05.
//  Copyright © 2020 丸本聡. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pushButton :(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Alert" bundle:nil];
    UINavigationController *vc = [storyboard instantiateViewControllerWithIdentifier:@"Alert"];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
