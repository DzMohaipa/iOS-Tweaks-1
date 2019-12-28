%hook MobileYTWebViewController
- (bool)isPremiumVersion {
    return 1;
}
- (void)setIsPremiumVersion:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook RemoteRequestDelegate
- (void)initWithReplySocket:(id)arg1 url:(id)arg2 host:(id)arg3 port:(int64_t)arg4 resource:(id)arg5 headers:(id)arg6 andQueue:(id)arg7 isM3U8:(bool)arg8 isPremium:(bool)arg9 useSD:(bool)arg10 {
    arg9 = 1;
    %orig;
}
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PlaylistInputStream
- (void)initWithPlaylistURL:(id)arg1 isPremium:(bool)arg2 useSD:(bool)arg3 parent:(id)arg4 {
    arg2 = 1;
    %orig;
}
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook TBInappPurchaseManager
- (bool)productPurchased:(id)arg1 {
    return 1;
}
%end