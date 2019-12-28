%hook PMPlexIAPManager
- (BOOL)hasBeenPurchasedUnlockLimitedPlayback {
    return 1;
}
%end