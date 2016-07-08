//
//  ViewController.m
//  Pr2CustomFont
//
//  Created by Friday on 16/7/8.
//  Copyright © 2016年 Friday. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int fontIndex;
    NSMutableArray *arrFont;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //遍历所有字体名称
    arrFont = [[NSMutableArray alloc] init];
    for (NSString *familyName in [UIFont familyNames]) {
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]) {
            NSLog(@"%@",fontName);
            [arrFont addObject:fontName];
        }
    }
    fontIndex=0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeFont:(UIButton *)sender {
    
    for (int i=0; i<arrFont.count; i++) {
        if (i==fontIndex) {
            [self.lbl setFont:[UIFont fontWithName:arrFont[i] size:27]];
            break;
        }
    }
    fontIndex++;
    if (fontIndex == arrFont.count) {
        fontIndex=0;
    }
}
@end
