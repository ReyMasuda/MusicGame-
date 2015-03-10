//
//  ViewController.m
//  TechMusicGame
//
//  Created by ReyMasuda on 2015/03/10.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    time = 0.0;
    
    timeLabel.text = [NSString stringWithFormat:@"%.2f",time];
    hanteiLabel.text = @"";
    
    //タイマーを再生する(upメソッドを0.01秒に1度呼び出す)
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                             target:self
                                           selector:@selector(up)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)up{
    time +=0.01;
    timeLabel.text = [NSString stringWithFormat:@"%.2f",time];
}

@end
