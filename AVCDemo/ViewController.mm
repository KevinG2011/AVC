//
//  ViewController.m
//  AVCDemo
//
//  Created by lijia on 2019/4/3.
//  Copyright © 2019 MJHF. All rights reserved.
//

#import "ViewController.h"
#include "Mp3Encoder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)startEncode:(id)sender {
    NSLog(@"startEncode");
    NSString *pcmFilePath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent: @"vocal.pcm"];
    NSString *docDirPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *mp3FilePath = [docDirPath stringByAppendingPathComponent:@"vocal.mp3"];
    NSLog(@"%@",[[NSBundle mainBundle] bundlePath]);
    Mp3Encoder *encoder = new Mp3Encoder();
    int sampleRate = 44100;
    int channels = 2;
    int bitRate = 128 * 1024;
    encoder->Init(pcmFilePath.UTF8String, mp3FilePath.UTF8String, sampleRate, channels, bitRate);
    encoder->Encode();
    encoder->Destory();
    delete encoder;
    NSLog(@"Encode success");
}

@end
