//
//  ViewController.m
//  SoundPlayAlcohal
//
//  Created by Takemi Watanuki on 2015/01/04.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *pathA = [[NSBundle mainBundle] pathForResource:@"sos" ofType:@"m4a"];
    NSURL *url = [NSURL fileURLWithPath:pathA];

//    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, & self.guitar_soundA);
//    AudioServicesPlaySystemSound(self.guitar_soundA);
    
    self.guitar_soundA = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];

}

-(IBAction)boom {
    [self.guitar_soundA play];
}
-(IBAction)stop{
    [self.guitar_soundA pause];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
