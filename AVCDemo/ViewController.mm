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
    // Do any additional setup after loading the view.
    Mp3Encoder *encoder = new Mp3Encoder();
    delete encoder;
}

- (IBAction)startEncode:(id)sender {
    NSLog(@"startEncode");
}

@end
