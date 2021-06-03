//
//  Step5ViewController.m
//  Iron Core At Home
//
//  Created by Apple on 7/8/20.
//  Copyright © 2020 mhjy. All rights reserved.
//

#import "Step5ViewController.h"

#import "UIImage+animatedGIF.h"

@interface Step5ViewController ()
{
    int count;

}
@end

@implementation Step5ViewController

-(void)LoadGifss
{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"5" withExtension:@"gif"];
    UIImage *testImage = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]];
    self.variableDurationImageView.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]];
    self.variableDurationImageView.animationImages = testImage.images;
    self.variableDurationImageView.animationDuration = testImage.duration;
    self.variableDurationImageView.animationRepeatCount = 0;
    self.variableDurationImageView.image = testImage.images.lastObject;
    [self.variableDurationImageView startAnimating];
    
}


-(void)viewWillLayoutSubviews
{
    
    _btn11.layer.cornerRadius=_btn11.frame.size.height/2;
    _btn11.clipsToBounds=YES;
    
}

-(void) StartTimer
{
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTick:) userInfo:nil repeats:YES];
    // [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    
}

- (void)timerTick:(NSTimer *)timer
{
    
    
    self.title=[NSString stringWithFormat:@"Remaining Time :%i",count];
    
    //    count--;
    if(count==0)
    {
        
        self.title=[NSString stringWithFormat:@"Step 5 Completed"];
        
        
        //        self.title=[NSString stringWithFormat:@"Remoaning Time :%i",count];
        [timer invalidate];
        
        _btn11.hidden=NO;
        
        
    }
    count--;
    
    
}


//Call this to stop the timer event(could use as a 'Pause' or 'Reset')
- (void) StopTimer
{
    //    [timer invalidate];
    //    timer=nil;
    //    timeSec = 0;
    //    timeMin = 0;
    //    //Since we reset here, and timerTick won't update your label again, we need to refresh it again.
    //    //Format the string in 00:00
    //    NSString* timeNow = [NSString stringWithFormat:@"%02d:%02d", timeMin, timeSec];
    //    //Display on your label
    //    // [timeLabel setStringValue:timeNow];
    //    self.lblForTimer.text= timeNow;
    //
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    
    _btn11.hidden=YES;
    
    count=10;
    
    [self LoadGifss];
    [self StartTimer];

}
@end
