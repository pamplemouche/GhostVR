.class public Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "PartyCallSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mReceiveFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsSettingsMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;Lcom/oculus/horizon/notifications/api/NotificationOptOutType;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->setNotificationPreference(Lcom/oculus/horizon/notifications/api/NotificationOptOutType;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mBroadcastFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mReceiveFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentNotificationPreferences()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    new-instance v1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$4;-><init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->fetchNotificationsSettings(Lretrofit/Callback;)V

    .line 138
    return-void
.end method

.method private setNotificationPreference(Lcom/oculus/horizon/notifications/api/NotificationOptOutType;Z)V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mNotificationsSettingsMethods:Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 98
    invoke-virtual {p1}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$3;-><init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V

    .line 96
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/notifications/NotificationsSettingsMethods;->mutateNotificationsPreference(Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Ljava/lang/Boolean;Lretrofit/Callback;)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 111
    invoke-virtual {v1}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/notifications/api/NotificationOptOutType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2, p2}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationsPreferenceChangeFromPartyCallSettings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PARTY_CALL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V

    .line 56
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "dismiss_notification_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    if-lez v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->settings_party_call_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mBroadcastFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 159
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mReceiveFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 160
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_party_call:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 144
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->broadcast_notification_switch:I

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mBroadcastFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 71
    sget v0, Lcom/oculus/horizon/R$id;->receive_notification_switch:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mReceiveFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mBroadcastFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    new-instance v1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$1;-><init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->mReceiveFriendOnlineNotificationSwitch:Lcom/oculus/horizon/widget/SwitchSetting;

    new-instance v1, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment$2;-><init>(Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 92
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/settings/PartyCallSettingsFragment;->getCurrentNotificationPreferences()V

    .line 93
    return-void
.end method
