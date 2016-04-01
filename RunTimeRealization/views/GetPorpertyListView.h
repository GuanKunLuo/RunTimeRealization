//
//  GetPorpertyListView.h
//  RunTimeRealization
//
//  Created by luoguankun on 16/4/1.
//  Copyright © 2016年 luomimi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Teacher.h"

@protocol GetPorpertyListViewDelegate <NSObject>

@optional
- (void)changeBtn_OnClick:(UIButton *)btn;

@end

@interface GetPorpertyListView : UIView

@property (nonatomic,weak) id<GetPorpertyListViewDelegate> delegate;
@property (nonatomic,strong) Teacher *teacher;

@end
