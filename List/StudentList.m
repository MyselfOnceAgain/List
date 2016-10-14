//
//  StudentList.m
//  List
//
//  Created by LALALATT on 16/10/12.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "StudentList.h"

@interface StudentList()

@property NSArray * allStudent;

@end

@implementation StudentList

- (void)viewDidLoad
{
    [super viewDidLoad];
    _allStudent = @[@"张三",@"李四",@"王五",@"赵六",@"郑七"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _allStudent.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"List" forIndexPath:indexPath];
    cell.textLabel.text = _allStudent[indexPath.row];
    return cell;
}

@end
