//
//  Task.h
//  List
//
//  Created by LALALATT on 16/10/13.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

+ (instancetype)sharedTasks;

- (instancetype)init;

- (void)removeTask:(NSInteger)i;

@property (nonatomic) NSArray *allTasks;

@end
