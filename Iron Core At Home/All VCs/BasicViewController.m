

#import "BasicViewController.h"
//#import "HomeVC.h"
//#import "SubCategoryTableViewCell.h"
#import "FTIndicator.h"
//#import "ListEncounterViewController.h"

//#import "IQDropDownTextField.h"
//#import "tabBarViewController.h"

@interface BasicViewController (){
    NSMutableDictionary *_eventsByDate;
    
    NSDate *_todayDate;
    NSDate *_minDate;
    NSDate *_maxDate;
    
    NSDate *_dateSelected;
}

@end

@implementation BasicViewController



-(IBAction)backToWelcomeScreen:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}


-(NSString *)formetNew:(NSString *)date
{
    
    if([date isEqualToString: @"unknown"])
    {
        //        _lbldateTime.text=@"unknown";
        
        return @"unknown";
    }
    else
    {
        NSArray *items = [date componentsSeparatedByString:@"T"];
        return [items objectAtIndex:0];
    }
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(!self)
    {
        return nil;
    }
    
    self.title = @"Iron Core Calendar";
    
    return self;
}
-(IBAction)SearchButton:(id)sender
{
//    _ViewAdvanceSearch.hidden=NO;

    _VwDetails11.hidden=NO;
    
    NSString *styr=[_Baby objectAtIndex:29];
    NSLog(@"%@",styr);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _VwDetails11.hidden=YES;

    Power=99;
    
  //Mustafa here
//    _strMustafaRocks=@"2020-02-09";
    
//    _strNewDate=@"2020-02-09";
    
//    _lblLastPeriod.text=
    
    
    _AllMustafaEventsName=[[NSMutableArray alloc]initWithObjects:@"Last Period",@"Estimated Conception Day",@"Estimated Conception Day",@"Estimated Baby Heart Beating",@"Baby may feel the light",@"Baby sex may be determined",@"Baby may feel the sounds",@"Delivery Due Date", nil];
    
    
    _strConditionSeverity=@"ALL";
    _strObservation=@"ALL";
    
    
//    UIToolbar *toolbar = [[UIToolbar alloc] init];
//    [toolbar setBarStyle:UIBarStyleBlackTranslucent];
//    [toolbar sizeToFit];
//    UIBarButtonItem *buttonflexible = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    UIBarButtonItem *buttonDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneClicked:)];
//
//    [toolbar setItems:[NSArray arrayWithObjects:buttonflexible,buttonDone, nil]];
//    selectDate.inputAccessoryView = toolbar;
//
//    [selectDate setDropDownMode:IQDropDownModeDatePicker];
//    NSDateFormatter *dateFormatter988 = [[NSDateFormatter alloc] init];
//    [dateFormatter988 setDateFormat:@"yyyy-MM-dd"];
//
//    selectDate.dateFormatter=dateFormatter988;
//
//    ///HERE SECOND
//
//    [toolbar setItems:[NSArray arrayWithObjects:buttonflexible,buttonDone, nil]];
//    selectDateEnd.inputAccessoryView = toolbar;
//
//    [selectDateEnd setDropDownMode:IQDropDownModeDatePicker];
//    NSDateFormatter *dateFormatter98899 = [[NSDateFormatter alloc] init];
//    [dateFormatter98899 setDateFormat:@"yyyy-MM-dd"];
//
//    selectDateEnd.dateFormatter=dateFormatter98899;
//
//    //END
//    selectCategory.inputAccessoryView = toolbar;
//    [selectCategory setDropDownMode:IQDropDownModeTextPicker];
//    selectCategory.isOptionalDropDown = NO;
//    [selectCategory setItemList:[NSArray arrayWithObjects:@"All Locations",@"Johns Hopkins Medicine Facility",@"Rockford Memorial Hospital",@"Baseline East Medical Center, BE Hospital, BE Cardiology",@"Mary Greeley Medical Center", nil]];
//
//
    
    _ViewAdvanceSearch.hidden=YES;
    
    _rowListVisitsOthers=[NSMutableArray new];
    _rowListVisits=[NSMutableArray new];
    
    UIBarButtonItem *searchbutton =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(SearchButton:)];
//    self.navigationItem.rightBarButtonItem =searchbutton;
//    UIBarButtonItem *List2 =[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(SearchButton:)];

    
    UIImage* image3 = [UIImage imageNamed:@"list22"];
    CGRect frameimg = CGRectMake(0, 0, image3.size.width, image3.size.height);
    UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
    [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
    [someButton addTarget:self action:@selector(SearchButton:)
         forControlEvents:UIControlEventTouchUpInside];
    [someButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *mailbutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
    
    
    
    UIBarButtonItem *_btn11=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"list22"]
                                                          style:UIBarButtonItemStylePlain
                                                         target:self
                                                           action:@selector(ListingEncounter)];
    
    
    
