//
//  ViewController.m
//  Pr1SimpleStopWatch
//
//  Created by Friday on 16/7/5.
//  Copyright © 2016年 Friday. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
}
@property (nonatomic) float time;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.time = 0.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reset:(UIButton *)sender {
    self.time = 0.0;
    [timer invalidate];
    self.btnCause.enabled=NO;
    self.btnStart.enabled=YES;
}

- (IBAction)start:(UIButton *)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    [timer fire];
    self.btnStart.enabled=NO;
    self.btnCause.enabled=YES;
}

- (IBAction)cause:(UIButton *)sender {
    [timer invalidate];
    self.btnStart.enabled=YES;
    self.btnCause.enabled=NO;
}

-(void)updateTime {
    self.time = self.time+0.1;
}

-(void)setLblTime:(UILabel *)lblTime {
    lblTime.adjustsFontSizeToFitWidth = YES;
    _lblTime = lblTime;
}

-(void)setTime:(float)time {
    _time = time;
    self.lblTime.text = [NSString stringWithFormat:@"%.1f",_time];
}
@end
