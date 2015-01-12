//
//  ViewController.h
//  SoundPlayAlcohal
//
//  Created by Takemi Watanuki on 2015/01/04.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *test01;
    
    
}
@property AVAudioPlayer *guitar_soundA;
//@property soundid *guitar_soundA;


-(IBAction)play;


@end