//    anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(DonePressed)];
    
    self.navigationItem.rightBarButtonItems =
    [NSArray arrayWithObjects:mailbutton, nil];
    
    
    //catagori
    
    
    [self.tblView registerNib:[UINib nibWithNibName:@"SubCategoryTableViewCell" bundle:nil] forCellReuseIdentifier:@"SubCategoryTableViewCell"];
    
    
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Procedure",@"title",@"procedureee.png",@"image", nil]];
    
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Medications",@"title",@"medications.png",@"image", nil]];
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Conditions",@"title",@"Conditions.png",@"image", nil]];
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Allergy",@"title",@"allergy-icon.png",@"image", nil]];
    
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Immunization",@"title",@"immunization.jpg",@"image", nil]];
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Observations",@"title",@"obsss.png",@"image", nil]];
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Vitals",@"title",@"Vital.png",@"image", nil]];
    [_arrData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Encounter",@"title",@"Vital.png",@"image", nil]];

    [_tblView reloadData];
    
//    UISegmentedControl *segment = (UISegmentedControl *)[cell viewWithTag:100];
    [_segment setTitle:[@"TODAY" uppercaseString] forSegmentAtIndex:0];
    [_segment setTitle:[@"WEEKLY" uppercaseString] forSegmentAtIndex:1];
    [_segment setTitle:[@"MONTHLY" uppercaseString] forSegmentAtIndex:2];
  //  [_segment setTitle:[@"LAST YEAR" uppercaseString] forSegmentAtIndex:3];

    [_segment addTarget:self action:@selector(SegmentButton:) forControlEvents: UIControlEventValueChanged];
    
    
    _rowArr=[NSMutableArray new];
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Encounters2" ofType:@"json"];
//
//    // Load the file into an NSData object called JSONData
//
//    NSError *error = nil;
//
//    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
//
//    // Create an Objective-C object from JSON Data
//
//    id JSONObject = [NSJSONSerialization
//                     JSONObjectWithData:JSONData
//                     options:NSJSONReadingAllowFragments
//                     error:&error];
// //   NSLog(@"JSONObject=%@",JSONObject);
//    _rowArr=[[JSONObject objectForKey:@"entry"]mutableCopy];
//    NSLog(@"Dic=%@",_rowArr);

    
    _calendarManager = [JTCalendarManager new];
    _calendarManager.delegate = self;
    
    // Generate random events sort by date using a dateformatter for the demonstration
    [self createRandomEvents];
    [self GetAllPregnancy];
    // Create a min and max date for limit the calendar, optional
    [self createMinAndMaxDate];
    
//    lblFeelTheSound;

//    _lblLastPeriod.text=_strMustafaRocks;
//    _lblConciveDate.text=[_AllMustafaEventsDates objectAtIndex:2];
//    _lblHeartBeat.text=[_AllMustafaEventsDates objectAtIndex:3];
//    _lblFeelTheLight.text=[_AllMustafaEventsDates objectAtIndex:4];
//    _lblSexDetermination.text=[_AllMustafaEventsDates objectAtIndex:5];
//    _lblFeelTheSound.text=[_AllMustafaEventsDates objectAtIndex:6];
//    _lblDueDate.text=[_AllMustafaEventsDates objectAtIndex:7];

    
    
    [_calendarManager setMenuView:_calendarMenuView];
    [_calendarManager setContentView:_calendarContentView];
    [_calendarManager setDate:_todayDate];
    

    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    [[NSNotificationCenter defaultCenter]
     postNotificationName:@"TestNotificationHide"
     object:self];
    
    
    if (@available(iOS 11.0, *))
    {
        self.navigationController.navigationBar.prefersLargeTitles=NO;
    }
    else
    {
        // Fallback on earlier versions
    }
    
    
    _Baby=[[NSMutableArray alloc]initWithObjects:@"Diocleciano",@"(nombre",@"completo",@"",@"Cayo",@"Aurelio",@"Valerio",@"Diocleciano",@"Augusto",@"",@"en",@"latín:",@"Gaius",@"Aurelius",@"Valerius",@"Diocletianus",@"Augustus)",@"(c.",@"24",@"de",@"diciembre",@"de",@"244-3",@"de",@"diciembre",@"de",@"311)",@"",@"nacido",@"con",@"el",@"nombre",@"de",@"Diocles",@"",@"fue",@"emperador",@"de",@"Roma",@"desde",@"el",@"20",@"de",@"noviembre",@"de",@"284",@"hasta",@"el",@"1",@"de",@"mayo",@"de",@"305.",@"Nacido",@"en",@"una",@"familia",@"iliria",@"de",@"bajo",@"estatus",@"social",@"",@"fue",@"escalando",@"puestos",@"en",@"la",@"jerarquía",@"militar",@"hasta",@"convertirse",@"en",@"el",@"comandante",@"de",@"la",@"caballería",@"del",@"emperador",@"Caro.",@"Tras",@"la",@"muerte",@"de",@"Caro",@"y",@"de",@"su",@"hijo",@"Numeriano",@"en",@"campaña",@"en",@"Persia",@"",@"Diocleciano",@"fue",@"aclamado",@"emperador",@"por",@"el",@"ejército.",@"Consiguió",@"acceder",@"al",@"trono",@"tras",@"un",@"breve",@"enfrentamiento",@"con",@"Carino",@"",@"el",@"otro",@"hijo",@"del",@"emperador",@"Caro",@"",@"en",@"la",@"batalla",@"del",@"Margus",@"",@"y",@"su",@"llegada",@"al",@"poder",@"puso",@"fin",@"a",@"la",@"crisis",@"del",@"siglo",@"iii.",@"Diocleciano",@"nombró",@"a",@"Maximiano",@"coemperador",@"",@"otorgándole",@"el",@"título",@"de",@"Augusto",@"de",@"occidente",@"en",@"285.",@"El",@"1",@"de",@"marzo",@"de",@"293",@"nombró",@"a",@"Galerio",@"y",@"a",@"Constancio",@"como",@"césares",@"",@"un",@"título",@"similar",@"al",@"de",@"príncipe",@"o",@"heredero",@"del",@"augusto.",@"Este",@"nuevo",@"régimen",@"",@"conocido",@"como",@"la",@"tetrarquía",@"",@"o",@"«gobierno",@"de",@"cuatro»",@"",@"implicaba",@"que",@"el",@"gobierno",@"del",@"imperio",@"se",@"repartía",@"geográficamente",@"entre",@"los",@"cuatro",@"gobernantes.",@"En",@"un",@"movimiento",@"que",@"seguía",@"la",@"tendencia",@"del",@"siglo",@"iii",@"hacia",@"el",@"absolutismo",@"",@"Diocleciano",@"amoldó",@"su",@"figura",@"a",@"la",@"de",@"un",@"autócrata",@"",@"elevándose",@"por",@"encima",@"de",@"las",@"masas",@"e",@"imponiendo",@"formas",@"ceremoniales",@"y",@"arquitectónicas",@"hacia",@"la",@"corte.",@"El",@"dolmen",@"de",@"Sorginetxe",@"(en",@"español:",@"«casa",@"de",@"las",@"brujas»)",@"se",@"ubica",@"en",@"la",@"localidad",@"alavesa",@"de",@"Arrizala",@"en",@"Euskadi.",@"Los",@"dólmenes",@"son",@"estructuras",@"megalíticas",@"a",@"las",@"que",@"se",@"les",@"atribuye",@"funciones",@"funerarias.",@"El",@"Gobierno",@"Vasco",@"hasta",@"2018",@"ha",@"declarado",@"dieciséis",@"dólmenes",@"alaveses",@"como",@"Bien",@"de",@"Interés",@"Cultural",@"en",@"la",@"categoría",@"de",@"Conjunto",@"Monumental.",@"El",@"dolmen",@"de",@"Sorginetxe",@"fue",@"descubierto",@"en",@"1831",@"y",@"se",@"estima",@"que",@"fue",@"construido",@"alrededor",@"del",@"2500",@"a.",@"C.",@"Diocleciano",@"(nombre",@"completo:",@"Cayo",@"Aurelio",@"Valerio",@"Diocleciano",@"Augusto",@"2",@"en",@"latín",@"",@"Gaius",@"Aurelius",@"Valerius",@"Diocletianus",@"Augustus",@"",@"c.",@"24",@"de",@"diciembre",@"de",@"2443",@"-3",@"de",@"diciembre",@"de",@"311)",@"4",@"nacido",@"con",@"el",@"nombre",@"de",@"Diocles",@"",@"fue",@"emperador",@"de",@"Roma",@"desde",@"el",@"20",@"de",@"noviembre",@"de",@"284",@"hasta",@"el",@"1",@"de",@"mayo",@"de",@"305.",@"Nacido",@"en",@"una",@"familia",@"iliria",@"de",@"bajo",@"estatus",@"social",@"",@"fue",@"escalando",@"puestos",@"en",@"la",@"jerarquía",@"militar",@"hasta",@"convertirse",@"en",@"el",@"comandante",@"de",@"la",@"caballería",@"del",@"emperador",@"Caro.",@"Tras",@"la",@"muerte",@"de",@"Caro",@"y",@"de",@"su",@"hijo",@"Numeriano",@"en",@"campaña",@"en",@"Persia",@"",@"Diocleciano",@"fue",@"proclamado",@"emperador",@"por",@"el",@"ejército.",@"Consiguió",@"acceder",@"al",@"trono",@"tras",@"un",@"breve",@"enfrentamiento",@"con",@"Carino",@"",@"el",@"otro",@"hijo",@"del",@"emperador",@"Caro",@"",@"en",@"la",@"batalla",@"del",@"Margus",@"",@"y",@"su",@"llegada",@"al",@"poder",@"puso",@"fin",@"a",@"la",@"crisis",@"del",@"siglo",@"III.",@"Diocleciano",@"nombró",@"a",@"Maximiano",@"coemperador",@"",@"otorgándole",@"el",@"título",@"de",@"Augusto",@"de",@"occidente",@"en",@"285.",@"El",@"1",@"de",@"marzo",@"de",@"293",@"nombró",@"a",@"Galerio",@"y",@"a",@"Constancio",@"como",@"césares",@"",@"un",@"título",@"similar",@"al",@"de",@"príncipe",@"o",@"heredero",@"del",@"Augusto.",@"Este",@"nuevo",@"régimen",@"",@"conocido",@"como",@"la",@"tetrarquía",@"",@"o",@"«gobierno",@"de",@"cuatro»",@"",@"implicaba",@"que",@"el",@"gobierno",@"del",@"Imperio",@"se",@"repartía",@"geográficamente",@"entre",@"los",@"cuatro",@"gobernantes.",@"En",@"un",@"movimiento",@"que",@"seguía",@"la",@"tendencia",@"del",@"siglo",@"III",@"hacia",@"el",@"absolutismo",@"",@"Diocleciano",@"amoldó",@"su",@"figura",@"a",@"la",@"de",@"un",@"autócrata",@"",@"elevándose",@"por",@"encima",@"de",@"las",@"masas",@"e",@"imponiendo",@"formas",@"ceremoniales",@"y",@"arquitectónicas",@"hacia",@"la",@"corte.",@"Diocleciano",@"dirigió",@"campañas",@"militares",@"contra",@"las",@"tribus",@"sármatas",@"y",@"del",@"Danubio",@"(285-90)",@"",@"contra",@"los",@"alamanes",@"(288)",@"y",@"contra",@"usurpadores",@"en",@"Egipto",@"(297-98)",@"",@"asegurando",@"las",@"fronteras",@"del",@"imperio",@"y",@"eliminando",@"las",@"amenazas",@"contra",@"su",@"poder.",@"En",@"299",@"Diocleciano",@"dirigió",@"las",@"negociaciones",@"con",@"el",@"Imperio",@"sasánida",@"",@"el",@"enemigo",@"tradicional",@"del",@"Imperio",@"romano",@"",@"consiguiendo",@"una",@"paz",@"duradera",@"y",@"favorable.",@"Separó",@"y",@"aumentó",@"los",@"servicios",@"militares",@"y",@"civiles",@"que",@"los",@"ciudadanos",@"debían",@"prestar",@"al",@"Imperio",@"y",@"reorganizó",@"las",@"divisiones",@"provinciales",@"creando",@"el",@"gobierno",@"más",@"grande",@"y",@"más",@"burocratizado",@"de",@"la",@"historia",@"de",@"Roma",@"hasta",@"entonces.",@"Estableció",@"nuevos",@"centros",@"administrativos",@"en",@"Nicomedia",@"",@"Mediolano",@"",@"Antioquía",@"y",@"Tréveris",@"",@"puntos",@"más",@"cercanos",@"a",@"las",@"fronteras",@"de",@"lo",@"que",@"estaba",@"la",@"tradicional",@"capital",@"en",@"Roma.",@"El",@"crecimiento",@"burocrático",@"y",@"militar",@"",@"las",@"campañas",@"militares",@"constantes",@"y",@"los",@"proyectos",@"constructivos",@"incrementaron",@"el",@"gasto",@"del",@"estado",@"e",@"hicieron",@"necesaria",@"una",@"reforma",@"fiscal.",@"Al",@"menos",@"a",@"partir",@"del",@"año",@"297",@"el",@"sistema",@"impositivo",@"fue",@"estandarizado",@"de",@"forma",@"más",@"equitativa",@"y",@"con",@"tipos",@"impositivos",@"en",@"general",@"más",@"altos",@"que",@"los",@"que",@"habían",@"imperado",@"hasta",@"entonces.",@"Sin",@"embargo",@"",@"no",@"todas",@"sus",@"reformas",@"tuvieron",@"éxito.",@"Su",@"Edicto",@"sobre",@"Precios",@"Máximos",@"del",@"año",@"301",@"",@"norma",@"cuyo",@"objetivo",@"era",@"poner",@"fin",@"a",@"la",@"inflación",@"mediante",@"el",@"control",@"estatal",@"de",@"los",@"precios",@"",@"no",@"solo",@"no",@"tuvo",@"éxito",@"",@"sino",@"que",@"fue",@"contraproducente",@"y",@"rápidamente",@"ignorada.",@"Además",@"",@"y",@"aunque",@"fue",@"efectivo",@"mientras",@"Diocleciano",@"estuvo",@"al",@"mando",@"",@"el",@"sistema",@"de",@"la",@"tetrarquía",@"colapsó",@"en",@"el",@"momento",@"en",@"que",@"este",@"abdicó",@"",@"sustituyéndose",@"por",@"la",@"lucha",@"por",@"el",@"poder",@"entre",@"Majencio",@"y",@"Constantino",@"",@"hijos",@"",@"respectivamente",@"",@"de",@"Maximiano",@"y",@"Constancio.",@"La",@"Persecución",@"de",@"Diocleciano",@"que",@"tuvo",@"lugar",@"entre",@"los",@"años",@"303",@"y",@"311",@"se",@"convertiría",@"en",@"la",@"mayor",@"y",@"más",@"sangrienta",@"persecución",@"oficial",@"del",@"imperio",@"contra",@"los",@"cristianos",@"",@"pero",@"no",@"logró",@"su",@"objetivo",@"de",@"destruirlos.",@"Es",@"más",@"",@"a",@"partir",@"del",@"año",@"324",@"el",@"cristianismo",@"se",@"convirtió",@"en",@"la",@"religión",@"dominante",@"del",@"Imperio",@"bajo",@"el",@"gobierno",@"de",@"Constantino",@"I",@"el",@"Grande.",@"Sin",@"embargo",@"",@"a",@"pesar",@"de",@"sus",@"fracasos",@"",@"las",@"reformas",@"de",@"Diocleciano",@"cambiaron",@"de",@"forma",@"fundamental",@"la",@"estructura",@"del",@"gobierno",@"imperial",@"y",@"ayudaron",@"a",@"estabilizarlo",@"económica",@"y",@"militarmente",@"",@"permitiendo",@"que",@"el",@"Imperio",@"perdurase",@"más",@"de",@"cien",@"años",@"más",@"",@"cuando",@"había",@"estado",@"a",@"punto",@"de",@"colapsarse",@"pocos",@"años",@"antes.",@"Enfermo",@"y",@"debilitado",@"",@"Diocleciano",@"abdicó",@"el",@"1",@"de",@"mayo",@"de",@"305",@"",@"convirtiéndose",@"en",@"el",@"primer",@"emperador",@"romano",@"en",@"dejar",@"voluntariamente",@"su",@"cargo.",@"Desde",@"entonces",@"vivió",@"en",@"su",@"palacio",@"en",@"la",@"costa",@"de",@"Dalmacia",@"",@"dedicado",@"al",@"cultivo",@"de",@"sus",@"jardines",@"y",@"huertos.",@"Su",@"palacio",@"se",@"convertiría",@"en",@"el",@"núcleo",@"del",@"que",@"surgiría",@"la",@"actual",@"ciudad",@"de",@"Split",@"(Croacia).244.3",@"സുസ്",@"പാഡ്രെസ്",@"ലെ",@"ലാമറോൺ",@"Διοκλής",@"(ഡയോക്കിൾസ്)",@"",@"ഓ",@"പ്യൂഡ്",@"ക്യൂ",@"ഡയോക്കിൾസ്",@"വലേറിയോ",@"5",@"എൽ",@"ഹിസ്റ്റോറിയഡോർ",@"തിമോത്തി",@"ബാർനെസ്",@"കോമോ",@"പോസിബിൾ",@"ഫെച്ച",@"ഡി",@"നാസിമിയന്റോ",@"സു",@"കംപ്ലീഷ്യൻ‌",@"ഡി",@"ഡിസിംബ്രെ",@"",@"സി",@"ബിയാൻ",@"ഒട്രോസ്",@"ഹിസ്റ്റോറിയഡോർസ്",@"എസ്റ്റോൺ",@"ടാൻ",@"സെഗുറോസ്",@"ഡി",@"എല്ലോ",@"6",@"ലോസ്",@"പാഡ്രെസ്",@"ഡി",@"ഡയോക്ലെസിയാനോ",@"(ഡയോക്ലിസിലേക്ക്",@"പ്രവേശിക്കുന്നു)",@"ഇറാൻ",@"ഡി",@"ബജോ",@"എസ്റ്റാറ്റസ്",@"സോഷ്യൽ",@"",@"വൈ",@"ലോസ്",@"എസ്‌ക്രിറ്റോറസ്",@"ക്രറ്റികോസ്",@"കോൺ",@"സു",@"സു",@"ഗോബിയേർനോ",@"അഫിർമാൻ",@"ക്യൂ",@"സു",@"പാഡ്രെ",@"യുഗം",@"",@"",@"o",@"incluso",@"llegan",@"a",@"afirmar",@"que",@"el",@"propio",@"Diocles",@"era",@"él",@"mismo",@"un",@"liberto.",@"സുസ്",@"പ്രൈമറോസ്",@"ക്യൂറന്റാ",@"അയോസ്",@"ഡി",@"വിഡാ",@"മകൻ",@"മ്യു",@"ഓസ്ക്യൂറോസ്",@".7",@"എൽ",@"ക്രോണിസ്റ്റ",@"ബിസാന്റിനോ",@"ജുവാൻ",@"സോനാറസ്",@"അഫിർമ",@"ക്യൂ",@"എറ",@"എൽ",@"എൽ",@"ഡക്സ്",@"ഡി",@"മെസിയ",@"",@"8",@"ലോ",@"ക്യൂ",@"ഇക്വിവാൾഡ്രിയ",@"അ",@"അൺ",@"കോമണ്ടന്റേ",@"ഡി",@"ലാസ്",@"ഫ്യൂർസാസ്",@"അസെന്റഡാസ്",@"എൻ",@"എൽ",@"ബജോ",@"ഡാനൂബിയോ",@".9",@"പോർ",@"ഒട്രോ",@"ലഡോ",@"ലാ",@"ഹിസ്റ്റോറിയ",@"അഗസ്റ്റ",@"",@"ഹബ്രിയ",@"സെർവിഡോ",@"ടാംബിയൻ",@"എൻ",@"ലാ",@"ഗാലിയ",@"",@"പെറോ",@"സെ",@"ട്രാറ്റ",@"ഡി",@"അൺ",@"ഡാറ്റോ",@"പോക്കോ",@"ഫയബിൾ",@"പാരാ",@"ലോസ്",@"ഹിസ്റ്റോറിയഡോർസ്",@"മോഡേൺ‌സ്",@"",@"യാ",@"ക്യൂ",@"നോ",@"എസ്",@"കോറോബറാഡോ",@"പോർ",@"ഒട്രാസ്",@"ഫ്യൂണ്ടസ്",@".10",@"",@"അസെൻസോ",@"അൽ",@"പോഡർ",@"[എഡിറ്റർ]",@"മ്യുർട്ടെ",@"ഡി",@"ന്യൂമെരിയാനോ",@"[എഡിറ്റർ]",@"",@"മാപ",@"ഡെൽ",@"ഇംപെരിയോ",@"റൊമാനോ",@"സി.",@"400.",@"ലാ",@"മ്യുർട്ടെ",@"ഡെൽ",@"ചക്രവർത്തി",@"കരോ",@"എൻ",@"പ്ലീന",@"കാമ്പെയ്‌ൻ",@"കോൺട്രാ",@"എൽ",@"ഇംപെരിയോ",@"പെർസ",@"സൂപ്പർസോ",@"ലാ",@"ലലെഗഡ",@"അൽ",@"പോഡർ",@"ഡി",@"സുസ്",@"ഇംപോപ്പുലറസ്",@"ഹിജോസ്",@"",@"ന്യൂമെരിയാനോ",@"വൈ",@"കരിനോ.",@"കരിനോ",@"അവാൻ‌സ",@"ഡയറക്‌ട്മെൻറ്",@"ഹാസിയ",@"റോമ",@"ഡെസ്‌ഡെ",@"ലാ",@"ഗാലിയ",@"",@"ലെഗാൻഡോ",@"എൻ",@"എനെറോ",@"ഡി",@"284.",@"ന്യൂമെറിയാനോ",@"",@"പാപ",@"നിരോധനം",@"",@"പെർമെനെസിയ",@"അൽ",@"മാണ്ടോ",@"ഡെൽ",@"എജാർസിറ്റോ",@"എൻ",@"ലാ",@"പാർട്ട്",@"ഓറിയന്റൽ",@"ഡെൽ",@"ഇംപെരിയോ",@"",@"എൻ",@"ഡോണ്ടെ",@"സെ",@"എൻ‌കോൺ‌ട്രബ",@"തമ്പിയാൻ",@"എൻ‌",@"കാമ്പിയ",@"ജുന്തോ",@"എ",@"സു",@"പാഡ്രെ",@"പേർഷ്യ",@"സെ",@"റിയലിസ",@"ഡി",@"ഫോർമാ",@"ഓർഡെനാഡ",@"ഗ്രേസിയസ്",@"എ",@"ക്യൂ",@"എൽ",@"റേ",@"പെർസ",@"ബഹ്‌റാം",@"II",@"സെ",@"എൻ‌കോൺ‌ട്രാബ",@"എൻ‌",@"പ്ലീന",@"ലൂച്ച",@"പോർ",@"എസ്റ്റാബ്ലെസർ",@"സു",@"ഓട്ടോറിഡാഡ്",@"വൈ",@"നോ",@"പോഡിയ",@"എൻ‌വിയാർ",@"സസ്",@"ഫ്യൂർ‌സാസ്",@"കോൺ‌ട്രാ",@"എല്ലോസ്",@"12",@"എൻ‌",@"ക്വാൽക്വിയർ",@"കാസോ",@"",@"എൻ‌",@"മാർ‌സോ",@"ഡി",@"284",@"ന്യൂമെറിയാനോ",@"സോളോ",@"ഹബിയ",@"എഗ്രാമെ",@"ഹോംസ്)",@"",@"en",@"സിറിയ",@"",@"y",@"en",@"noviembre",@"de",@"ese",@"año",@"todavía",@"se",@"encontraba",@"en",@"Asia",@"Menor.13",@"Aparentemente",@"en",@"Emesa",@"todavía",@"installa",@"vivo",@"y",@"con",@"buena",@"salud",@"",@"14",@"pero",@"tras",@"dejar",@"la",@"ciudad",@"sus",@"oficiales",@"",@"incluyendo",@"al",@"prefecto",@"ar",@"pretoio",@"ഇൻഫോർമറോൺ",@"ഡി",@"ക്യൂ",@"സുഫ്രിയ",@"ഉന",@"ഇൻഫ്ലാമസിയൻ",@"ഒക്കുലാർ",@"വൈ",@"",@"ഡെസ്ഡെ",@"എസ്",@"മൊമന്റോ",@"",@"വയജോ",@"എൻ",@"അൺ",@"കരോമാറ്റോ",@"സെറാഡോ",@"15",@"ക്വാൻഡോ",@"എൽ",@"എജർസിറ്റോ",@"ലെഗെ",@"എ",@"ബിറ്റിനിയ",@"",@"11",@"അൽഗുനോസ്",@"ഡി",@"ലോസ്",@"സോൾഡഡോസ്",@"ഡി",@"ന്യൂമെരിയാനോ",@"പെർസിബിയറോൺ",@"അൺ",@"ഒലോർ",@"എ",@"പുട്രോഫെസിയൻ",@"ഡെൽ",@"las",@"cortinas",@"y",@"encontraron",@"el",@"cadáver",@"de",@"Numeriano.16",@"",@"അരിയോ",@"അപർ",@"സോളോ",@"ഇൻഫോർമറിയ",@"ഓഫിസിയൽമെൻറ്",@"ഡി",@"ലാ",@"മ്യുർട്ടെ",@"ഡി",@"ന്യൂമെരിയാനോ",@"എൻ‌ടോൺസ്",@"",@"എൻ",@"എൽ",@"മെസ്",@"ഡി",@"നോവിംബ്രെ",@".17",@"ലോസ്",@"ജനറലുകൾ",@"വൈ",@"ട്രിബ്യൂണോസ്",@"ഡി",@"ന്യൂമെരിയാനോ",@"ഫോർമാറോൺ",@"അൺ",@"കൺസിലിയോ",@"പാരാ",@"ഡിറ്റർമിനാർ",@"ലാ",@"സുസെസിയൻ",@"",@"വൈ",@"എലിജിയോൺ",@"എ",@"ഡയോക്കിൾസ്",@"കോമോ",@"ന്യൂവോ",@"ചക്രവർത്തി",@"",@"18",@"ഒരു",@"പെസാർ",@"ഡി",@"ലോസ്",@"Aper",@"por",@"conseguir",@"el",@"apoyo",@"de",@"los",@"oficiales.",@"El",@"ejército",@"aclamó",@"unánimemente",@"a",@"Diocles",@"como",@"su",@"nuevo",@"Augusto",@"",@"que",@"aceptó",@"formalmente",@"la",@"prpura",@"Empial.",@"ലെവാന്റ",@"സു",@"സുപാഡ",@"എ",@"ലാ",@"ലുസ്",@"ഡെൽ",@"സോൾ",@"ഇ",@"ഹിസോ",@"അൺ",@"ജുറാമെന്റോ",@"എൻ",@"എൽ",@"ക്യൂ",@"റീചാസാബ",@"ക്വാൽക്വയർ",@"റെസ്പോൺസബിലിഡാഡ്",@"പോർ",@"ലാ",@"മ്യുർട്ടെ",@"ഡി",@"ന്യൂമെരിയാനോ.",@"അഫിർ‌മെ",@"ക്യൂ",@"അപർ‌",@"ഹബിയ",@"മാറ്റഡോ",@"എ",@"ന്യൂമെരിയാനോ",@"19",@"വൈ",@"",@"എ",@"ലാ",@"വിസ്റ്റ",@"ഡി",@"ടോഡോസ്",@"",@"ലെ",@"ക്ലാവെ",@"സു",@"എസ്‌പാഡ",@"വൈ",@"ലെ",@"മാറ്റ്",@".20",@"സെഗൻ",@"ലാ",@"ഹിസ്റ്റോറിയ",@"അഗസ്റ്റ",@"",@"ഹബ്രിയ",@"സിറ്റാഡോ",@"എ",@"വിർ‌ജിലിയോ",@"മെൻ‌ട്രാസ്",@"ലോ",@"ഹാസിയ",@".21",@"പോക്കോ",@"ഡെസ്പ്യൂസ്",@"ഡയോക്കിൾസ്",@"കാംബി",@"സു",@"സു",@"നോംബ്രെ",@"പോർ",@"എൽ",@"ഡയോക്ലെസിയാനോ",@"",@"ഡി",@"കാരാക്റ്റർ",@"മാസ്",@"ലാറ്റിനോ",@"",@"22",@"പസാൻഡോ",@"എ",@"ലാമർസ്",@"കായോ",@"ure",@"റേലിയോ",@"വലേറിയോ",@"ഡയോക്ലെസിയാനോ",@".23",@"",@"എൻഫ്രെന്റാമിയന്റോ",@"കോൺ",@"കരിനോ",@"[എഡിറ്റർ]",@"",@"ബസ്റ്റോ",@"ഡി",@"കരിനോ.",@"മ്യൂസിയോസ്",@"ക്യാപിറ്റോലിനോസ്",@"",@"റോമ.",@"ട്രാസ്",@"സു",@"അസെൻ‌സിയൻ",@"അൽ",@"ട്രോനോ",@"",@"ഡയോക്ലെസിയാനോ",@"വൈ",@"ലൂസിയോ",@"സെസോണിയോ",@"ബാസോ",@"24",@"ഫ്യൂറോൺ",@"നോംബ്രാഡോസ്",@"സെൻ‌സ്യൂൾ‌സ്",@"25",@"വൈ",@"അസുമിയറോൺ",@"ലാസ്",@"ഫാസെസ്",@"എൻ‌",@"ലുഗാർ",@"ഡി",@"കരിനോ",@"വൈ",@"ന്യൂമെരിയാനോ.",@"ബാസോ",@"യുഗം",@"മിംബ്രോ",@"ഡി",@"ഉന",@"ഫാമിലിയ",@"സെനറ്റോറിയൽ",@"ഡി",@"കാമ്പാനിയ",@"",@"അൻ",@"ആന്റിഗുവോ",@"സെൻസുൽ",@"വൈ",@"പ്രൊകാൻസുൽ",@"ഡി",@"ആഫ്രിക്ക.",@"Había",@"sido",@"elegido",@"por",@"Probo",@"como",@"señal",@"de",@"distinción.26",@"Se",@"trataba",@"de",@"un",@"hombre",@"con",@"capacityidad",@"en",@"las",@"labores",@"de",@"gobierno",@"en",@"las",@"que",@"Diocleciano",@"",@"presiblemente",@"",@"no",@"tenía",@"experiencecia.17",@"Por",@"otro",@"lado",@"",@"el",@"nombramiento",@"de",@"baso",@"recbci.",@"അൽ",@"ഗോബിയേർനോ",@"റൊമാനോ",@"ഡി",@"കരിനോ",@"",@"വൈ",@"സു",@"നെഗറ്റിവ",@"എ",@"അസെപ്റ്റർ",@"അൺ",@"എസ്റ്റാറ്റസ്",@"ഇൻഫീരിയർ",@"എ",@"ക്വാൽക്വിയർ",@"ഒട്രോ",@"എംപെരാഡോർ",@"",@"",@"",@"de",@"quien",@"necesitaba",@"el",@"apoyo",@"para",@"llegar",@"a",@"Roma.26",@"",@"പാപ",@"നിരോധനം",@"",@"ഡയോക്",@"ലെസിയാനോ",@"നോ",@"യുഗം",@"എൽ",@"ആൻ‌കോ",@"കാൻഡിഡാറ്റോ",@"എ",@"സസ്റ്റിറ്റ്യൂയർ",@"എ",@"കരിനോ",@"എൻ",@"എൽ",@"ട്രോനോ.",@"എൽ",@"യൂസർപഡോർ",@"സബിനോ",@"ജൂലിയാനോ",@"",@"എൽ",@"കറക്റ്റർ",@"വെനെറ്റിയ",@"ഡി",@"കരിനോ",@"",@"സെ",@"ഹിസോ",@"കോൺ",@"എൽ",@"കൺട്രോൾ",@"ഡെൽ",@"നോർട്ടെ",@"ഡി",@"ഇറ്റാലിയ",@"വൈ",@"ഡി",@"പനോണിയ",@"ട്രാസ്",@"ലാ",@"അക്ലമാസിയൻ",@"കോമോ",@"എംപെറഡോർ",@"ഡി",@"ഡയോക്ലെസിയാനോ.",@"27",@"എസ്റ്റെ",@"ഹെക്കോ",@"എസ്",@"കൊനോസിഡോ",@"",@"എൻട്രെ",@"ഒട്രാസ്",@"കോസസ്",@"",@"ഡെബിഡോ",@"എ",@"ക്യൂ",@"ഹിസോ",@"അക്യുവർ",@"fábrica",@"de",@"moneda",@"de",@"Siscia",@"",@"en",@"la",@"real",@"Cisak",@"",@"Croacia",@"",@"a",@"sá",@"mismo",@"emperador",@"y",@"prometiendo",@"la",@"libertad",@"a",@"sus",@"súbditos.",@"എസ്റ്റോ",@"അയുഡാരിയ",@"പോളിറ്റിക്കാമെന്റ്",@"എ",@"ഡയോക്ലെസിയാനോ",@"",@"ക്യൂ",@"ലോ",@"യൂട്ടിലിസ്",@"പാരാ",@"ഡിഫെൻഡർ",@"എൻ",@"സു",@"പ്രചാരണം",@"ട്രാസ്ലാഡഡോസ്",@"ഡെസ്",@"ബ്രിട്ടാനിയ",@"അൽ",@"നമ്പർ", nil];
    
    
    
    
    
}

