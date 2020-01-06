//
//  AlertViewController.m
//  UIAlertControllerSample_objc
//
//  Created by 丸本聡 on 2020/01/05.
//  Copyright © 2020 丸本聡. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonAlert:(id)sender {

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"入力の途中ですが、終了しますか？"
           message:@"これまでに入力した内容は破棄されます。掲載期限まであとn日！"
    preferredStyle:UIAlertControllerStyleAlert];
                                          
    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"破棄して終了"
                                                                                  style:UIAlertActionStyleDefault
                                                                                handler:^(UIAlertAction *action) {
                                                                                    NSLog(@"clicked Button title: %@", action.title);
        [self.navigationController popViewControllerAnimated:YES];
                                                                                }];
                                          
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"入力を続ける"
                                            style:UIAlertActionStyleDefault
                                          handler:^(UIAlertAction *action) {
                                              NSLog(@"clicked Button title: %@", action.title);
                                          }];
                                          
    [alertController addAction:cancelAction];
    [alertController addAction:defaultAction];

    [self presentViewController:alertController animated:YES completion:nil];
}


@end
