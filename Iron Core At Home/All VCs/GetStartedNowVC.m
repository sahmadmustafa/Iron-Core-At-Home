

#import "GetStartedNowVC.h"
#import "BasicViewController.h"

@interface GetStartedNowVC ()

@end

@implementation GetStartedNowVC

-(IBAction)GoToViewCalendar:(id)sender
{
    
    BasicViewController *menuController = [[BasicViewController alloc]initWithNibName:@"BasicViewController" bundle:[NSBundle mainBundle]];
    
    
    //   menuController.strMustafaRocks=selectDate.selectedItem;
    
    [self.navigationController pushViewController:menuController animated:YES];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.title=@"Home";
}

-(void)viewWillLayoutSubviews
{

    _btn1.layer.cornerRadius=_btn1.frame.size.height/2;
    _btn1.clipsToBounds=YES;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
