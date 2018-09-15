//
//  AnimeName_ViewController.m
//  tableView_with_navigation_controller
//
//  Created by mac-lab on 9/15/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import "AnimeName_ViewController.h"

@interface AnimeName_ViewController ()

@end

@implementation AnimeName_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _animeDetailsLabels.text = [NSString stringWithFormat:@"Your data: %@", _data];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
