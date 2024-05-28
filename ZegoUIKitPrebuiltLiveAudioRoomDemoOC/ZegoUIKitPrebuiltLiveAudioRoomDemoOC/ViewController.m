//
//  ViewController.m
//  ZegoUIKitPrebuiltLiveAudioRoomDemoOC
//
//  Created by zego on 2024/5/28.
//

#import "ViewController.h"
@import ZegoUIKit;
@import ZegoUIKitPrebuiltLiveAudioRoom;

@interface ViewController ()
@property (nonatomic, assign) unsigned int appID;
@property (nonatomic, copy) NSString *appSign;
@property (nonatomic, copy) NSString *userID;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *roomID;
@property (weak, nonatomic) IBOutlet UITextField *roomIDTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor whiteColor];
  self.userID = [NSString stringWithFormat:@"%u",arc4random() % 999999];
  self.userName = @"ios_test";
  self.roomID = [NSString stringWithFormat:@"%u",arc4random() % 999999];
  self.appID = <#appID#>;
  self.appSign = <#appSign#>;
  self.roomIDTextField.text = [NSString stringWithFormat:@"%u",arc4random() % 999999];
}
- (IBAction)startLiveAudio:(id)sender {
  if(self.roomIDTextField.text.length >0){
    self.roomID = self.roomIDTextField.text;
  }
  
  ZegoUIKitPrebuiltLiveAudioRoomConfig *config = [ZegoUIKitPrebuiltLiveAudioRoomConfig host];
  ZegoUIKitPrebuiltLiveAudioRoomVC *vc = [[ZegoUIKitPrebuiltLiveAudioRoomVC alloc] init:self.appID
                                                                                appSign:self.appSign
                                                                                 userID:self.userID
                                                                               userName:self.userName
                                                                                 roomID:self.roomID
                                                                                 config:config];
//  [vc setBackgroundView:self.view];
  vc.modalPresentationStyle = UIModalPresentationFullScreen;
  [self presentViewController:vc animated:YES completion:^{
    
  }];
}

- (IBAction)watchLiveAudio:(id)sender {
  if(self.roomIDTextField.text.length >0){
    self.roomID = self.roomIDTextField.text;
  }
  ZegoUIKitPrebuiltLiveAudioRoomConfig *config = [ZegoUIKitPrebuiltLiveAudioRoomConfig audience];
  ZegoUIKitPrebuiltLiveAudioRoomVC *vc = [[ZegoUIKitPrebuiltLiveAudioRoomVC alloc] init:self.appID
                                                                                appSign:self.appSign
                                                                                 userID:self.userID
                                                                               userName:self.userName
                                                                                 roomID:self.roomID
                                                                                 config:config];
  [vc setBackgroundView:self.view];
  vc.modalPresentationStyle = UIModalPresentationFullScreen;
  [self presentViewController:vc animated:YES completion:^{
    
  }];
}


@end