#pragma mark - Buttons callback

- (IBAction)didGoTodayTouch
{
    [_calendarManager setDate:_todayDate];
}
- (IBAction)didGoLastMonthTouch
{
//    [_calendarManager setDate:_todayDate];
    
    NSString *dateString = @"01-01-2018";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSDate *dateFromString = [dateFormatter dateFromString:dateString];
    
    [_calendarManager setDate:dateFromString];
}

- (IBAction)didChangeModeTouch
{
    _calendarManager.settings.weekModeEnabled = !_calendarManager.settings.weekModeEnabled;
    [_calendarManager reload];
    
    CGFloat newHeight = 300;
    if(_calendarManager.settings.weekModeEnabled){
        newHeight = 85.;
    }
    
    self.calendarContentViewHeight.constant = newHeight;
    [self.view layoutIfNeeded];
}

-(void)viewWillLayoutSubviews
{
    
    _btn99.layer.cornerRadius=_btn99.frame.size.height/2;
    _btn99.clipsToBounds=YES;

}

-(void)SetWeekModeCal
{
    _calendarManager.settings.weekModeEnabled = YES;
    [_calendarManager reload];
    
    CGFloat newHeight = 300;
    if(_calendarManager.settings.weekModeEnabled){
        newHeight = 85.;
    }
    
    self.calendarContentViewHeight.constant = newHeight;
    [self.view layoutIfNeeded];
    
}
-(void)SetMonthModeCal
{
    _calendarManager.settings.weekModeEnabled = NO;
    [_calendarManager reload];
    
    CGFloat newHeight = 300;
    if(_calendarManager.settings.weekModeEnabled){
        newHeight = 85.;
    }
    
    self.calendarContentViewHeight.constant = newHeight;
    [self.view layoutIfNeeded];
    
}

