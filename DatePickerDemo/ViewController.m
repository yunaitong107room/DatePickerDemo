//
//  ViewController.m
//  DatePickerDemo
//
//  Created by Naitong Yu on 15/8/4.
//  Copyright (c) 2015年 107间. All rights reserved.
//

#import "ViewController.h"
#import "NYDatePicker.h"

@interface ViewController ()

@property (nonatomic) NYDatePicker *picker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat margin = 30;
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    self.picker = [[NYDatePicker alloc] initWithFrame:CGRectMake(margin, 3 * margin, screenWidth - 2* margin, 150)];
    [self.picker setDateDidChangeHandler:^(NSDate *date) {
        NSLog(@"%@", date);
    }];
    self.picker.color = [UIColor greenColor];
    [self.view addSubview:self.picker];
    

    
}

- (IBAction)clicked:(UIButton *)sender {
    self.picker.date = [NSDate date];
}


@end
