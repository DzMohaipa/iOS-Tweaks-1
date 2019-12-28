%hook ISBaseManager
- (BOOL)isPremium:(id)arg1 {
    return 1;
}
- (BOOL)isPremiumAvailable {
    return 1;
}
%end

%hook UMONPromoMetaData
- (BOOL)isExpired {
    return 0;
}
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassOne
- (BOOL)hasPurchasedPass {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Boom.AppStateManager"));
};