//
//  ViewController.m
//  tableView_with_navigation_controller
//
//  Created by mac-lab on 9/15/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import "ViewController.h"
#import "AnimeName_ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSArray *anime;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    anime=[NSArray arrayWithObjects:@"Ghost Fighter", @"Nodame Cantibelle", @"Book of Bantora", @"Bleach",@"Detective School Q",@"Naruto",@"Darker Than Black",nil];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [anime count];
}


- (NSInteger)numberOfSectionsInTableView: (UITableView *)tableView {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *animeName = @"AnimeName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:animeName];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:animeName];
        
    }
    cell.textLabel.text = [anime objectAtIndex:indexPath.row];
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //following lines needed only if you need to send some detail across to ContactViewController
    if ([segue.identifier isEqualToString:@"AnimeName"]) {
        AnimeName_ViewController *destinationController = segue.destinationViewController;
        destinationController.data = @"Bla bla";
        //where strTest is a variable in ContactViewController. i.e:
        //"@property (nonatomic, strong) NSString *strTest;"
        //declared in `ContactViewController.h`
        [self.navigationController pushViewController:destinationController animated:YES];
    }
    
    //...
    
}





@end
