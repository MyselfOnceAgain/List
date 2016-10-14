//
//  TeacherRemark.m
//  List
//
//  Created by LALALATT on 16/10/13.
//  Copyright © 2016年 Big Nerd Ranch. All rights reserved.
//

#import "TeacherRemark.h"

@interface TeacherRemark ()
@property (weak, nonatomic) IBOutlet UISlider *s1;
@property (weak, nonatomic) IBOutlet UISlider *s2;
@property (weak, nonatomic) IBOutlet UISlider *s3;
@property (weak, nonatomic) IBOutlet UITextField *t1;
@property (weak, nonatomic) IBOutlet UITextField *t2;
@property (weak, nonatomic) IBOutlet UITextField *t3;

@end

@implementation TeacherRemark

- (void)viewDidLoad {
    [super viewDidLoad];
    _t1.text = [[NSString alloc] initWithFormat:@"%.1f",_s1.value];
    _t2.text = [[NSString alloc] initWithFormat:@"%.1f",_s2.value];
    _t3.text = [[NSString alloc] initWithFormat:@"%.1f",_s3.value];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChange:(UISlider *)sender
{
    float v = sender.value;
    if (sender == _s1)
    {
        _t1.text = [NSString stringWithFormat:@"%.1f",v];
    }
    else if (sender == _s2)
    {
        _t2.text = [NSString stringWithFormat:@"%.1f",v];
    }
    else
    {
        _t3.text = [NSString stringWithFormat:@"%.1f",v];
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
