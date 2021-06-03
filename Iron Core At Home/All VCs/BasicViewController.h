

#import <UIKit/UIKit.h>

#import "JTCalendar.h"
//#import "IQDropDownTextField.h"

@interface BasicViewController : UIViewController<JTCalendarDelegate,UITableViewDelegate,UITableViewDataSource>
{
    
 //   IBOutlet UISegmentedControl *segment;
    
    IBOutlet UITextField *txtFieldVisitReason;

    
//    IBOutlet IQDropDownTextField *selectCategory;
//    IBOutlet IQDropDownTextField *selectDate;
//    IBOutlet IQDropDownTextField *selectDateEnd;
    
    
    int Power;
    
}
@property (strong, nonatomic) NSMutableArray *arrData;
@property (weak, nonatomic) IBOutlet UITableView *tblView;

@property(nonatomic,strong)NSMutableArray *rowArr;

@property(nonatomic,strong)NSMutableDictionary *dicNew11;
@property(nonatomic,strong)NSMutableDictionary *dicNew11Others;


@property(nonatomic,strong)NSMutableArray *rowListVisits;
@property(nonatomic,strong)NSMutableArray *rowListVisitsOthers;
@property(nonatomic,strong)NSString *strNewDate;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segment;

@property (weak, nonatomic) IBOutlet JTCalendarMenuView *calendarMenuView;
@property (weak, nonatomic) IBOutlet JTHorizontalCalendarView *calendarContentView;

@property (strong, nonatomic) JTCalendarManager *calendarManager;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *calendarContentViewHeight;


@property (weak, nonatomic) IBOutlet UIView *ViewAdvanceSearch;

//HERE
@property (strong, nonatomic) IBOutlet UISegmentedControl * segmentConditionSeverity;
@property (strong, nonatomic) IBOutlet UISegmentedControl * segmentObservation;

@property (strong, nonatomic) NSString * strConditionSeverity;
@property (strong, nonatomic) NSString * strObservation;



@property (strong, nonatomic) NSString * strMustafaRocks;
@property (strong, nonatomic) NSMutableArray *AllMustafaEvents;
@property (strong, nonatomic) NSMutableArray *AllMustafaEventsName;
@property (strong, nonatomic) NSMutableArray *AllMustafaEventsDates;

//HERE END SEGMENT

@property (strong, nonatomic)IBOutlet UIView *VwDetails11;
@property (strong, nonatomic) IBOutlet UILabel *lblDueDate;
@property (strong, nonatomic) IBOutlet UILabel *lblConciveDate;
@property (strong, nonatomic) IBOutlet UILabel *lblLastPeriod;
@property (strong, nonatomic) IBOutlet UILabel *lblHeartBeat;
@property (strong, nonatomic) IBOutlet UILabel *lblFeelTheSound;
@property (strong, nonatomic) IBOutlet UILabel *lblFeelTheLight;
@property (strong, nonatomic) IBOutlet UILabel *lblSexDetermination;

//@property (strong, nonatomic) IBOutlet UILabel *lblDueDate;

@property(nonatomic,strong)NSMutableArray *Baby;


@property (strong, nonatomic) IBOutlet UIButton *btn99;


@end
