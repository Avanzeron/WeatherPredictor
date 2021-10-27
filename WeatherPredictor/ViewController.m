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
    
    UILabel *address = [[UILabel alloc]init];
    self.address = address;
    address.text = @"哈尔滨";
    address.textColor = [UIColor whiteColor];
    address.font = [UIFont systemFontOfSize:22];
    //self.address.backgroundColor = [UIColor blackColor];
    //self.address.frame = CGRectMake(50, 100, 200, 100);
    [self.view addSubview:address];
    WEAKSELF(weakSelf);
    [address mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.view).offset(30);
        make.top.mas_equalTo(weakSelf.view).offset(75);
        //make.width.mas_equalTo(200);
        make.height.mas_equalTo(30);
    }];
    
    
    self.date = [[UILabel alloc]init];
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"MM"];
    NSInteger currentMonth=[[formatter stringFromDate:date]integerValue];
    [formatter setDateFormat:@"dd"];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    self.date.text = [NSString stringWithFormat:@"%ld月%ld日",currentMonth,currentDay];
    //self.date.frame = CGRectMake(200, 75, 200, 100);
    [self.view addSubview:self.date];
    [self.date mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(address.mas_right).offset(50);
        make.bottom.mas_equalTo(address.mas_top);
    }];
    
    
    UILabel *temp = [[UILabel alloc]init];
    self.temp = temp;
    temp.text = @"8°";
    temp.font = [UIFont systemFontOfSize:70];
    //temp.frame = CGRectMake(50, 200, 100, 100);
    [self.view addSubview:temp];
    [temp mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(address.mas_left);
        make.top.mas_equalTo(address.mas_bottom).offset(40);
    }];
    
    UILabel *detail = [[UILabel alloc]init];
    self.detail = detail;
    detail.text = @"今天：多云 -2°~7°C 西风<3级";
    detail.font = [UIFont systemFontOfSize:14];
    //self.detail.frame = CGRectMake(150, 100, 300, 100);
    [self.view addSubview:detail];
    [detail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(address.mas_right).offset(20);
        make.bottom.mas_equalTo(address.mas_bottom);
    }];
    
    UILabel *quality = [[UILabel alloc]init];
    self.quality = quality;
    quality.text = @"今天是多云，注意出行安全喔";
    quality.font = [UIFont systemFontOfSize:14];
    //self.quality.frame = CGRectMake(120, 220, 300, 100);
    [self.view addSubview:quality];
    [quality mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(temp.mas_bottom).offset(-20);
        make.left.mas_equalTo(temp.mas_right).offset(20);
    }];
    
    //这里新建一个超链接 手动获取地址
    
    UILabel *getAddress = [[UILabel alloc]init];
    getAddress.text = @"地址错误？点我手动获取地址";
    getAddress.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:getAddress];
    [getAddress mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(temp.mas_bottom).offset(10);
        make.right.mas_equalTo(weakSelf.view.mas_right).offset(-10);
    }];
    
    //这里新建一个UIView，存当天的时刻的气温
    UIView *dayTem = [[UIView alloc]init];
    dayTem.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:dayTem];
    [dayTem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(weakSelf.view.mas_width);
        make.height.mas_equalTo(100);
        make.top.mas_equalTo(getAddress.mas_bottom).offset(10);
    }];
    
    
    //这里新建一个UIView or UITableView 存储 我个人认为应当用UIView
    
    UIView *weekTem= [[UIView alloc]init];
    weekTem.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:weekTem];
    [weekTem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(weakSelf.view.mas_width);
        make.height.mas_equalTo(200);
        make.top.mas_equalTo(dayTem.mas_bottom).offset(10);
    }];
    
}


@end