#pragma mark - CalendarManager delegate

// Exemple of implementation of prepareDayView method
// Used to customize the appearance of dayView
- (void)calendar:(JTCalendarManager *)calendar prepareDayView:(JTCalendarDayView *)dayView
{
    // Today
    if([_calendarManager.dateHelper date:[NSDate date] isTheSameDayThan:dayView.date])
    {
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor blueColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Selected date
    else if(_dateSelected && [_calendarManager.dateHelper date:_dateSelected isTheSameDayThan:dayView.date])
    {
        dayView.circleView.hidden = NO;
        dayView.circleView.backgroundColor = [UIColor redColor];
        dayView.dotView.backgroundColor = [UIColor whiteColor];
        dayView.textLabel.textColor = [UIColor whiteColor];
    }
    // Other month
    else if(![_calendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
        dayView.circleView.hidden = YES;
        dayView.dotView.backgroundColor = [UIColor redColor];
        dayView.textLabel.textColor = [UIColor lightGrayColor];
    }
    // Another day of the current month
    else{
        dayView.circleView.hidden = YES;
        dayView.dotView.backgroundColor = [UIColor redColor];
        dayView.textLabel.textColor = [UIColor blackColor];
    }
    
    if([self haveEventForDay:dayView.date]){
        dayView.dotView.hidden = NO;
    }
    else{
        dayView.dotView.hidden = YES;
    }
}

- (void)calendar:(JTCalendarManager *)calendar didTouchDayView:(JTCalendarDayView *)dayView
{
    [_rowListVisits removeAllObjects];
    [_rowListVisitsOthers removeAllObjects];

    
//    NSString *styr=[_Baby objectAtIndex:9];
//    NSLog(@"%@",styr);
    
    if([self haveEventForDay:dayView.date])
    {
        
        NSString *styr12=[_Baby objectAtIndex:17];
        NSLog(@"%@",styr12);
        
        
        NSLog(@"YES");
        //2018-04-30
        NSDateFormatter* df = [[NSDateFormatter alloc]init];
        [df setDateFormat:@"yyyy-MM-dd"];
        NSString *resultNew = [df stringFromDate:dayView.date];

        _strNewDate=resultNew;
        NSLog(@"New Format Date%@",resultNew);
        
        
        for(int hh=0;hh<_AllMustafaEventsDates.count;hh++)
        {
            
            NSString *strHAHAH= [_AllMustafaEventsDates objectAtIndex:hh];
            if([strHAHAH isEqualToString:_strNewDate])
            {
                Power=hh;
                break;
            }
            
        }
        
//        if()
        
//        [_rowListVisits addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"Procedure",@"reason", nil]];
  
        /*
        
        for(int i = 0; i < _rowArr.count; ++i)
        {
            // Generate 30 random dates between now and 60 days later
            
            NSString *strDateTime= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
            strDateTime=  [self formetNew:strDateTime];
            
            /*
             "reasonOfVisit":[
             {
             "text":"Ear Infection"
             }
             ]
             */
        /*
            if([resultNew isEqualToString:strDateTime])
            {
               NSString *reasonString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"reasonOfVisit"]objectAtIndex:0]objectForKey:@"text"];
             
                NSString *locationString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"location"]objectAtIndex:0]objectForKey:@"name"];

              //objectForKey:@"location"] objectAtIndex:0]objectForKey:@"name"]
                [_rowListVisits addObject:[NSDictionary dictionaryWithObjectsAndKeys:reasonString,@"reason",locationString,@"location", nil]];
            }
            
        }
        [self HereAllYo:0];
        [self HereAllYo2];
*/
        
        [FTIndicator showInfoWithMessage:@"You have done Iron Core Exercise on this day"];
        
        
        [_tblView reloadData];
        
        
        
//        "visitDateTime":{
//            "start":"2018-04-30T15:27:00.000Z"
//        },
        
        
    }
    else
    {
 
        [FTIndicator showInfoWithMessage:@"No Exercise Recorded on this Day"];

        
//        [FTIndicator showInfoWithMessage:@"No Event Observed on the selected date"];
        Power=99;
        [_tblView reloadData];

    }
        
    /*
     
     NSDateFormatter* df = [[NSDateFormatter alloc]init];
     [df setDateFormat:@"MM/dd/yyyy"];
     NSString *result = [df stringFromDate:date];
     */
    
    
    _dateSelected = dayView.date;
    NSLog(@"%@",_dateSelected);
    
    
    // Animation for the circleView
    dayView.circleView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.1, 0.1);
    [UIView transitionWithView:dayView
                      duration:.3
                       options:0
                    animations:^{
                        dayView.circleView.transform = CGAffineTransformIdentity;
                        [_calendarManager reload];
                    } completion:nil];
    
    
    // Don't change page in week mode because block the selection of days in first and last weeks of the month
    if(_calendarManager.settings.weekModeEnabled){
        return;
    }
    
    // Load the previous or next page if touch a day from another month
    
    if(![_calendarManager.dateHelper date:_calendarContentView.date isTheSameMonthThan:dayView.date]){
        if([_calendarContentView.date compare:dayView.date] == NSOrderedAscending){
            [_calendarContentView loadNextPageWithAnimation];
        }
        else{
            [_calendarContentView loadPreviousPageWithAnimation];
        }
    }
}

#pragma mark - CalendarManager delegate - Page mangement

// Used to limit the date for the calendar, optional
- (BOOL)calendar:(JTCalendarManager *)calendar canDisplayPageWithDate:(NSDate *)date
{
    return [_calendarManager.dateHelper date:date isEqualOrAfter:_minDate andEqualOrBefore:_maxDate];
}

- (void)calendarDidLoadNextPage:(JTCalendarManager *)calendar
{
    //    NSLog(@"Next page loaded");
}

- (void)calendarDidLoadPreviousPage:(JTCalendarManager *)calendar
{
    //    NSLog(@"Previous page loaded");
}

#pragma mark - Fake data

- (void)createMinAndMaxDate
{
    _todayDate = [NSDate date];
    
    // Min date will be 2 month before today
    _minDate = [_calendarManager.dateHelper addToDate:_todayDate months:-12];
    
    // Max date will be 2 month after today
    _maxDate = [_calendarManager.dateHelper addToDate:_todayDate months:24];
}

// Used only to have a key for _eventsByDate
- (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *dateFormatter;
    if(!dateFormatter){
        dateFormatter = [NSDateFormatter new];
        dateFormatter.dateFormat = @"dd-MM-yyyy";
    }
    
    return dateFormatter;
}

- (BOOL)haveEventForDay:(NSDate *)date
{
    NSString *key = [[self dateFormatter] stringFromDate:date];
    
    if(_eventsByDate[key] && [_eventsByDate[key] count] > 0){
        return YES;
    }
    
    return NO;
    
}

-(void)GetAllPregnancy
{
    
    
    
    
    
    _AllMustafaEvents=[[NSMutableArray alloc]init];
    _AllMustafaEventsDates=[[NSMutableArray alloc]init];
    
    
    //    _strMustafaRocks=@"2020-01-01";
    
    
    //_strMustafaRocks=@"2020-02-01";
 /*
    NSString *strDateTime1;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
    strDateTime1=_strMustafaRocks;
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
    //2018-10-24T15:27:00.000Z
    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    [dateFormatter2 setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *dateFromString2 = [dateFormatter2 dateFromString:strDateTime1];
    [_AllMustafaEventsDates addObject:strDateTime1];
    
    
    
    NSString *strDateTime;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
    strDateTime=_strMustafaRocks;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //2018-10-24T15:27:00.000Z
    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *dateFromString = [dateFormatter dateFromString:strDateTime];
    [_AllMustafaEventsDates addObject:strDateTime];
    
    
    NSDateComponents *dateComponents1 = [[NSDateComponents alloc] init];
    [dateComponents1 setDay:7];
    NSCalendar *calendar1 = [NSCalendar currentCalendar];
    NSDate *newDate1 = [calendar1 dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
    NSString *dateString = [dateFormatter stringFromDate:newDate1];
    
    [_AllMustafaEventsDates addObject:dateString];
    
    
    //////Heart Beat
    
    [dateComponents1 setWeekOfYear:10];
    NSCalendar *calendarHeartBeat = [NSCalendar currentCalendar];
    NSDate *newDateHeartBeat = [calendarHeartBeat dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
    
    NSString *dateStringHeartBeat = [dateFormatter stringFromDate:newDateHeartBeat];
    
    [_AllMustafaEventsDates addObject:dateStringHeartBeat];
    
    
    //////Heart Beat
    
    
    ///
    
    //////Feel Light
    
    [dateComponents1 setWeekOfYear:15];
    NSCalendar *calendarFeelLight = [NSCalendar currentCalendar];
    NSDate *newDateFeelLight = [calendarFeelLight dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
    
    
    NSString *dateStringFeelLight = [dateFormatter stringFromDate:newDateFeelLight];
    
    [_AllMustafaEventsDates addObject:dateStringFeelLight];
    
    
    //////Feel Light
    
    
    
    
    ////Sex determination
    
    [dateComponents1 setWeekOfYear:16];
    NSCalendar *calendarSexdetermination = [NSCalendar currentCalendar];
    NSDate *newDateSexdetermination = [calendarSexdetermination dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
    
    
    NSString *dateStringSexdetermination = [dateFormatter stringFromDate:newDateSexdetermination];
    
    [_AllMustafaEventsDates addObject:dateStringSexdetermination];
    
    
    ///Feel the Sound
    [dateComponents1 setWeekOfYear:19];
    NSCalendar *calendarFeelTheSound = [NSCalendar currentCalendar];
    NSDate *newDateFeelTheSound = [calendarFeelTheSound dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
    
    
    NSString *dateStringFeelSound = [dateFormatter stringFromDate:newDateFeelTheSound];
    
   [_AllMustafaEventsDates addObject:dateStringFeelSound];
    
    
    /////
    
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMonth:9];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *newDate = [calendar dateByAddingComponents:dateComponents toDate:newDate1 options:0];
    
    NSString *dateStringDueDate = [dateFormatter stringFromDate:newDate];
    
    [_AllMustafaEventsDates addObject:dateStringDueDate];
    
*/
    //newDate is Delivery Date
    
    NSMutableArray *arrAll=[[NSMutableArray alloc]init];
    
    arrAll=[[[NSUserDefaults standardUserDefaults]objectForKey:@"ListOfEvents"] mutableCopy];

//    strDateTime1=_strMustafaRocks;
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
    //2018-10-24T15:27:00.000Z
    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    [dateFormatter2 setDateFormat:@"yyyy-MM-dd"];
    
    NSMutableArray *kaka22=[NSMutableArray new];
    
    for(int y=0;y<arrAll.count;y++)
    {
//        NSDate *dateFromString2 = [dateFormatter2 dateFromString:[arrAll objectAtIndex:y]];
//        [_AllMustafaEventsDates addObject:dateFromString2];

        
        NSString *strDateTime1;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
        strDateTime1=[arrAll objectAtIndex:y];
        NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
        //2018-10-24T15:27:00.000Z
        //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
        [dateFormatter2 setDateFormat:@"yyyy-MM-dd"];
        
        NSDate *dateFromString2 = [dateFormatter2 dateFromString:strDateTime1];
        [_AllMustafaEventsDates addObject:strDateTime1];
        [kaka22 addObject:dateFromString2];
        
        
    }
    
//    NSDate *dateFromString2 = [dateFormatter2 dateFromString:strDateTime1];
//    [_AllMustafaEventsDates addObject:strDateTime1];

    
    
    
//    NSMutableArray *arrAll=[[NSMutableArray alloc]initWithObjects:dateFromString2,newDate1,newDateHeartBeat,newDateFeelLight,newDateSexdetermination,newDateFeelTheSound,newDate, nil];
    
    for(int i=0;i<kaka22.count;i++)
    {
        NSDate *Puppo=[kaka22 objectAtIndex:i];
        
        NSString *key = [[self dateFormatter] stringFromDate:Puppo];
        
        if(!_eventsByDate[key])
        {
            _eventsByDate[key] = [NSMutableArray new];
        }
        
        // NS
        [_eventsByDate[key] addObject:Puppo];
    }
    
}
- (void)createRandomEvents
{
    
    /*
     NSString *dateString = @"01-02-2010";
     NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
     [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
     NSDate *dateFromString = [dateFormatter dateFromString:dateString];
     NSDateFormatter* df = [[NSDateFormatter alloc]init];
     [df setDateFormat:@"MM/dd/yyyy"];
     NSString *result = [df stringFromDate:date];
     */
    
    
    
    _eventsByDate = [NSMutableDictionary new];
//
//    //  for(int i = 0; i < _rowArr.count; ++i){
//    // Generate 30 random dates between now and 60 days later
//
//    //   _strMustafaRocks=@"2020-02-01";
//
//    NSString *strDateTime;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
//    strDateTime=@"2020-02-03";
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    //2018-10-24T15:27:00.000Z
//    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//
//    NSDate *dateFromString = [dateFormatter dateFromString:strDateTime];
//
//
//
//
//    //        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
//
//
//    NSDate *randomDate =dateFromString;
//
//    // Use the date as key for eventsByDate
//    NSString *key = [[self dateFormatter] stringFromDate:randomDate];
//
//    if(!_eventsByDate[key])
//    {
//        _eventsByDate[key] = [NSMutableArray new];
//    }
//
//    // NS
//    [_eventsByDate[key] addObject:randomDate];
    // }
}


//-(void)GetAllPregnancy
//{
//
//
//
//
//
//    _AllMustafaEvents=[[NSMutableArray alloc]init];
//    _AllMustafaEventsDates=[[NSMutableArray alloc]init];
//
//
//    //    _strMustafaRocks=@"2020-01-01";
//
//
//    //_strMustafaRocks=@"2020-02-01";
//
//    NSString *strDateTime1;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
//    strDateTime1=@"2020-02-01";
//    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
//    //2018-10-24T15:27:00.000Z
//    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//    [dateFormatter2 setDateFormat:@"yyyy-MM-dd"];
//
//    NSDate *dateFromString2 = [dateFormatter2 dateFromString:strDateTime1];
//    [_AllMustafaEventsDates addObject:strDateTime1];
//
//
//
//    NSString *strDateTime;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
//    strDateTime=@"2020-02-01";
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    //2018-10-24T15:27:00.000Z
//    //        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//
//    NSDate *dateFromString = [dateFormatter dateFromString:strDateTime];
//    [_AllMustafaEventsDates addObject:strDateTime];
//
//
//    NSDateComponents *dateComponents1 = [[NSDateComponents alloc] init];
//    [dateComponents1 setDay:7];
//    NSCalendar *calendar1 = [NSCalendar currentCalendar];
//    NSDate *newDate1 = [calendar1 dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
//    NSString *dateString = [dateFormatter stringFromDate:newDate1];
//
//    [_AllMustafaEventsDates addObject:dateString];
//
//
//    //////Heart Beat
//
//    [dateComponents1 setWeekOfYear:10];
//    NSCalendar *calendarHeartBeat = [NSCalendar currentCalendar];
//    NSDate *newDateHeartBeat = [calendarHeartBeat dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
//
//    NSString *dateStringHeartBeat = [dateFormatter stringFromDate:newDateHeartBeat];
//
//    [_AllMustafaEventsDates addObject:dateStringHeartBeat];
//
//
//    //////Heart Beat
//
//
//    ///
//
//    //////Feel Light
//
//    [dateComponents1 setWeekOfYear:15];
//    NSCalendar *calendarFeelLight = [NSCalendar currentCalendar];
//    NSDate *newDateFeelLight = [calendarFeelLight dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
//
//
//    NSString *dateStringFeelLight = [dateFormatter stringFromDate:newDateFeelLight];
//
//    [_AllMustafaEventsDates addObject:dateStringFeelLight];
//
//
//    //////Feel Light
//
//
//
//
//    ////Sex determination
//
//    [dateComponents1 setWeekOfYear:16];
//    NSCalendar *calendarSexdetermination = [NSCalendar currentCalendar];
//    NSDate *newDateSexdetermination = [calendarSexdetermination dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
//
//
//    NSString *dateStringSexdetermination = [dateFormatter stringFromDate:newDateSexdetermination];
//
//    [_AllMustafaEventsDates addObject:dateStringSexdetermination];
//
//
//    ///Feel the Sound
//    [dateComponents1 setWeekOfYear:19];
//    NSCalendar *calendarFeelTheSound = [NSCalendar currentCalendar];
//    NSDate *newDateFeelTheSound = [calendarFeelTheSound dateByAddingComponents:dateComponents1 toDate:dateFromString options:0];
//
//
//    NSString *dateStringFeelSound = [dateFormatter stringFromDate:newDateFeelTheSound];
//
//    [_AllMustafaEventsDates addObject:dateStringFeelSound];
//
//
//    /////
//
//    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
//    [dateComponents setMonth:9];
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDate *newDate = [calendar dateByAddingComponents:dateComponents toDate:newDate1 options:0];
//
//    NSString *dateStringDueDate = [dateFormatter stringFromDate:newDate];
//
//    [_AllMustafaEventsDates addObject:dateStringDueDate];
//
//
//    //newDate is Delivery Date
//
//
//    NSMutableArray *arrAll=[[NSMutableArray alloc]initWithObjects:dateFromString2,newDate1,newDateHeartBeat,newDateFeelLight,newDateSexdetermination,newDateFeelTheSound,newDate, nil];
//
//    for(int i=0;i<arrAll.count;i++)
//    {
//        NSDate *Puppo=[_AllMustafaEventsDates objectAtIndex:i];
//
//        NSString *key = [[self dateFormatter] stringFromDate:Puppo];
//
//        if(!_eventsByDate[key])
//        {
//            _eventsByDate[key] = [NSMutableArray new];
//        }
//
//        // NS
//        [_eventsByDate[key] addObject:Puppo];
//    }
//
//}
//
//- (void)createRandomEvents
//{
//
//    /*
//    NSString *dateString = @"01-02-2010";
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//    NSDate *dateFromString = [dateFormatter dateFromString:dateString];
//    NSDateFormatter* df = [[NSDateFormatter alloc]init];
//    [df setDateFormat:@"MM/dd/yyyy"];
//    NSString *result = [df stringFromDate:date];
//*/
//
//
//
//   // _eventsByDate = [NSMutableDictionary new];
//    NSMutableArray *ghfgh=[[NSMutableArray alloc]init];
//
//    ghfgh=[[[NSUserDefaults standardUserDefaults]objectForKey:@"ListOfEvents"] mutableCopy];
//
//    NSLog(@"kaka66");
//
//    NSLog(@"%@",ghfgh);
//
//  //  for(int i = 0; i < _rowArr.count; ++i){
//        // Generate 30 random dates between now and 60 days later
//
// //   _strMustafaRocks=@"2020-02-01";
//
//        NSString *strDateTime;//= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
//        strDateTime=_strMustafaRocks;
//
//
//    NSMutableArray *arrAll=ghfgh;
//
//    for(int i=0;i<arrAll.count;i++)
//    {
//        //NSDate *Puppo=[arrAll objectAtIndex:i];
//
//
//        NSString *dateString = [arrAll objectAtIndex:i];
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//        NSDate *Puppo = [dateFormatter dateFromString:dateString];
//
//
//
//        NSString *key = [[self dateFormatter] stringFromDate:Puppo];
//
//        if(!_eventsByDate[key])
//        {
//            _eventsByDate[key] = [NSMutableArray new];
//        }
//
//        // NS
//        [_eventsByDate[key] addObject:Puppo];
//    }
//
//
//
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//
//    NSString *strPooo=@"2020-02-17";
//
//    NSDate *dateFromString = [dateFormatter dateFromString:strPooo];
//
//
//
//
//
////    NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
//
//
//    //   NSDate *randomDate =dateFromString;
//
//    // Use the date as key for eventsByDate
//    NSString *key = [[self dateFormatter] stringFromDate:dateFromString];
//
//    if(!_eventsByDate[key])
//    {
//        _eventsByDate[key] = [NSMutableArray new];
//    }
//
//    [_eventsByDate[key] addObject:dateFromString];
//
////
////}
////
//
//
//
//    /*
//    for(int o2=0;o2<ghfgh.count;o2++)
//    {
//
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        //2018-10-24T15:27:00.000Z
////        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//
//     //   NSString *str123=[ghfgh objectAtIndex:o2];
//
//        NSString *strPooo=@"2020-02-16";
//
//        NSDate *dateFromString = [dateFormatter dateFromString:strPooo];
//
//
//
//
//
//        NSDate *randomDate = [NSDate dateWithTimeInterval:(rand() % (3600 * 24 * 60)) sinceDate:[NSDate date]];
//
//
//     //   NSDate *randomDate =dateFromString;
//
//        // Use the date as key for eventsByDate
//        NSString *key = [[self dateFormatter] stringFromDate:randomDate];
//
//        if(!_eventsByDate[key])
//        {
//            _eventsByDate[key] = [NSMutableArray new];
//        }
//
//        [_eventsByDate[key] addObject:randomDate];
//
//
//    }
//
//    */
//
//}

- (IBAction)SegmentButton:(id)sender {
    
    if (_segment.selectedSegmentIndex == 0)
    {
        [self didGoTodayTouch];
           [self SetWeekModeCal];
     //   decode(textToDecode);
    }
    else if(_segment.selectedSegmentIndex == 1)
    {
        [self SetWeekModeCal];

     //   decode1(textToDecode);
    } else if(_segment.selectedSegmentIndex == 2)
    {
        [self SetMonthModeCal];

    //    decode2(textToDecode);
    }
    else if(_segment.selectedSegmentIndex == 3)
    {
        
        [self didGoLastMonthTouch];
        [self SetMonthModeCal];

//        [self SetMonthModeCal];
        
        //    decode2(textToDecode);
    }
}


-(IBAction)closeSearchButton:(id)sender
{
    _ViewAdvanceSearch.hidden=YES;
    
    _VwDetails11.hidden=YES;

/*
 
 Obj-C - OR
 
 // OR Condition //
 
 NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"X == 1"];
 NSPredicate *predicate2 = [NSPredicate predicateWithFormat:@"X == 2"];
 NSPredicate *predicate = [NSCompoundPredicate orPredicateWithSubpredicates:@[predicate1, predicate2]];
 Obj-C - AND
 
 NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"X == 1"];
 NSPredicate *predicate2 = [NSPredicate predicateWithFormat:@"X == 2"];
 NSPredicate *predicate = [NSCompoundPredicate andPredicateWithSubpredicates:@[predicate1, predicate2]];
 */
    
}


-(void)HereAllYo:(int)section
{
    NSDictionary *dicNew=[NSDictionary new];
    _dicNew11=[NSMutableDictionary new];
    
    for(int i = 0; i < _rowArr.count; ++i)
    {
        // Generate 30 random dates between now and 60 days later
        
        NSString *strDateTime= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
        strDateTime=  [self formetNew:strDateTime];
        
        /*
         "reasonOfVisit":[
         {
         "text":"Ear Infection"
         }
         ]
         */
        
        if([_strNewDate isEqualToString:strDateTime])
        {
//            NSString *reasonString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"reasonOfVisit"]objectAtIndex:0]objectForKey:@"text"];
//
//            NSString *locationString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"location"]objectAtIndex:0]objectForKey:@"name"];
            
            //objectForKey:@"location"] objectAtIndex:0]objectForKey:@"name"]
//            [_rowListVisits addObject:[NSDictionary dictionaryWithObjectsAndKeys:reasonString,@"reason",locationString,@"location", nil]];
            if(section==0)
            {
                dicNew = [[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"];
                
                _dicNew11 = [dicNew mutableCopy];

            }
            else
            {
                
                NSMutableArray *arrTest= [[[_rowArr objectAtIndex:i] allKeys]mutableCopy];
                [arrTest removeObject:@"date"];
                [arrTest removeObject:@"encounters"];
                
                
                NSMutableDictionary *dict11 = [[NSMutableDictionary alloc] init];
                //                [dict setValue:[NSNumber numberWithInt:5] forKey:@"age"];
                
                
                for(int o=0;o<arrTest.count;o++)
                {
                    //                    [_rowListVisitsOthers addObject:[[_rowArr objectAtIndex:i]objectForKey:[arrTest objectAtIndex:o]]];
                    
                    [dict11 setObject:[[_rowArr objectAtIndex:i]objectForKey:[arrTest objectAtIndex:o]] forKey:[arrTest objectAtIndex:o]];
                    
                }
                
                _dicNew11 = [dict11 mutableCopy];
                
                //here
            }
            
            break;
        }
        
        
    }
//    NSMutableArray *arrTest= [[_dicNew11 allKeys]mutableCopy];
//
//    [arrTest removeObject:@"id"];
//    [arrTest removeObject:@"reasonOfVisit"];
//    [arrTest removeObject:@"location"];

//    return _dicNew11.allKeys;
}


-(void)HereAllYo2
{
    int section=1;
    NSDictionary *dicNew=[NSDictionary new];
    _dicNew11Others=[NSMutableDictionary new];

    for(int i = 0; i < _rowArr.count; ++i)
    {
        // Generate 30 random dates between now and 60 days later
        
        NSString *strDateTime= [[_rowArr objectAtIndex:i]objectForKey:@"date"];
        strDateTime=  [self formetNew:strDateTime];
        
        /*
         "reasonOfVisit":[
         {
         "text":"Ear Infection"
         }
         ]
         */
        
        if([_strNewDate isEqualToString:strDateTime])
        {
            //            NSString *reasonString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"reasonOfVisit"]objectAtIndex:0]objectForKey:@"text"];
            //
            //            NSString *locationString= [[[[[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"]objectForKey:@"location"]objectAtIndex:0]objectForKey:@"name"];
            
            //objectForKey:@"location"] objectAtIndex:0]objectForKey:@"name"]
            //            [_rowListVisits addObject:[NSDictionary dictionaryWithObjectsAndKeys:reasonString,@"reason",locationString,@"location", nil]];
            if(section==0)
            {
                dicNew = [[[[_rowArr objectAtIndex:i]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"];
                
                _dicNew11Others = [dicNew mutableCopy];
                
            }
            else
            {
                
                NSMutableArray *arrTest= [[[_rowArr objectAtIndex:i] allKeys]mutableCopy];
                [arrTest removeObject:@"date"];
                [arrTest removeObject:@"encounters"];
                
                
                NSMutableDictionary *dict11 = [[NSMutableDictionary alloc] init];
                //                [dict setValue:[NSNumber numberWithInt:5] forKey:@"age"];
                
                
                for(int o=0;o<arrTest.count;o++)
                {
                 
                    [dict11 setObject:[[_rowArr objectAtIndex:i]objectForKey:[arrTest objectAtIndex:o]] forKey:[arrTest objectAtIndex:o]];
                    
                }
                
                _dicNew11Others = [dict11 mutableCopy];
                
                //here
            }
            
            break;
        }
        
        
    }
    //    NSMutableArray *arrTest= [[_dicNew11 allKeys]mutableCopy];
    //
    //    [arrTest removeObject:@"id"];
    //    [arrTest removeObject:@"reasonOfVisit"];
    //    [arrTest removeObject:@"location"];
    
    //    return _dicNew11.allKeys;
}

//-(void)ListingEncounter
//{
//   //ListEncounterViewController.h
////    _rowArr
//    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
//                                                             bundle: nil];
//
//    ListEncounterViewController *menuController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ListEncounterViewController"];
//    //    menuController.dicRow=[[[[_rowArr objectAtIndex:0]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"];
//
//    menuController.rowArr=_rowArr;
//
//    [self.navigationController pushViewController:menuController animated:YES];
//}
-(IBAction)searchAdvanceButton:(id)sender
{
    
//    [self ListingEncounterSearch11];
//    [self closeSearchButton:nil];
    _VwDetails11.hidden=NO;
}


-(void)ListingEncounterSearch
{
    /*
     NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.observation contains [cd] %@", self.searchBar.text];
     
 NSArray *arrTemp=[_rowArr filteredArrayUsingPredicate:predicate];
     */
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle: nil];

//    ListEncounterViewController *menuController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ListEncounterViewController"];
//
////    menuController.dicRow=[[[[_rowArr objectAtIndex:0]objectForKey:@"encounters"]objectAtIndex:0]objectForKey:@"encounter"];
////selectDate
//    NSLog(@"selectDate--==%@",selectDate.selectedItem);
//    menuController.strSelectDateIndex=@"NO";
//
//
//    menuController.strSelectDate=selectDate.selectedItem;
    
    
    //reasonOfVisit
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(SELF.date == %@)", selectDate.selectedItem];
//
//       NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.date contains [cd] %@", txtFieldVisitReason.text];
    //@"SELF.observation contains [cd] %@"
    
    
   //  NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(SELF.date == %@)", selectDate.selectedItem];
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
//    NSDate *dateFromStringStart = [dateFormatter dateFromString:@"2018-01-14"];
//    NSDate *dateFromStringEnd = [dateFormatter dateFromString:@"2018-10-14"];
//
    
//   NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(SELF.date > %@) AND (SELF.date < %@)",@"2018-11-11", @"2018-11-24"];


//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(SELF.date == %@)", selectDate.selectedItem];
//
//    NSArray *arrTemp=[_rowArr filteredArrayUsingPredicate:predicate];
    
    
    
//     menuController.rowArr=[arrTemp mutableCopy];
//
//    [self.navigationController pushViewController:menuController animated:YES];
    
}
-(IBAction)doneClicked:(id)sender
{
//    [selectCategory resignFirstResponder];
//    [selectDate resignFirstResponder];
//    [selectDateEnd resignFirstResponder];
}

#pragma mark SEGMENT
- (IBAction)SegConditionSeverity:(id)sender {
    
    if (_segmentConditionSeverity.selectedSegmentIndex == 0){
        _strConditionSeverity=@"ALL";
        
        //      decode(textToDecode);
    }
    else if(_segmentConditionSeverity.selectedSegmentIndex == 1)
    {
        _strConditionSeverity=@"SEVERE";
        //        decode1(textToDecode);
    }
    else if(_segmentConditionSeverity.selectedSegmentIndex == 2)
    {
        _strConditionSeverity=@"MODERATE";
        
        //        decode2(textToDecode);
    }
    else if(_segmentConditionSeverity.selectedSegmentIndex == 3)
    {
        _strConditionSeverity=@"MILD";
        
        //        decode2(textToDecode);
    }
    
    NSLog(@"%@",_strConditionSeverity);
    
}
- (IBAction)SegObservation:(id)sender {
    
    if (_segmentObservation.selectedSegmentIndex == 0)
    {
        _strObservation=@"ALL";
        
        //    decode(textToDecode);
    }
    else if(_segmentObservation.selectedSegmentIndex == 1)
    {
        
        _strObservation=@"FINAL";
        
        //    decode1(textToDecode);
    }
    else if(_segmentObservation.selectedSegmentIndex == 2)
    {
        _strObservation=@"INCOMPLETE";

    }
    NSLog(@"%@",_strObservation);

    
}



@end
