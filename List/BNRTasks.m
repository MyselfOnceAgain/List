//
//  BNRTasks.m
//  List
//
//  Created by LALALATT on 16/10/12.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "BNRTasks.h"
#import "Task.h"

@interface BNRTasks()<UITableViewDataSource,UITableViewDelegate>

//@property NSMutableArray * allTasks;

@end

@implementation BNRTasks

- (void)viewDidLoad{
    [super viewDidLoad];
   /* _allTasks = @[@"task1",@"task2",
                  @"task3",@"task4",
                  @"task5",@"task6"];*/
    
    
}

/*- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //NSLog(@"Have Done");
    return 3;
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //NSArray *tasks =  _allTasks[section];
    
    return [[[Task sharedTasks] allTasks]count] ;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title;
    if (section == 0) {
        title = @"Part1";
    }/* else if (section == 1) {
        title = @"Part2";
    }else {
        title = @"Part3";
    }*/
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   /* NSString *flag;
    if (indexPath.section == 0) {
        flag = @"cell0";
    } else if (indexPath.section == 1){
        flag = @"cell1";
    }else{
        flag = @"cell2";
    }*/
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell0" forIndexPath:indexPath];
    NSArray *items = [[Task sharedTasks] allTasks];
    cell.textLabel.text = items[indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[Task sharedTasks] removeTask:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


@end
