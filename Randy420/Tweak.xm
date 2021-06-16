#import <UIKit/UIKit.h>

%hook XYToolbarModel
- (bool)isPro {
    return %orig;
}
%end

%hook XYPlugModel
- (bool)isPro {
    return %orig;
}
%end

%hook XYExportModel
- (void)setIsPro:(bool)arg1 {
}
%end

%hook XYMonetizePerform
- (bool)isVIP {
    return 1;
}
%end

%hook XYSubscribeConfigManger
- (bool)hasVipProduct {
    return 1;
}
%end

%hook XYMediator
- (bool)Subscribe_hasSubscribed {
    return 1;
}
%end

%hook XYMonetizePerform
- (bool)isRealSubscribedWithSubscriptionProductId:(id)arg1 {
    return 1;
}
%end

%hook XYSubcribeControl
- (bool)hasSubscribe {
    return 1;
}
%end

%hook XYSubscriptionBusiness
- (bool)hasSubscribe {
    return 1;
}
%end

%hook XYSubscriptionBusiness
- (bool)isSubscribe {
    return 1;
}
%end

%hook XYSubscriptionBusiness
- (void)setSubscribe:(bool)arg1 {
    arg1 = 1;
    return %orig;
}
%end

