%hook PCVPNLocation
- (bool)isPremium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCClient
- (double)expirationTime {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (bool)isPremium {
    return 1;
}
%end

%hook PCLocationsViewController
- (bool)isPremium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCLocationTableViewCell
- (void)updateWithLocation:(id)arg1 premium:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end