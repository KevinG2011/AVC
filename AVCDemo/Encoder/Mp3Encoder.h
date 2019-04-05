//
//  Mp3Encoder.h
//  AVCDemo
//
//  Created by lijia on 2019/4/3.
//  Copyright © 2019 MJHF. All rights reserved.
//

#pragma once

#include <stdio.h>
#include "lame.h"

class Mp3Encoder {
public:
    Mp3Encoder();
    virtual ~Mp3Encoder() {};
    int Init(const char* pcmFilePath, const char *mp3FilePath,int sampleRate, int channels, int bitRate);
    void Encode();
    void Destory();
    
private:
    FILE* pcmFile;
    FILE* mp3File;
    lame_t lameClient;
};


