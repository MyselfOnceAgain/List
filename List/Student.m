//
//  Student.m
//  List
//
//  Created by LALALATT on 16/10/13.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _allStudents =  @[@"张三",@"李四",@"王五",@"赵六",@"郑七"];
    }
    return self;
}


@end
