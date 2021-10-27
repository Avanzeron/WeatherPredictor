//
//  ViewController.m
//  WeatherPredictor
//
//  Created by zeyuan wang on 2021/10/27.
//

#import "ViewController.h"
#import "Masonry.h"
#define WEAKSELF(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface ViewController ()
@property (nonatomic,strong)NSString *tmpRange;
@property (nonatomic,strong)NSString *weather;

@property (nonatomic,strong)UILabel *address;
@property (nonatomic,strong)UILabel *date;
@property (nonatomic,strong)UILabel *temp;
@property (nonatomic,strong)UILabel *detail;
@property (nonatomic,strong)UILabel *quality;

@end
//
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemBlueColor];
    NSLog(@"There Test");
    
    self.address = [[UILabel alloc]init];
    self.address.text = @"哈尔滨";
    self.address.textColor = [UIColor whiteColor];
    self.address.font = [UIFont systemFontOfSize:22];
    //self.address.backgroundColor = [UIColor blackColor];
    //self.address.frame = CGRectMake(50, 100, 200, 100);
    [self.view addSubview:self.address];
    WEAKSELF(weakSelf);
    [self.address mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.view).offset(50);
        make.top.mas_equalTo(weakSelf.view).offset(75);
        //make.width.mas_equalTo(200);
        make.height.mas_equalTo(30);
    }];
    
    
    self.date = [[UILabel alloc]init];
    NSDate *date =[NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"MM"];
    NSInteger currentMonth=[[formatter stringFromDate:date]integerValue];
    [formatter setDateFormat:@"dd"];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    self.date.text = [NSString stringWithFormat:@"%ld月%ld日",currentMonth,currentDay];
    self.date.frame = CGRectMake(200, 75, 200, 100);
    [self.view addSubview:self.date];
    
    self.temp = [[UILabel alloc]init];
    self.temp.text = @"8°";
    self.temp.font = [UIFont systemFontOfSize:64];
    self.temp.frame = CGRectMake(50, 200, 100, 100);
    [self.view addSubview:self.temp];
    
    self.detail = [[UILabel alloc]init];
    self.detail.text = @"今天：多云 -2°~7°C 西风<3级";
    self.detail.font = [UIFont systemFontOfSize:16];
    self.detail.frame = CGRectMake(150, 100, 300, 100);
    [self.view addSubview:self.detail];
    
    self.quality = [[UILabel alloc]init];
    self.quality.text = @"今天是多云，注意出行安全喔";
    self.quality.font = [UIFont systemFontOfSize:16];
    self.quality.frame = CGRectMake(120, 220, 300, 100);
    [self.view addSubview:self.quality];
    
    //这里新建一个超链接 手动获取地址
    
    
    //这里新建一个UIView，存当天的时刻的气温
    
    //这里新建一个UIView or UITableView 存储 我个人认为应当用UIView
    
}


@end

