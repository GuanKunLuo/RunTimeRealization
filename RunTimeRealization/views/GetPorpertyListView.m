//
//  GetPorpertyListView.m
//  RunTimeRealization
//
//  Created by luoguankun on 16/4/1.
//  Copyright © 2016年 luomimi. All rights reserved.
//

#import "GetPorpertyListView.h"

@interface GetPorpertyListView()

@property (nonatomic,strong) UIView *teacherInfoView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *ageLable;
@property (nonatomic,strong) UILabel *classTypeLabel;
@property (nonatomic,strong) UIButton *changeBtn;

@end

@implementation GetPorpertyListView


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        NSArray  *apparray= [[NSBundle mainBundle] loadNibNamed:@"TeacherInfoView" owner:nil options:nil];
        self.teacherInfoView = [apparray firstObject];
    
        self.teacherInfoView.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
        [self addSubview:self.teacherInfoView];

        self.nameLabel = (UILabel *)[self.teacherInfoView viewWithTag:100];
        
        self.ageLable = (UILabel *)[self.teacherInfoView viewWithTag:200];
        
        self.classTypeLabel = (UILabel *)[self.teacherInfoView viewWithTag:300];
        
        self.changeBtn = (UIButton *)[self.teacherInfoView viewWithTag:400];
        [self.changeBtn addTarget:self action:@selector(changeBtnOnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return self;
}

- (IBAction)changeBtnOnClick:(UIButton *)changeBtn
{
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(changeBtn_OnClick:)]) {
        [self.delegate changeBtn_OnClick:changeBtn];
    }
}

- (void)setTeacher:(Teacher *)teacher
{
    _teacher = teacher;
    
    if (_teacher) {
        self.nameLabel.text = _teacher.name;
        self.ageLable.text = [NSString stringWithFormat:@"%ld",_teacher.age];
        NSString *classType = @"";
        switch (_teacher.classType) {
            case ClassType_Math:
                classType = @"数学";
                break;
            case ClassType_English:
                classType = @"英语";
                break;
            case ClassType_Biology:
                classType = @"生物";
                break;
            case ClassType_Physical:
                classType = @"物理";
                break;
            default:
                break;
        }
        self.classTypeLabel.text = classType;
    }
}

@end
