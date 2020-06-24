
%hook SBSIMLockAlertItem 
  
  - (bool)reappearsAfterUnlock {

    if ([Enabled]){
    return 0;
    
    } else {
    return %orig;
    }
 }


 %end
%ctor {
    NSMutableDictionary *settings =
    [NSMutableDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"%@/Library/Preferences/%@",NSHomeDirectory(),@"cf.1di4r.ysci_preference_bundle.plist"]];
    BOOL Enabled = [settings objectForKey:@"isEnabled"];
}
