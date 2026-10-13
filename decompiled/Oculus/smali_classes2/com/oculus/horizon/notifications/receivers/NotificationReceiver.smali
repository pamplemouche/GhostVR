.class public Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;
.super Lcom/oculus/horizon/push/FbnsPushNotificationHandler;
.source "NotificationReceiver.java"


# static fields
.field private static final HOME_NOTIFICATION_KEY_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOME_NOTIFICATION_SET:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIGRATED_NOTIF_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAppManagerNotificationHandler:Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNotificationsUtils:Lcom/oculus/horizon/notifications/NotificationsUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mReachabilityChecksMethods:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVRManager:Landroid/app/IVRManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVRUtils:Lcom/oculus/util/vr/VRUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->$ul_$xXXcom_oculus_horizon_notifications_legacy_OculusNotifications$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->$ul_$xXXcom_oculus_horizon_notifications_core_NotificationBuilder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-static {p0}, Lcom/oculus/util/inject/UtilModule;->$ul_$xXXcom_oculus_util_vr_VRUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/vr/VRUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;->$ul_$xXXcom_oculus_horizon_notifications_reachability_api_ReachabilityChecksMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mReachabilityChecksMethods:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;

    invoke-static {p0}, Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;->$ul_$xXXcom_oculus_horizon_oxygen_push_AppManagerNotificationHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mAppManagerNotificationHandler:Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/SamsungModule;->$ul_$xXXandroid_app_IVRManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/IVRManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRManager:Landroid/app/IVRManager;

    invoke-static {p0}, Lcom/oculus/horizon/vr/VRStateManager;->$ul_$xXXcom_oculus_horizon_vr_VRStateManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr/VRStateManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    invoke-static {p0}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingInterfacesModule;->$ul_$xXXcom_oculus_horizon_livestreaming_interfaces_LivestreamingSessionCallbacks$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-static {p0}, Lcom/oculus/horizon/notifications/NotificationsUtils;->$ul_$xXXcom_oculus_horizon_notifications_NotificationsUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/NotificationsUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationsUtils:Lcom/oculus/horizon/notifications/NotificationsUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    const-class v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v3, v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->ACHIEVEMENT_UNLOCKED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v3, v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 128
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->MIGRATED_NOTIF_TYPES:Ljava/util/HashSet;

    .line 132
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    const-string v2, "sender_id"

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    const-string v2, "accepter_id"

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    const-string v2, "user_with_updated_status"

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->HOME_NOTIFICATION_KEY_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 144
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->FRIEND_REQUEST_ACCEPTED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_INVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UNINVITE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->HOME_NOTIFICATION_SET:Lcom/google/common/collect/ImmutableSet;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFriendOnlineNotificationAutoDismissTimeSeconds()I
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/notifications/receivers/MC$oculus_social;->friend_online_notification_auto_dismiss_timeout_seconds:J

    const/16 v1, 0x3c

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getInt(JI)I

    move-result v0

    return v0
.end method

