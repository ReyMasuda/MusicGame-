//
//  ViewController.h
//  TechMusicGame
//
//  Created by ReyMasuda on 2015/03/10.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel *timeLabel;
    IBOutlet UILabel *hanteiLabel;
    
    float time;
    
    NSTimer *timer;
}

-(IBAction)pushBt;

-(void)up;


@end

