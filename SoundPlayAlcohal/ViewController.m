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
    

}

-(IBAction)boom {
    { // 音楽ファイルの読み込み
        NSString *path=[[NSBundle mainBundle] pathForResource:@"seikai" ofType:@"mp3"];
        NSURL *url=[NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound_2);
    }
    // 0~20までランダムに数字を生成する。
    
    
    
    AudioServicesPlaySystemSound(sound_1);
    actionNumber=arc4random() % 60 + 1;[
    label.text=[NSString stringWithFormat:@"%d", actionNumber];
    
    //　ランダムの配列
    if (actionNumber == 1) {
        label.text=questionArray[0];
        label.textColor=[UIColor redColor];
        //音楽ファイルの再生
        AudioServicesPlaySystemSound(testSound02);
    }
    else {
        label.text=@"それ以外";
        label.textColor=[UIColor darkGrayColor];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
