//
//  Task.m
//  List
//
//  Created by LALALATT on 16/10/13.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "Task.h"

@interface Task()

@property (nonatomic) NSMutableArray *privateTasks;

@end

@implementation Task

+ (instancetype)sharedTasks
{
    static Task *task;
    if (!task) {
        task = [[Task alloc] init];
    }
    return task;
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.privateTasks = [[NSMutableArray alloc] init];
        self.privateTasks =@[@"task1",@"task2",
                     @"task3",@"task4",
                     @"task5",@"task6"
                     ];
    }
    return self;
}

- (NSArray *)allTasks
{
    return [self.privateTasks copy];
}

- (void)removeTask:(NSInteger)i
{
    NSLog(@"Wrong");
    [self.privateTasks removeObjectAtIndex:i];
}


@end
