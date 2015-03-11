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
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    label.text = @""; //最初はテキストを消しておく
    
    label.font = [UIFont systemFontOfSize:50]; //フォントサイズは50px
    
    [label setBackgroundColor:[UIColor clearColor]]; //背景色を透明にする
    
    [self.view addSubview:label]; //ビューにlabelを追加する
    
    //画面サイズから、落とすラベルのスピードを決定する
    CGRect appFrame =[[UIScreen mainScreen]applicationFrame];
    speed = appFrame.size.height / 1.2;
    
    //音楽を再生する
    NSString *path = [[NSBundle mainBundle] pathForResource:@"01 Rage (Original Mix)" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    audio = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    [audio play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)up{
    time +=0.01;
    timeLabel.text = [NSString stringWithFormat:@"%.2f",time];
    
    if (10.0 - 1.2 <= time) {
        label.text = @"◼︎";
        float y = (time - 10.0 + 1.2) * speed - 75;
        label.frame = CGRectMake(135, y, 50, 50);
    }
}

-(NSString *)hantei:(float)number{
    if (time >= number - 0.05 && time <= number + 0.05) {
        return @"PERFECT!!";
    }else if (time >= number - 0.10 && time <= number +0.10){
        return @"GREAT!";
    }else if (time >= number - 0.15 && time <= number +0.15){
        return @"GOOD";
    }else{
        return @"BAD";
    }
}

-(IBAction)pushBt{
    hanteiLabel.text = [self hantei:10.0]; //ボタンを押すべきタイミング(秒)
}
@end
