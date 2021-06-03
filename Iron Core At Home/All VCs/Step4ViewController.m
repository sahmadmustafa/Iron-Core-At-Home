//
// 

#import "Step4ViewController.h"
#import "UIImage+animatedGIF.h"

#import "BasicViewController.h"


@interface Step4ViewController ()
{
    
    int count;

    
}
@end

@implementation Step4ViewController

-(void)LoadGifss
{
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"4" withExtension:@"gif"];
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
        
        self.title=[NSString stringWithFormat:@"Step 4 Completed"];
        
        
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


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


//-(IBAc)


-(IBAction)calendar:(id)sender
{
    
    
    NSDateFormatter* df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSString *resultNew = [df stringFromDate:[NSDate date]];

    NSMutableArray *arr=[[NSMutableArray alloc]init];
    if([[NSUserDefaults standardUserDefaults]objectForKey:@"ListOfEvents"]!=nil)
    {
        arr=[[[NSUserDefaults standardUserDefaults]objectForKey:@"ListOfEvents"] mutableCopy];
    }
    [arr addObject:resultNew];

    [[NSUserDefaults standardUserDefaults]setObject:[arr copy] forKey:@"ListOfEvents"];
    [[NSUserDefaults standardUserDefaults] synchronize];

    //    NSMutableArray *arr=
    
    
    
    BasicViewController *menuController = [[BasicViewController alloc]initWithNibName:@"BasicViewController" bundle:[NSBundle mainBundle]];
    
    
 //   menuController.strMustafaRocks=selectDate.selectedItem;
    
    [self.navigationController pushViewController:menuController animated:YES];
    
//    NSString *strkaka=    [_arrBabaG objectAtIndex:98];
//    NSLog(@"%@",strkaka);

    
}

-(IBAction)DoneCompleted:(id)sender
{

  //  self.navi
    
//    self.naviga
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