.method private static getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFriendOnlineNotificationExperimentEnabled()Z
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/notifications/receivers/MC$oculus_social;->show_friend_online_notification:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method private isFriendOnlineNotificationHighPriorityExperimentEnabled()Z
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/notifications/receivers/MC$oculus_social;->friend_online_notification_high_priority:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method private logNotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 10
    .param p4    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 721
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationsUtils:Lcom/oculus/horizon/notifications/NotificationsUtils;

    invoke-virtual {v0}, Lcom/oculus/horizon/notifications/NotificationsUtils;->areNotificationsEnabled()Z

    move-result v3

    .line 722
    const-string v0, "push_token"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-static/range {p6 .. p6}, Lcom/oculus/horizon/push/PushTokenSharedPreferencesHelper;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 724
    const-string v0, "app_grouping_id"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 725
    const-string v0, "notif_request_id"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 726
    const-string v9, ""

    .line 728
    if-eqz p4, :cond_0

    .line 729
    const-string v0, "referrer"

    invoke-virtual {p4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationReceived(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method private static maybeNotifyHome(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 533
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->HOME_NOTIFICATION_SET:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const/4 v1, 0x0

    .line 538
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->HOME_NOTIFICATION_KEY_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->HOME_NOTIFICATION_KEY_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 546
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Did not find expected value for "

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v7

    const-string v0, " from type "

    aput-object v0, v3, v8

    aput-object p1, v3, v9

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 542
    :catch_0
    move-exception v2

    .line 543
    sget-object v3, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing "

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const-string v6, " from type "

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    invoke-static {v3, v2, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 552
    :cond_2
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPresenceNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-static {p0, v1}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->notifyHomeUserUpdated(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_3
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPartyNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-static {p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->notifyHomePartyUpdated(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private maybeShowVrNotification(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    invoke-virtual {v0}, Lcom/oculus/util/vr/VRUtils;->isVRModeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v2, 0x0

    .line 433
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPartyNotification(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    :try_start_0
    const-string v0, "action"

    invoke-static {p2, v0}, Lcom/oculus/horizon/util/json/JSONObjectUtils;->getStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    const-string v0, "user_alias"

    invoke-static {p2, v0}, Lcom/oculus/horizon/util/json/JSONObjectUtils;->getStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "user_name"

    invoke-static {p2, v1}, Lcom/oculus/horizon/util/json/JSONObjectUtils;->getStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    const-string v4, "user_id"

    invoke-static {p2, v4}, Lcom/oculus/horizon/util/json/JSONObjectUtils;->getStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 450
    iget-object v5, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v5}, Lcom/oculus/horizon/profile/UserProfileHelper;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Nom nom nom. Eating party update notif about local user."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 459
    :goto_1
    const-string v1, "Join"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    sget v1, Lcom/oculus/horizon/R$string;->notifications_party_join:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 470
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    const-string v1, ""

    invoke-virtual {v0, v2, v1, p3, p2}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showVrOnlyNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 461
    :cond_4
    const-string v1, "Leave"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    sget v1, Lcom/oculus/horizon/R$string;->notifications_party_left:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 464
    :cond_5
    sget-object v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_GATHER_IN_APPLICATION_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v0, v0, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    sget v0, Lcom/oculus/horizon/R$string;->notifications_party_app_invite:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private static notifyHomePartyUpdated(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/social/contract/SocialDBContract$Parties;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 570
    return-void
.end method

.method private static notifyHomeUserUpdated(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 564
    sget-object v0, Lcom/oculus/horizon/social/contract/SocialDBContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 566
    return-void
.end method

.method private onReceivePartyCallNotification(Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 623
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    if-ne p1, v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRManager:Landroid/app/IVRManager;

    const-string v1, "do_not_disturb_mode"

    invoke-interface {v0, v1}, Landroid/app/IVRManager;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 626
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Not ringing party call due to DND mode being on"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/vr/VRStateManager;->isDocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Not ringing party call due to headset being unmounted"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_2
    :try_start_0
    const-string v0, "request_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    const-string v0, "sender_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    const-string v0, "sender_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    const-string v0, "sender_photo"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 641
    const-string v0, "recipient_current_party_id"

    .line 642
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "recipient_current_party_id"

    .line 643
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-interface/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;->handleIncomingCallNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 643
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 653
    :cond_4
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_CANCEL:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    if-ne p1, v0, :cond_5

    .line 655
    :try_start_1
    const-string v0, "request_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    const-string v1, "sender_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    iget-object v2, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-interface {v2, v0, v1}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;->handleCallCanceledNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 664
    :cond_5
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_ACCEPT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    if-ne p1, v0, :cond_6

    .line 666
    :try_start_2
    const-string v0, "request_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    const-string v1, "sender_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    const-string v2, "party_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-interface {v3, v0, v1, v2}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;->handleCallAcceptedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 671
    :catch_2
    move-exception v0

    .line 672
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 676
    :cond_6
    sget-object v0, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->PARTY_CALL_REJECT:Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    if-ne p1, v0, :cond_0

    .line 678
    :try_start_3
    const-string v0, "request_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v1, "sender_id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    iget-object v2, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-interface {v2, v0, v1}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;->handleCallRejectedNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 682
    :catch_3
    move-exception v0

    .line 683
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private onReceiveSocial(Lcom/oculus/horizon/notifications/core/NotificationsProperties;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getType()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isNotShownToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-virtual {v0, p1, p4}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->handleNonVisibleSocialNotification(Lcom/oculus/horizon/notifications/core/NotificationsProperties;Lorg/json/JSONObject;)V

    .line 619
    :goto_0
    return-void

    .line 586
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isFromSender(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 587
    const-string v2, "sender_photo"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 592
    :goto_1
    :try_start_1
    sget-object v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->EVENT_START:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v2, v2, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    const-string v2, "applications_for_viewer2"

    .line 595
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "deeplink_message"

    .line 596
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_id"

    .line 597
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 598
    invoke-virtual {p4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "start_time"

    .line 599
    invoke-virtual {p4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "seconds_until_start_time"

    .line 600
    invoke-virtual {p4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 594
    invoke-virtual/range {v1 .. v8}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->getEventStartNotificationData(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;

    move-result-object v1

    .line 601
    iget-object p2, v1, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mTitle:Ljava/lang/String;

    .line 602
    iget-object p3, v1, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mMessage:Ljava/lang/String;

    .line 603
    iget-object v0, v1, Lcom/oculus/horizon/notifications/legacy/OculusNotifications$EventStartNotificationData;->mDeeplinkUri:Landroid/net/Uri;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v3, v0

    move-object v5, v9

    move-object v2, p3

    move-object v1, p2

    .line 610
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    if-eqz v3, :cond_3

    move-object v6, v3

    :goto_3
    move-object v3, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showSocialNotification(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;Lorg/json/JSONObject;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 588
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isFromAccepter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 589
    const-string v2, "accepter_photo"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_1

    .line 606
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v5, v0

    move-object v2, p3

    move-object v1, p2

    .line 607
    :goto_4
    sget-object v4, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Cannot parse the custom data object"

    invoke-static {v4, v6, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    goto :goto_2

    .line 618
    :cond_3
    invoke-static {}, Lcom/oculus/horizon/notifications/NotificationsDeepLinkUriCreationUtils;->buildDeepLinkForSocialLandingScreen()Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 606
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v5, v9

    move-object v2, p3

    move-object v1, p2

    goto :goto_4

    :cond_4
    move-object v9, v0

    goto :goto_1
.end method

.method private showFacebookFriendAddedNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    .locals 6

    .prologue
    .line 693
    :try_start_0
    const-string v0, "friend_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 694
    const/4 v4, 0x0

    .line 696
    :try_start_1
    const-string v0, "friend_photo"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 701
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showFacebookFriendAddedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    .line 706
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 703
    :catch_1
    move-exception v0

    .line 704
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private showFriendOnlineNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    .locals 10

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->isFriendOnlineNotificationExperimentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mVRStateManager:Lcom/oculus/horizon/vr/VRStateManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/vr/VRStateManager;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    :try_start_0
    const-string v0, "sender_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    const-string v0, "sender_photo"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 386
    const-string v0, "has_seen_party_calls_nux"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 387
    const-string v0, "activity_privacy_state"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    .line 391
    :try_start_1
    invoke-static {v0}, Lcom/oculus/horizon/social/model/PrivacyState;->valueOf(Ljava/lang/String;)Lcom/oculus/horizon/social/model/PrivacyState;

    move-result-object v8

    .line 393
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    .line 398
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->isFriendOnlineNotificationHighPriorityExperimentEnabled()Z

    move-result v5

    .line 399
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->getFriendOnlineNotificationAutoDismissTimeSeconds()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v9, p4

    .line 393
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showFriendOnlineNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZIZLcom/oculus/horizon/social/model/PrivacyState;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    :try_start_2
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the activity string "

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 407
    :catch_1
    move-exception v0

    .line 408
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse the custom data object"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showLoginCheckpointPinNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-virtual {v0, p1, p2, p4}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showLoginCheckpointPinNotification(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    .line 712
    return-void
.end method

.method private showVrToastAndPersist(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showNotification(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    .line 479
    return-void
.end method

.method private showVrToastOnly(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationBuilder:Lcom/oculus/horizon/notifications/core/NotificationBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/notifications/core/NotificationBuilder;->showVrOnlyNotification(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    .line 483
    return-void
.end method

.method private updateReachabilityChecks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mNotificationsUtils:Lcom/oculus/horizon/notifications/NotificationsUtils;

    invoke-virtual {v1}, Lcom/oculus/horizon/notifications/NotificationsUtils;->areNotificationsEnabled()Z

    move-result v1

    .line 344
    iget-object v2, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v3, Lcom/oculus/horizon/notifications/api/NotificationMedium;->PUSH:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 345
    invoke-virtual {v3}, Lcom/oculus/horizon/notifications/api/NotificationMedium;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v2, v3, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportPushReachabilityNotifsEnabled(Ljava/lang/String;Z)V

    .line 348
    sget-object v2, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_PUSH_REACHABLE:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    .line 349
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    sget-object v2, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->TYPE_NOTIFICATIONS_ENABLED:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;

    .line 355
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMutationParams$ReachabilityChecksType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    iget-object v1, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mReachabilityChecksMethods:Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;

    .line 359
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver$1;-><init>(Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V

    .line 358
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/notifications/reachability/api/ReachabilityChecksMethods;->mutatePushReachability(Ljava/lang/String;Lretrofit/Callback;)V

    .line 371
    return-void
.end method


# virtual methods
.method public maybeRunPartyChatEnforcer(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-static {p2}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isPartyNotification(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    sget-object v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->PARTY_UPDATE_RECEIVED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v1, v1, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    :try_start_0
    const-string v1, "action"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    const-string v1, "party_id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    const-string v1, "user_id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    const-string v1, "sender_id"

    .line 501
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sender_id"

    .line 502
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 506
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 509
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 523
    :goto_3
    if-eqz v0, :cond_0

    .line 524
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oculus.horizon.RUN_PARTY_CHAT_ENFORCER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing party update notif: "

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 502
    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_1

    .line 509
    :sswitch_0
    :try_start_1
    const-string v6, "Join"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    goto :goto_2

    :sswitch_1
    const-string v6, "Leave"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "Invite"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    .line 512
    :pswitch_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 519
    :pswitch_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_3

    .line 509
    :sswitch_data_0
    .sparse-switch
        -0x7d28e4d7 -> :sswitch_2
        0x23514a -> :sswitch_0
        0x45e5e97 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->onCreate()V

    .line 61
    invoke-static {p0, p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;)V

    .line 177
    return-void
.end method

.method protected onMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    new-instance v2, Lcom/oculus/horizon/notifications/core/NotificationsProperties;

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "oc_push_reachability_check"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->updateReachabilityChecks()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v3

    .line 207
    sget-object v4, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Error creating json params for reachability mutation"

    invoke-static {v4, v5, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :cond_1
    const/4 v3, 0x0

    .line 213
    :try_start_1
    invoke-static/range {p8 .. p8}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v3

    .line 222
    :goto_1
    sget-object v3, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->MIGRATED_NOTIF_TYPES:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isSocialNotification(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    .line 223
    invoke-virtual {v3}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 225
    if-nez p5, :cond_3

    .line 226
    sget-object v2, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Notification cannot be toasted without a message. Hiding notif"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :catch_1
    move-exception v4

    .line 215
    sget-object v5, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Cannot parse the custom data object"

    invoke-static {v5, v6, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v3

    goto :goto_1

    .line 231
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getDeeplink()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 237
    const/4 v7, 0x0

    .line 238
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->getCustomDataJson()Lorg/json/JSONObject;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move-object v9, p0

    .line 237
    invoke-direct/range {v3 .. v9}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->logNotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 244
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/core/NotificationsProperties;->isFeedNotif()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 245
    if-eqz p4, :cond_4

    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->showVrToastAndPersist(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto :goto_0

    .line 232
    :catch_2
    move-exception v2

    .line 233
    sget-object v3, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Malformed deeplink sent from server with error %s. Hiding notif"

    invoke-static {v3, v4, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 245
    :cond_4
    const-string p4, ""

    goto :goto_2

    .line 247
    :cond_5
    if-eqz p4, :cond_6

    :goto_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->showVrToastOnly(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto :goto_0

    :cond_6
    const-string p4, ""

    goto :goto_3

    .line 254
    :cond_7
    const/4 v7, 0x0

    .line 255
    const/4 v9, 0x0

    .line 257
    if-eqz v10, :cond_13

    .line 259
    :try_start_3
    const-string v3, "uri"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 260
    const-string v3, "uri"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 263
    const/4 v3, 0x0

    sget v4, Lcom/oculus/horizon/deeplinking/DeeplinkingModule$UL_id;->$ul_$xXXcom_oculus_horizon_deeplinking_DeepLinkRouter$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;

    invoke-virtual {v3, v7}, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;->isUriValid(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 264
    sget-object v3, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v4, "URI does not match any handlers"

    invoke-static {v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v8, "Invalid URI"

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v8}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 285
    :catch_3
    move-exception v3

    move-object v4, v9

    .line 286
    :goto_4
    sget-object v5, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Cannot parse the custom data object"

    invoke-static {v5, v6, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    move-object v7, v4

    .line 290
    :goto_5
    if-eqz v6, :cond_a

    .line 291
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->showGenericNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto/16 :goto_0

    .line 271
    :cond_8
    :try_start_4
    const-string v3, "imageUri"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 272
    const-string v3, "imageUri"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v11

    .line 276
    :goto_6
    :try_start_5
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v4, Lcom/oculus/horizon/notifications/receivers/MC$oculus_mobile_core;->samsung_device_prefixes:J

    .line 277
    invoke-interface {v3, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v10, v3}, Lcom/oculus/horizon/notifications/NotificationsHandler;->isNotificationAppSupported(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 278
    iget-object v3, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v8, "Invalid notification app"

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p7

    invoke-virtual/range {v3 .. v8}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :catch_4
    move-exception v3

    move-object v4, v11

    goto :goto_4

    :cond_9
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move-object v8, v10

    move-object v9, p0

    .line 284
    invoke-direct/range {v3 .. v9}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->logNotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v6, v7

    move-object v7, v11

    .line 287
    goto :goto_5

    .line 295
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v10, :cond_0

    .line 299
    invoke-static {p0, p1, v10}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->maybeNotifyHome(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 301
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v10, v0}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->maybeShowVrNotification(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, p0, p1, v10}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->maybeRunPartyChatEnforcer(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 305
    sget-object v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->USER_STATUS_UPDATED:Lcom/oculus/horizon/notifications/core/SocialNotificationType;

    iget-object v3, v3, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->graphQLName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 307
    :try_start_6
    const-string v3, "user_with_updated_status"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v4, "app_id"

    .line 309
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "app_id"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "app_id"

    .line 310
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 313
    :goto_7
    iget-object v6, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mLiveStreamingSessionCallbacks:Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;

    invoke-interface {v6, v3, v4, v5}, Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;->friendStatusUpdated(Ljava/lang/String;J)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 319
    :cond_b
    :goto_8
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/SocialNotificationType;->isSocialNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 320
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v2, v0, v1, v10}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->onReceiveSocial(Lcom/oculus/horizon/notifications/core/NotificationsProperties;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 310
    :cond_c
    const-wide/16 v4, 0x0

    goto :goto_7

    .line 314
    :catch_5
    move-exception v3

    .line 315
    sget-object v4, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v5, "Cannot parse the custom data object"

    invoke-static {v4, v5, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 321
    :cond_d
    const-string v3, "oc_app_manager_sync"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 322
    iget-object v2, p0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->mAppManagerNotificationHandler:Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;

    invoke-virtual {v2, v10}, Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;->handleNotification(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 323
    :cond_e
    const-string v3, "oculus_friend_online"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 324
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v10, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->showFriendOnlineNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto/16 :goto_0

    .line 325
    :cond_f
    const-string v3, "oculus_facebook_friend_added"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 326
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v10, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->showFacebookFriendAddedNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto/16 :goto_0

    .line 327
    :cond_10
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->isPartyCallNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 328
    invoke-static {p1}, Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;->fromGraphQLName(Ljava/lang/String;)Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;

    move-result-object v2

    invoke-direct {p0, v2, v10}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->onReceivePartyCallNotification(Lcom/oculus/horizon/notifications/core/PartyCallNotificationType;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 329
    :cond_11
    const-string v3, "login_checkpoint_pin"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v10, v2}, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->showLoginCheckpointPinNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/horizon/notifications/core/NotificationsProperties;)V

    goto/16 :goto_0

    :cond_12
    move-object v11, v9

    goto/16 :goto_6

    :cond_13
    move-object v6, v7

    move-object v7, v9

    goto/16 :goto_5
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 336
    sget-object v0, Lcom/oculus/horizon/notifications/receivers/NotificationReceiver;->TAG:Ljava/lang/String;

    const-string v1, "FBNS Handler onRegistrationError %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    return-void
.end method
