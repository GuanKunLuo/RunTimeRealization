//
//  MainViewController.m
//  RunTimeRealization
//
//  Created by luoguankun on 16/4/1.
//  Copyright © 2016年 luomimi. All rights reserved.
//

#import "MainViewController.h"
#import "GetPorpertyListViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)getObjPorpertyList:(UIButton *)sender {
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    [self.navigationController pushViewController:[[GetPorpertyListViewController alloc] init] animated:YES];
}



@end
