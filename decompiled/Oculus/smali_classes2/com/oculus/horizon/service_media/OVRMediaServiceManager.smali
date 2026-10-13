.class public Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
.super Ljava/lang/Object;
.source "OVRMediaServiceManager.java"

# interfaces
.implements Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;
.implements Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager$VRLifecycle;


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;,
        Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;
    }
.end annotation


# static fields
.field static final PRIVILEGED_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCaptureReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field private mCastAudioPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCastManager:Lcom/oculus/horizon/cast/CastManager;

.field private final mChromecastAudioLock:Ljava/lang/Object;

.field private final mChromecastManager:Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mForegroundService:Lcom/oculus/horizon/service_media/ForegroundServiceInterface;

.field private mInitialized:Z

.field private final mLivestreamingErrorUtility:Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static final $ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRMediaServiceManagerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;
    .locals 1
    .annotation build Lcom/facebook/ultralight/AutoGeneratedAccessMethod;
    .end annotation

    .prologue
    .line 12
    const-string v0, "$ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRMediaServiceManagerProvider$xXXACCESS_METHOD"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    sget v0, Lcom/oculus/horizon/service_media/ServiceMediaModule$UL_id;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRMediaServiceManagerProvider$xXXBINDING_ID:I

    .line 17
    invoke-static {v0, p0}, Lcom/facebook/ultralight/UL$factorymap;->get(ILcom/facebook/inject/InjectorLike;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;

    .line 12
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    const-class v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    .line 1039
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "start_streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "start_party_video_streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "stop_streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "stop_party_video_streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "update_microphone_status"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "permission_status"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "is_streaming_enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "update_comments_visibility"

    aput-object v3, v1, v2

    .line 1041
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->PRIVILEGED_COMMANDS:Ljava/util/Set;

    .line 1039
    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service_media/ForegroundServiceInterface;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service_media/ForegroundServiceInterface;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastAudioLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$1;-><init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastManager:Lcom/oculus/horizon/cast/CastManager;

    .line 164
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CastBroadcastReceiver;-><init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCaptureReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 167
    invoke-static {p1}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->$ul_$xXXcom_oculus_horizon_service_ExternalPlatformLocal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    invoke-static {p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginModule;->$ul_$xXXcom_oculus_horizon_platformplugin_PlatformPluginManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRLivestreamingErrorUtility$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingErrorUtility:Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;

    invoke-static {p1}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-static {p1}, Lcom/oculus/logging/utils/UtilsModule;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    invoke-static {p1}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->$ul_$xXXcom_oculus_horizon_abuse$x5Fprevention_AbuseAVCapture$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/FileCapture;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_FileCapture$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/FileCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {p1}, Lcom/oculus/horizon/cast/CastHTTPServer;->$ul_$xXXcom_oculus_horizon_cast_CastHTTPServer$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cast/CastHTTPServer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;

    invoke-static {p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->$ul_$xXXcom_oculus_horizon_vr$x5Flifecycle_VRLifecycleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-static {p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p1}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/SurfaceCapture;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_SurfaceCapture$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/SurfaceCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;

    invoke-static {p1}, Lcom/oculus/horizon/chromecast/interfaces/ChromecastInterfacesModule;->$ul_$xXXcom_oculus_horizon_chromecast_interfaces_ChromecastManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastManager:Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRMediaServiceNotification$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_ForegroundAppChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-static {p1}, Lcom/oculus/horizon/service_media/WebRTCCapture;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_WebRTCCapture$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/WebRTCCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    .line 168
    iput-object p2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundService:Lcom/oculus/horizon/service_media/ForegroundServiceInterface;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->updateCastingState()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/cast/CastManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastManager:Lcom/oculus/horizon/cast/CastManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)Lcom/oculus/horizon/service_media/FileCapture;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    return-object v0
.end method

.method private broadcastLivestreamingStatusUpdatesToPlatformSDK()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->clientListContains(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.livestreaming_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getLivestreamingStatusBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 747
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->updateCastingState()V

    goto :goto_0
.end method

.method private handleStreamingError(Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;)V
    .locals 2

    .prologue
    .line 766
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$4;->$SwitchMap$com$oculus$horizon$service_media$OVRMediaServiceManager$CaptureErrorType:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 771
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->streaming_error_notification_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showStreamingErrorWithDescription(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingErrorUtility:Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;->broadcastLivestreamingError()V

    .line 778
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingErrorUtility:Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;->broadcastCastingError()V

    .line 779
    return-void

    .line 768
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/oculus/horizon/R$string;->stopped_by_another_capture_notification_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isApplicationAbleToUseCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1056
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->PRIVILEGED_COMMANDS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-string v0, "com.oculus.systemactivities"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oculus.vrshell.home"

    .line 1058
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oculus.vrshell"

    .line 1059
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "App does not have permission to do this."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidUser()Z
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "User not signed in"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseLivestreaming(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->setIsPaused(Z)V

    .line 507
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedLivestreamingApp(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/WebRTCCapture;->pauseCapture(Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method private resumeLivestreaming(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->setIsPaused(Z)V

    .line 638
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/WebRTCCapture;->resumeCapture(Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method

.method private setupVrCastManager()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->isStandaloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->isCompatibleOSVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "setup VrCastManager"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;-><init>(Landroid/content/Context;Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    .line 212
    :cond_0
    return-void
.end method

.method private startGearChromecasting(Z)V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Tried startGearChromecasting(), but mPackageName was null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-eqz p1, :cond_0

    .line 364
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "startGearChromecasting() for %s"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.chromecast_start_streaming"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->drainCastAudioPlayers()V

    .line 371
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isChromecastRunningCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showChromecastAudioDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopGearChromecasting()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isChromecastRunningCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastManager:Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;

    invoke-interface {v0}, Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;->stopCasting()V

    .line 386
    :cond_0
    return-void
.end method

.method private updateCastingState()V
    .locals 4

    .prologue
    .line 752
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.oculus.systemactivities.LOCAL_STREAM_STATE_UPDATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    const-string v0, "com.oculus.vrshell"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v2, "is_capture_running"

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 757
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    sget-object v3, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 758
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 754
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 762
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPCMDataToChromecastPlayer([SIIIIJ)V
    .locals 6

    .prologue
    .line 396
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastAudioLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x10

    if-eq p4, v0, :cond_1

    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    .line 404
    :cond_1
    :try_start_1
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Adding new CastAudioPlayer for track %d"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    .line 406
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    .line 408
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p3, p2, p4}, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;-><init>(Landroid/content/Context;III)V

    .line 405
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;

    .line 415
    if-eqz v0, :cond_3

    .line 416
    array-length v2, p1

    invoke-virtual {v0, p1, v2}, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->update([SI)V

    .line 418
    :cond_3
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public broadcastPartyChatLocalState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1014
    const-string v0, "local_connection_state"

    .line 1015
    const-string v0, "connection_reason"

    .line 1016
    const-string v0, "connection_retries"

    .line 1019
    const-string v0, "local_connection_state"

    .line 1020
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1021
    const-string v1, "connection_reason"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1022
    const-string v2, "connection_retries"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1024
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showPartyChatConnectionError()V

    .line 1028
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-le v2, v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showPartyChatReconnectSucceed()V

    .line 1031
    :cond_1
    return-void
.end method

.method public broadcastScreenCapture()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/FileCapture;->broadcastCaptureState()V

    .line 1246
    return-void
.end method

.method public cancelAbuseCapture(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 872
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 873
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    const-string v1, "recording_command_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 882
    :goto_0
    return-object v0

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->USER:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    .line 879
    invoke-virtual {v1, v2, p1, v3}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->cancel(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;)Z

    move-result v1

    .line 881
    const-string v2, "recording_command_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public cancelAbuseCaptureDueToBeingInterrupted()Z
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopAbuseRecordingOverlay()V

    .line 894
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->cancelDueToBeingInterrupted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public connectToLifecycleManager()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->connect(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public createFacebookLivestreamingManager()V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 457
    new-instance v0, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/service_media/FacebookLiveStreamingManager;-><init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 459
    return-void
.end method

.method public createPartyVideoStreamingManager()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 468
    :cond_0
    new-instance v0, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/service_media/PartyVideoStreamingManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 469
    return-void
.end method

.method public declared-synchronized deinit()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->teardownPlatformPlugin()V

    .line 242
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 243
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->cancelAbuseCaptureDueToBeingInterrupted()Z

    .line 247
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->pauseGearChromecasting()V

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->STANDBY:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cast/CastHTTPServer;->stop(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->unbindVrCastService()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    .line 256
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnectFromLifecycleManager()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVRLifecycleManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleManager;->disconnect(Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public discoverVrCastDevices(Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;)V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-nez v0, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1270
    :cond_0
    new-instance v0, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-direct {v0, v1, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;-><init>(Lcom/oculus/horizon/service_media/vrcast/VrCastManager;Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;)V

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask;->discover()V

    goto :goto_0
.end method

.method public drainCastAudioPlayers()V
    .locals 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastAudioLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;

    .line 425
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/chromecast/player/CastAudioPlayer;->shutdown(Landroid/content/Context;)V

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastAudioPlayers:Ljava/util/HashMap;

    .line 430
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    return-void
.end method

.method public declared-synchronized ensureInitialized()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setupMediaService()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCastingDevice()Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-nez v0, :cond_0

    .line 1293
    const/4 v0, 0x0

    .line 1295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->getCastingDevice()Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getLivestreamingStatusBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 679
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 684
    const-string v0, "mic_enabled"

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    .line 686
    invoke-virtual {v4}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getIsLivestreamingMicrophoneEnabled()Z

    move-result v4

    .line 684
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 688
    const-string v4, "livestreaming_enabled"

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 691
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    sget-object v5, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 692
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 688
    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 694
    const-string v4, "livestreaming_type"

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    const-string v4, "is_paused"

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 700
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 698
    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 702
    const-string v0, "comments_visible"

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 704
    invoke-virtual {v4}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getCommentsVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 702
    :goto_3
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    return-object v3

    :cond_0
    move v0, v2

    .line 692
    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 696
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    iget v0, v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->mVal:I

    goto :goto_1

    :cond_2
    move v0, v2

    .line 700
    goto :goto_2

    :cond_3
    move v1, v2

    .line 704
    goto :goto_3
.end method

.method public handleBroadcastSurfaceMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 929
    const-string v0, "surface"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing surface parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    .line 935
    :cond_0
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing package_name parameter"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_1
    const-string v0, "surface"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 942
    const-string v2, "package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    const-string v3, "error_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 954
    if-eqz v3, :cond_3

    .line 955
    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingErrorUtility:Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;

    invoke-virtual {v4}, Lcom/oculus/horizon/service_media/OVRLivestreamingErrorUtility;->canSystemHandleErrorBroadcast()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v1

    .line 956
    goto :goto_0

    .line 958
    :cond_2
    sget-object v4, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "Supported version of SA found, error broadcast proceeding."

    invoke-static {v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 967
    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    invoke-virtual {v4, v0}, Lcom/oculus/horizon/service_media/WebRTCCapture;->setSurface(Landroid/view/Surface;)V

    .line 968
    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    const-string v5, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v0, v6}, Lcom/oculus/horizon/service_media/WebRTCCapture;->sendSurfaceBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;Z)Z

    .line 975
    :cond_4
    sget-object v2, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "Surface = %s, errorCode = %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v0, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 978
    if-eqz v3, :cond_6

    .line 979
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_5

    .line 980
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->onWebRTCError()V

    .line 981
    iput-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 983
    :cond_5
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->GENERIC:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStreamingError(Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;)V

    move-object v0, v1

    .line 984
    goto :goto_0

    .line 987
    :cond_6
    if-nez v0, :cond_7

    .line 989
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 992
    :cond_7
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->SUCCESS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public handleCheckLivestreamingCapabilityEvent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 476
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v2, "streaming_enabled"

    .line 482
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isPackageCapableOfLivestreaming(Ljava/lang/String;)Z

    move-result v0

    .line 480
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    return-object v1
.end method

.method public handleLivestreamingMicStateFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 668
    const-string v0, "microphone_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 672
    :cond_0
    const-string v0, "microphone_status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 673
    invoke-static {v0}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    move-result-object v0

    .line 674
    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 675
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setLivestreamingMicrophoneMuted(Z)V

    goto :goto_0

    .line 674
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleLivestreamingRawPCM([SIIIIJ)V
    .locals 8

    .prologue
    .line 717
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/horizon/service_media/FileCapture;->handleAudioStream([SIIIJ)V

    .line 719
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isChromecastRunningCached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual/range {p0 .. p7}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->addPCMDataToChromecastPlayer([SIIIIJ)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 729
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    .line 730
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->shouldCheckForegroundApp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 731
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setCapturedPCM([SIIIJ)V

    goto :goto_0
.end method

.method public handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-nez v0, :cond_1

    .line 516
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_PACKAGE_SET:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    .line 531
    :cond_0
    :goto_0
    return-object v0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->initialize(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingMicStateFromBundle(Landroid/os/Bundle;)V

    .line 528
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 529
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 531
    iget-boolean v1, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowLivestreaming:Z

    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startLivestreaming(ZZ)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public handleStartAbuseRecordingOverlay(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 790
    new-instance v0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    .line 791
    if-eqz p2, :cond_0

    .line 797
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->showRecordingOverlay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public handleStopAbuseRecordingOverlay()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->hideRecordingOverlay(Landroid/content/Context;)V

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    .line 805
    :cond_0
    return-void
.end method

.method public handleStopLivestreamingEvent()Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundService:Lcom/oculus/horizon/service_media/ForegroundServiceInterface;

    invoke-interface {v0}, Lcom/oculus/horizon/service_media/ForegroundServiceInterface;->teardownService()V

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->stopStreaming(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastLivestreamingStatusUpdatesToPlatformSDK()V

    .line 612
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v1, v2, v2}, Lcom/oculus/horizon/platform/PresenceManager;->livestreamingStateChanged(ZZ)V

    .line 614
    return-object v0
.end method

.method public handleStreamAndCastPauseEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->pauseLivestreaming(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->pauseGearChromecasting()V

    .line 493
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastLivestreamingStatusUpdatesToPlatformSDK()V

    .line 496
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopScreenCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedRecordingApp(Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getLivestreamingStatusBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public handleStreamAndCastResumeEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->resumeLivestreaming(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startGearChromecasting()V

    .line 624
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastLivestreamingStatusUpdatesToPlatformSDK()V

    .line 627
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->resumeVrCastState()V

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getLivestreamingStatusBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public handleUpdateLSCommentVisibilityEvent(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 643
    const-string v0, "visibility"

    .line 644
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 645
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->updateCommentVisibility(Landroid/content/Context;Z)V

    .line 649
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 650
    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getCommentsVisible()Z

    move-result v2

    .line 649
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/platform/PresenceManager;->livestreamingStateChanged(ZZ)V

    .line 655
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "oculus_livestreaming_comments_visibility_updated"

    .line 656
    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    .line 659
    invoke-virtual {v2}, Lcom/oculus/horizon/platform/PresenceManager;->getLastRunningAppIDThatIsNotSysUtilsOrSysActivities()Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "livestreaming_comments_visible"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 662
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getCommentsVisible()Z

    move-result v2

    .line 660
    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 663
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 665
    :cond_0
    return-void
.end method

.method public isApplicationAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isValidUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isApplicationAbleToUseCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChromecastRunningCached()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mChromecastManager:Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;

    invoke-interface {v0}, Lcom/oculus/horizon/chromecast/interfaces/ChromecastManager;->isCasting()Z

    move-result v0

    return v0
.end method

.method public isFileCaptureRecording()Z
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/FileCapture;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isLivestreamingManagerInitialized()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageCapableOfLivestreaming(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isChromecastRunningCached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    .line 447
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 448
    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowLivestreaming:Z

    goto :goto_0
.end method

.method public onAppSwitch()V
    .locals 6

    .prologue
    .line 1089
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onAppSwitch"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1093
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 1095
    iget-boolean v1, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowScreenRecording:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopScreenCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedRecordingApp(Ljava/lang/String;)V

    .line 1118
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/SurfaceCapture;->isCapturingInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    if-nez v1, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedRecordingApp(Ljava/lang/String;)V

    .line 1104
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v5, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1109
    invoke-virtual {v4, v5}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->isMicrophoneUsageExclusive(Ljava/lang/String;)Z

    move-result v4

    .line 1106
    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->onAppStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1110
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowScreenRecording:Z

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/service_media/FileCapture;->onAppSwitch(Ljava/lang/String;Z)V

    .line 1111
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/service_media/SurfaceCapture;->onAppSwitch(Ljava/lang/String;Z)V

    .line 1116
    :cond_2
    iget-boolean v1, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    invoke-direct {p0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startGearChromecasting(Z)V

    .line 1117
    iget-boolean v1, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowLivestreaming:Z

    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startLivestreaming(ZZ)Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onHeadsetMounted()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setHeadsetMountState(Z)V

    .line 180
    return-void
.end method

.method public onHeadsetUnmounted()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setHeadsetMountState(Z)V

    .line 185
    return-void
.end method

.method public onVRSessionEnded()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->teardownMediaService()V

    .line 193
    return-void
.end method

.method public onVRSessionStarted()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public pauseGearChromecasting()V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->drainCastAudioPlayers()V

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.chromecast_stop_streaming"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public rebroadcastAbuseRecordingOverlay()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseRecordingOverlayManager:Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->showRecordingOverlay(Landroid/content/Context;)V

    .line 816
    :cond_0
    return-void
.end method

.method public safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    return-object v0
.end method

.method public sendCastNotification(Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V
    .locals 4

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastManager:Lcom/oculus/horizon/cast/CastManager;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/cast/CastHTTPServer;->start(Lcom/oculus/horizon/cast/CastManager;Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)Landroid/util/Pair;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v3, Lcom/oculus/horizon/api/media/CastNotifRequest;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/oculus/horizon/api/media/CastNotifRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$2;-><init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    invoke-virtual {v2, v3, v0}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to start cast server"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCaptureKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/WebRTCCapture;->setCaptureKey(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public setCurrentRunningApp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1084
    return-void
.end method

.method public setHeadsetMountState(Z)V
    .locals 3

    .prologue
    .line 306
    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startGearChromecasting()V

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCaptureReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCaptureReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v2}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setHeadsetMountStateAndConnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;Z)V

    .line 336
    return-void

    .line 313
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCaptureReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->pauseGearChromecasting()V

    .line 322
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopScreenCapture()Z

    .line 326
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/FileCapture;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    .line 327
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/FileCapture;->getCaptureMode()Lcom/oculus/horizon/service_media/FileCapture$Mode;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/service_media/FileCapture$Mode;->ABUSE_CAPTURE:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showAubseRecordingInterrupted()V

    .line 329
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->cancelAbuseCaptureDueToBeingInterrupted()Z

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Receiver was not registered"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setupMediaService()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "setupMediaService"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundService:Lcom/oculus/horizon/service_media/ForegroundServiceInterface;

    invoke-interface {v0}, Lcom/oculus/horizon/service_media/ForegroundServiceInterface;->makeServiceForeground()V

    .line 204
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setupVrCastManager()V

    .line 205
    return-void
.end method

.method public showPartyChatResume()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showPartyChatResumed()V

    .line 1006
    return-void
.end method

.method public showPartyChatSuspend()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showPartyChatSuspend()V

    .line 1011
    return-void
.end method

.method public startAbuseCapture()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 831
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 832
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    const-string v2, "recording_command_status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 859
    :goto_0
    return-object v0

    .line 842
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mWebRTCCapture:Lcom/oculus/horizon/service_media/WebRTCCapture;

    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    const-string v4, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/oculus/horizon/service_media/WebRTCCapture;->sendSurfaceBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 847
    goto :goto_0

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->start(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 852
    :cond_2
    const-string v3, "recording_command_status"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 854
    if-nez v0, :cond_3

    move-object v0, v1

    .line 855
    goto :goto_0

    .line 858
    :cond_3
    const-string v0, "recording_uuid"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 859
    goto :goto_0
.end method

.method public startCaptureToSurface(Landroid/view/Surface;)Z
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1250
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 1252
    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedRecordingApp(Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x0

    .line 1258
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/service_media/SurfaceCapture;->start(Ljava/lang/String;Landroid/view/Surface;)Z

    move-result v0

    goto :goto_0
.end method

.method public startCastNativeReceiver(Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V
    .locals 3

    .prologue
    .line 1155
    new-instance v0, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;

    .line 1156
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->safeGetPPM()Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/oculus/horizon/service_media/CastNativeReceiverManager;-><init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;Lcom/oculus/horizon/service_media/vrcast/VrCastManager;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 1157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1158
    const-string v1, "microphone_status"

    sget-object v2, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    .line 1160
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->getValue()I

    move-result v2

    .line 1158
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1161
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleLivestreamingStartEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1162
    return-void
.end method

.method public startCastServer(Landroid/content/Intent;Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 1126
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastManager:Lcom/oculus/horizon/cast/CastManager;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oculus/horizon/cast/CastHTTPServer;->start(Lcom/oculus/horizon/cast/CastManager;Landroid/content/Intent;Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V

    .line 1127
    return-void
.end method

.method public startGearChromecasting()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 352
    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowVrCasting:Z

    invoke-direct {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startGearChromecasting(Z)V

    .line 353
    return-void
.end method

.method public startLivestreaming(ZZ)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 536
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "startLivestreaming for %s"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "No packagename set"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->NO_PACKAGE_SET:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "LivestreamingManager Not initialized"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 553
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-ne v0, v1, :cond_2

    .line 558
    :goto_1
    if-eqz p2, :cond_6

    .line 559
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->shouldCheckForegroundApp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 560
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Current package: %s is not the foregrounded app."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    sget-object v0, Lcom/oculus/horizon/service_media/LivestreamStartStatus;->MISSING_PARAMETERS:Lcom/oculus/horizon/service_media/LivestreamStartStatus;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getLivestreamingResponseForUM(Lcom/oculus/horizon/service_media/LivestreamStartStatus;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    move p2, p1

    .line 553
    goto :goto_1

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 569
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->resumeLivestreaming(Ljava/lang/String;)V

    .line 572
    :cond_4
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->startStreaming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 575
    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->FACEBOOK:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-ne v1, v2, :cond_5

    .line 577
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showNowStreaming(Ljava/lang/String;)V

    .line 589
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastLivestreamingStatusUpdatesToPlatformSDK()V

    .line 592
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    .line 593
    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v2

    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v3}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getCommentsVisible()Z

    move-result v3

    .line 592
    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/platform/PresenceManager;->livestreamingStateChanged(ZZ)V

    goto/16 :goto_0

    .line 581
    :cond_6
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isLivestreamingManagerInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsPaused()Z

    move-result v0

    if-nez v0, :cond_7

    .line 582
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->pauseLivestreaming(Ljava/lang/String;)V

    .line 585
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->handleUnsupportedApplication(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2
.end method

.method public startScreenCapture()V
    .locals 4

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 1195
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mExternalPlatformLocal:Lcom/oculus/horizon/service/ExternalPlatformLocal;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1196
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->checkAppMediaCapabilityGranted(Ljava/lang/String;)Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;

    move-result-object v0

    .line 1197
    iget-boolean v0, v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$AppMediaCapabilities;->mAllowScreenRecording:Z

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showUnsupportedRecordingApp(Ljava/lang/String;)V

    .line 1224
    :goto_0
    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    new-instance v0, Lcom/oculus/horizon/util/permissions/PermissionRequest;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$3;-><init>(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/util/permissions/PermissionRequest;-><init>(Landroid/content/Context;Lcom/oculus/horizon/util/permissions/PermissionRequest$Callback;)V

    .line 1218
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/util/permissions/PermissionRequest;->requestPermission(Ljava/lang/String;J)Z

    move-result v0

    .line 1219
    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "Permission request made? %b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    sget-object v2, Lcom/oculus/horizon/service_media/FileCapture$Mode;->CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/service_media/FileCapture;->start(Ljava/lang/String;Lcom/oculus/horizon/service_media/FileCapture$Mode;)Z

    goto :goto_0
.end method

.method public startVrCastCasting(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAllCaptureServices()V

    .line 1279
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->startCasting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAbuseCapture(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 907
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 908
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    const-string v1, "recording_command_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    :goto_0
    return-object v0

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopAbuseRecordingOverlay()V

    .line 915
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mAbuseAVCapture:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    iget-object v2, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;->USER:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;

    .line 916
    invoke-virtual {v1, v2, p1, v3}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->stop(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;)Z

    move-result v1

    .line 917
    const-string v2, "recording_command_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method stopAllCaptureServices()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->OTHER_CAPTURE_STARTING:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopCastServer(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getIsLivestreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;->STOPPED_BY_ANOTHER_CAPTURE:Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStreamingError(Lcom/oculus/horizon/service_media/OVRMediaServiceManager$CaptureErrorType;)V

    .line 268
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopGearChromecasting()V

    .line 281
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopScreenCapture()Z

    .line 282
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->cancelAbuseCaptureDueToBeingInterrupted()Z

    .line 283
    return-void
.end method

.method public stopCaptureToSurface()Z
    .locals 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mSurfaceCapture:Lcom/oculus/horizon/service_media/SurfaceCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/SurfaceCapture;->stop(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopCastNativeReceiver()V
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mLivestreamingManager:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;->getType()Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    if-ne v0, v1, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopLivestreamingEvent()Landroid/os/Bundle;

    .line 1168
    :cond_0
    return-void
.end method

.method public stopCastServer(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mCastHTTPServer:Lcom/oculus/horizon/cast/CastHTTPServer;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/cast/CastHTTPServer;->stop(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V

    .line 1131
    return-void
.end method

.method public stopLocalStreaming()V
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopCastServer(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V

    .line 1137
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V

    .line 1140
    :cond_0
    return-void
.end method

.method public stopScreenCapture()Z
    .locals 2

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->isFileCaptureRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    .line 1229
    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/FileCapture;->getCaptureMode()Lcom/oculus/horizon/service_media/FileCapture$Mode;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/service_media/FileCapture$Mode;->CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mFileCapture:Lcom/oculus/horizon/service_media/FileCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPackageName:Ljava/lang/String;

    .line 1230
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/FileCapture;->stop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->isStandaloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mOVRMediaServiceNotification:Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceNotification;->showCaptureRecordingSucceed()V

    .line 1234
    :cond_0
    const/4 v0, 0x1

    .line 1237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopVrCast()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    if-nez v0, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mVrCastManager:Lcom/oculus/horizon/service_media/vrcast/VrCastManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/vrcast/VrCastManager;->stopCast()V

    goto :goto_0
.end method

.method public teardownMediaService()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "teardownMediaService"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mForegroundService:Lcom/oculus/horizon/service_media/ForegroundServiceInterface;

    invoke-interface {v0}, Lcom/oculus/horizon/service_media/ForegroundServiceInterface;->teardownService()V

    .line 223
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->deinit()V

    .line 224
    return-void
.end method

.method public teardownPlatformPlugin()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "teardownPlatformPlugin - disconnecting ppm"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->mPlatformPluginManager:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->disconnect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 290
    return-void
.end method
