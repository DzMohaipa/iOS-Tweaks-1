%hook Cydia
- (void)applicationDidEnterBackground:(id)arg1 {
} 
%end

%hook Cydia
- (void)applicationWillResignActive:(id)arg1 {
} 
%end

%hook UIApplication
- (void)_applicationDidEnterBackground {
} 
%end