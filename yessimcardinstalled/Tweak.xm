//the code so simple and clean it does not need any comments


%hook SBSIMLockAlertItem //hooking start from here
  
  - (bool)reappearsAfterUnlock {
    
    NSMutableDictionary *settings =
    [NSMutableDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"%@/Library/Preferences/%@",NSHomeDirectory(),@"cf.1di4r.ysci_preference_bundle.plist"]];
    NSNumber* shouldNotify = [settings objectForKey:@"isEnabled"];

    //cheking the switch is it on or off
  if ([shouldNotify boolValue] == YES)

  {
    return 0;

  } else {
    return %orig;
  }}


  %end
