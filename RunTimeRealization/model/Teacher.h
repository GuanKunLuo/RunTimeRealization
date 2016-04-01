//
//  Teacher.h
//  RunTimeRealization
//
//  Created by luoguankun on 16/3/31.
//  Copyright © 2016年 luomimi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,ClassType) {
    ClassType_English,
    ClassType_Math,
    ClassType_Physical,
    ClassType_Biology
};

@interface Teacher : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) NSInteger age;
@property (nonatomic,assign) ClassType classType;

@end
