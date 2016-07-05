//
//  ViewController.h
//  Pr1SimpleStopWatch
//
//  Created by Friday on 16/7/5.
//  Copyright © 2016年 Friday. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTime;
- (IBAction)reset:(UIButton *)sender;
- (IBAction)start:(UIButton *)sender;
- (IBAction)cause:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnStart;
@property (weak, nonatomic) IBOutlet UIButton *btnCause;

@end

