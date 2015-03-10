//
//  ViewController.h
//  TechMusicGame
//
//  Created by ReyMasuda on 2015/03/10.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *hanteiLabel;
    
    float time;
    NSTimer *timer;
    
    float speed;
    UILabel *label;
    
    AVAudioPlayer *audio;
}

-(IBAction)pushBt;

-(void)up;

-(NSString *)hantei:(float)number;


@end

