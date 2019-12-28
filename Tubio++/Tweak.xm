%hook MobileYTWebViewController
- (BOOL)isPremiumVersion {
    return 1;
}
- (void)setIsPremiumVersion:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook RemoteRequestDelegate
- (void)initWithReplySocket:(id)arg1 url:(id)arg2 host:(id)arg3 port:(int64_t)arg4 resource:(id)arg5 headers:(id)arg6 andQueue:(id)arg7 isM3U8:(BOOL)arg8 isPremium:(BOOL)arg9 useSD:(BOOL)arg10 {
    arg9 = 1;
    %orig;
}
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PlaylistInputStream
- (void)initWithPlaylistURL:(id)arg1 isPremium:(BOOL)arg2 useSD:(BOOL)arg3 parent:(id)arg4 {
    arg2 = 1;
    %orig;
}
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook TBInappPurchaseManager
- (BOOL)productPurchased:(id)arg1 {
    return 1;
}
%end