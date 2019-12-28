%hook PMPlexIAPManager
- (bool)hasBeenPurchasedUnlockLimitedPlayback {
    return 1;
}
%end