//
//  GetPorpertyListViewController.m
//  RunTimeRealization
//
//  Created by luoguankun on 16/4/1.
//  Copyright © 2016年 luomimi. All rights reserved.
//

#import "GetPorpertyListViewController.h"
#import "GetPorpertyListView.h"
#import "Teacher.h"

@interface GetPorpertyListViewController ()<GetPorpertyListViewDelegate>

@property (nonatomic,weak) GetPorpertyListView *porpertyListView;
@property (nonatomic,strong) Teacher *tearchLuo;

@end

@implementation GetPorpertyListViewController

- (void)loadView
{
    [super loadView];
    
    GetPorpertyListView *porpertyListView = [[GetPorpertyListView alloc] initWithFrame:self.view.bounds];
    self.porpertyListView = porpertyListView;
    self.porpertyListView.delegate = self;
    self.view = self.porpertyListView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"获取属性列表";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"获取" style:UIBarButtonItemStylePlain target:self action:@selector(getTeacherInfo)];
}

- (void)getTeacherInfo
{
    self.tearchLuo = [[Teacher alloc] init];
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self.tearchLuo class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        const char *varName = ivar_getName(ivar);
        NSString *name = [NSString stringWithUTF8String:varName];
        
        if ([name isEqualToString:@"_name"]) {
            object_setIvar(self.tearchLuo, ivar, @"罗眯眯");
        } else if ([name isEqualToString:@"_age"]) {
            
        } else if ([name isEqualToString:@"_classType"]) {
            object_setIvar(self.tearchLuo, ivar, @(1));
        }
    }
    
    self.porpertyListView.teacher = self.tearchLuo;
}

- (void)changeBtn_OnClick:(UIButton *)btn
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self.tearchLuo class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        const char *varName = ivar_getName(ivar);
        NSString *name = [NSString stringWithUTF8String:varName];
        
        if ([name isEqualToString:@"_name"]) {
            object_setIvar(self.tearchLuo, ivar, @"罗冠坤");
            break;
        }
    }
    
    self.porpertyListView.teacher = self.tearchLuo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
