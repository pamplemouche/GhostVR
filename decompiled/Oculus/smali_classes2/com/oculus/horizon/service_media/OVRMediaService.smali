.class public Lcom/oculus/horizon/service_media/OVRMediaService;
.super Lcom/oculus/security/basecomponent/OculusPublicService;
.source "OVRMediaService.java"

# interfaces
.implements Lcom/oculus/horizon/service_media/ForegroundServiceInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mShellHomeTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

.field private static final mVrShellTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;


# instance fields
.field private final mAppSwitchListener:Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;

.field private mAppSwitchManager:Lcom/oculus/horizon/service_media/AppSwitchManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mBinder:Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;

.field private mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHorizonPackageVerifier:Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

.field private mOVRMediaServiceManagerProvider:Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTrustedAppVerifier:Lcom/oculus/appmanager/verifier/TrustedAppVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVrCastServicePackageVerifier:Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service_media/OVRMediaService;)V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/service_media/OVRMediaService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service_media/OVRMediaService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service_media/OVRMediaService;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_OVRMediaServiceManagerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManagerProvider:Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;

    invoke-static {p0}, Lcom/oculus/horizon/service/CallerUtils;->$ul_$xXXcom_oculus_horizon_service_CallerUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-static {p0}, Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_vrcast_VrCastServicePackageVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mVrCastServicePackageVerifier:Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;

    invoke-static {p0}, Lcom/oculus/appmanager/verifier/TrustedAppVerifier;->$ul_$xXXcom_oculus_appmanager_verifier_TrustedAppVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/verifier/TrustedAppVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mTrustedAppVerifier:Lcom/oculus/appmanager/verifier/TrustedAppVerifier;

    invoke-static {p0}, Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_HorizonCallerPackageVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mHorizonPackageVerifier:Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;

    invoke-static {p0}, Lcom/oculus/horizon/service_media/AppSwitchManager;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_AppSwitchManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/AppSwitchManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchManager:Lcom/oculus/horizon/service_media/AppSwitchManager;

    invoke-static {p0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->$ul_$xXXcom_oculus_horizon_service$x5Fmedia_ForegroundAppChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service_media/OVRMediaService;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    .line 514
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 517
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.oculus.vrshell"

    .line 518
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 515
    invoke-static {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->mVrShellTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 520
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_APPS_SIGNATURE_HASH_RELEASE:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 523
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.oculus.vrshell.home"

    .line 524
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 521
    invoke-static {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->mShellHomeTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    .line 520
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;-><init>()V

    .line 72
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaService$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaService$1;-><init>(Lcom/oculus/horizon/service_media/OVRMediaService;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchListener:Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;

    .line 86
    new-instance v0, Lcom/oculus/horizon/service_media/OVRMediaService$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaService$2;-><init>(Lcom/oculus/horizon/service_media/OVRMediaService;)V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mBinder:Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service_media/AppSwitchManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchManager:Lcom/oculus/horizon/service_media/AppSwitchManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/service_media/OVRMediaService;)Lcom/oculus/horizon/service/CallerUtils;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oculus/horizon/service_media/OVRMediaService;->getRecordingUUID(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getRecordingUUID(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 429
    const-string v0, ""

    .line 432
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "recording_uuid"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCompanionServerAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 436
    if-nez p2, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startCastServer(Landroid/content/Intent;Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V

    goto :goto_0

    .line 440
    :sswitch_0
    const-string v1, "com.oculus.horizon.START_CAST_SERVER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "com.oculus.horizon.STOP_CAST_SERVER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "com.oculus.horizon.VRCAST_DISCOVER_ACTION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "com.oculus.horizon.VRCAST_START_CASTING_ACTION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "com.oculus.horizon.VRCAST_STOP_CASTING_ACTION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "com.oculus.horizon.VRCAST_CASTING_STATUS_ACTION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    .line 448
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    sget-object v1, Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;->TWILIGHT:Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopCastServer(Lcom/oculus/horizon/cast/CastHTTPServer$StopSource;)V

    goto :goto_0

    .line 453
    :pswitch_2
    const-string v0, "result_receiver"

    .line 454
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 455
    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VRCAST_DISCOVER_ACTION, resultReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    new-instance v2, Lcom/oculus/horizon/service_media/OVRMediaService$4;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaService$4;-><init>(Lcom/oculus/horizon/service_media/OVRMediaService;Landroid/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->discoverVrCastDevices(Lcom/oculus/horizon/service_media/vrcast/VrCastDiscoverTask$DiscoverCallback;)V

    goto/16 :goto_0

    .line 480
    :pswitch_3
    const-string v0, "deviceid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startVrCastCasting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopVrCast()V

    goto/16 :goto_0

    .line 492
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->getCastingDevice()Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    move-result-object v0

    .line 493
    if-nez v0, :cond_3

    .line 496
    new-instance v0, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;

    const-string v1, "Invalid"

    const-string v3, "invalid_id"

    sget-object v4, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;->INVALID:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

    sget-object v5, Lcom/oculus/vrcast/VrCastController$DeviceType;->Chromecast:Lcom/oculus/vrcast/VrCastController$DeviceType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;Lcom/oculus/vrcast/VrCastController$DeviceType;)V

    move-object v1, v0

    .line 503
    :goto_2
    const-string v0, "result_receiver"

    .line 504
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 505
    if-eqz v0, :cond_0

    .line 508
    invoke-static {v1}, Lcom/oculus/horizon/service_media/vrcast/VrCastBundleConverter;->deviceWithStatusToBundle(Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;)Landroid/os/Bundle;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_2

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70bb7238 -> :sswitch_3
        -0x629c66ad -> :sswitch_2
        0x1bb5f211 -> :sswitch_1
        0x45d30e36 -> :sswitch_4
        0x49b234ce -> :sswitch_5
        0x5034d29b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static isReleaseBuild()Z
    .locals 2

    .prologue
    .line 529
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "/release-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTrustedApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;Ljava/lang/String;Lcom/facebook/secure/trustedapp/TrustedApp;)Z
    .locals 4
    .param p1    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 548
    if-nez p1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 553
    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-static {p0, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 561
    if-eqz v2, :cond_4

    .line 564
    invoke-static {}, Lcom/oculus/horizon/service_media/OVRMediaService;->isReleaseBuild()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 565
    goto :goto_0

    .line 571
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move v2, v1

    .line 572
    :goto_1
    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 575
    if-eqz v2, :cond_0

    move v0, v1

    .line 576
    goto :goto_0

    :cond_3
    move v2, v0

    .line 571
    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v0

    invoke-virtual {p3, v0, p0}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(ILandroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isTrustedShellHomeApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z
    .locals 2
    .param p1    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 538
    const-string v0, "com.oculus.vrshell.home"

    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaService;->mShellHomeTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-static {p0, p1, v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->isTrustedApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;Ljava/lang/String;Lcom/facebook/secure/trustedapp/TrustedApp;)Z

    move-result v0

    return v0
.end method

.method private static isTrustedVrShellApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z
    .locals 2
    .param p1    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 533
    const-string v0, "com.oculus.vrshell"

    sget-object v1, Lcom/oculus/horizon/service_media/OVRMediaService;->mVrShellTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-static {p0, p1, v0, v1}, Lcom/oculus/horizon/service_media/OVRMediaService;->isTrustedApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;Ljava/lang/String;Lcom/facebook/secure/trustedapp/TrustedApp;)Z

    move-result v0

    return v0
.end method

.method private static sendResponseToUMHelper(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 425
    :cond_0
    return-void
.end method


# virtual methods
.method public doBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mBinder:Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;

    return-object v0
.end method

.method protected doCreate()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v1, "doCreate"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->doCreate()V

    .line 55
    invoke-static {p0, p0}, Lcom/oculus/horizon/service_media/OVRMediaService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service_media/OVRMediaService;)V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManagerProvider:Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManagerProvider;->get(Lcom/oculus/horizon/service_media/ForegroundServiceInterface;)Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->connectToLifecycleManager()V

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->ensureInitialized()V

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchListener:Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->setup(Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;)V

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchManager:Lcom/oculus/horizon/service_media/AppSwitchManager;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/AppSwitchManager;->setupOVRMediaServiceManager(Lcom/oculus/horizon/service_media/OVRMediaServiceManager;)V

    .line 191
    return-void
.end method

.method protected doDestroy()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->doDestroy()V

    .line 196
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v1, "OnDestroy()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->disconnectFromLifecycleManager()V

    .line 198
    return-void
.end method

.method public doStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "message_type"

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v1, "Invalid intent in onStartCommand"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x2

    .line 417
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->ensureInitialized()V

    .line 251
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->printPackageName(Lcom/facebook/secure/trustedapp/AppIdentity;)Ljava/lang/String;

    move-result-object v3

    .line 254
    sget-object v4, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v5, "onStartCommand Received message type: %s, caller package: %s"

    invoke-static {v4, v5, v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-static {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->isTrustedVrShellApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v4

    .line 260
    iget-object v5, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mHorizonPackageVerifier:Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;

    invoke-virtual {v5, v0}, Lcom/oculus/horizon/service_media/HorizonCallerPackageVerifier;->isHorizonTrustedApp(Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v5

    .line 261
    invoke-static {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->isTrustedShellHomeApp(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v0

    .line 268
    if-eqz v4, :cond_2

    .line 269
    const-string v6, "com.oculus.horizon.START_CAPTURE_TO_DISK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 270
    iget-object v6, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v6}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startScreenCapture()V

    .line 277
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 278
    const-string v0, "start_streaming"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    new-instance v6, Lcom/oculus/horizon/service_media/OVRMediaService$3;

    invoke-direct {v6, p0, p1}, Lcom/oculus/horizon/service_media/OVRMediaService$3;-><init>(Lcom/oculus/horizon/service_media/OVRMediaService;Landroid/content/Intent;)V

    .line 280
    invoke-virtual {v0, v6}, Lcom/oculus/executors/OculusThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mTrustedAppVerifier:Lcom/oculus/appmanager/verifier/TrustedAppVerifier;

    invoke-virtual {v0, v3}, Lcom/oculus/appmanager/verifier/TrustedAppVerifier;->isCompanionServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 303
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->handleCompanionServerAction(Landroid/content/Intent;Ljava/lang/String;)V

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mVrCastServicePackageVerifier:Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/service_media/vrcast/VrCastServicePackageVerifier;->isVrCastServiceApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    .line 310
    :cond_6
    const-string v0, "com.oculus.horizon.START_CAPTURE_TO_SURFACE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 311
    const-string v0, "surface"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 312
    if-eqz v0, :cond_9

    .line 313
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v3, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startCaptureToSurface(Landroid/view/Surface;)Z

    .line 344
    :cond_7
    :goto_2
    const-string v0, "kill_service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 345
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->teardownMediaService()V

    .line 346
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mForegroundAppChecker:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->teardown()V

    move v0, v1

    .line 347
    goto/16 :goto_0

    .line 271
    :cond_8
    const-string v6, "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    iget-object v6, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v6}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopScreenCapture()Z

    goto :goto_1

    .line 315
    :cond_9
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v3, "Surface is null, not starting capture"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 317
    :cond_a
    const-string v0, "com.oculus.horizon.STOP_CAPTURE_TO_SURFACE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopCaptureToSurface()Z

    goto :goto_2

    .line 319
    :cond_b
    const-string v0, "com.oculus.horizon.START_CAST_NATIVE_RECEIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v3, "video_height"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 322
    const-string v4, "video_width"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 323
    const-string v5, "video_fps"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 325
    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 326
    new-instance v6, Lcom/oculus/horizon/cast/VideoSpec;

    invoke-direct {v6, v3, v4, v5}, Lcom/oculus/horizon/cast/VideoSpec;-><init>(III)V

    .line 327
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v3, v0, v6}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startCastNativeReceiver(Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V

    goto :goto_2

    .line 329
    :cond_c
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v3, "Invalid parameters in Native Receiver start request, ignoring"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 331
    :cond_d
    const-string v0, "com.oculus.horizon.STOP_CAST_NATIVE_RECEIVER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopCastNativeReceiver()V

    goto/16 :goto_2

    .line 348
    :cond_e
    const-string v0, "set_package_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 350
    const-string v0, "package_name"

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    const-string v0, "capture_key"

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    sget-object v3, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v4, "Got package name intent (%s)"

    invoke-static {v3, v4, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    if-nez v0, :cond_f

    const-string v0, ""

    :cond_f
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->setCaptureKey(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mAppSwitchListener:Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/service_media/AppSwitchManager$AppSwitchListener;->onAppSwitch(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->rebroadcastAbuseRecordingOverlay()V

    :cond_10
    :goto_3
    move v0, v1

    .line 417
    goto/16 :goto_0

    .line 364
    :cond_11
    const-string v0, "show_abuse_recording_overlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 365
    const-string v0, "defer_showing_abuse_recording_overlay"

    .line 366
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 369
    const-string v2, "recording_overlay_params"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 371
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "recording_overlay_params"

    .line 373
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v3, v2, v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStartAbuseRecordingOverlay(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 376
    :catch_0
    move-exception v0

    .line 377
    sget-object v2, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v3, "Cannot parse recording overlay params"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 380
    :cond_12
    const-string v0, "dismiss_abuse_recording_overlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->handleStopAbuseRecordingOverlay()V

    goto :goto_3

    .line 386
    :cond_13
    const-string v0, "permission_status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 387
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 388
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 389
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 390
    const-string v3, "permission_status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    invoke-static {p1, v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->sendResponseToUMHelper(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 392
    :cond_14
    const-string v0, "com.oculus.horizon.START_LOCAL_STREAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 393
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    sget-object v2, Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;->HMD:Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->sendCastNotification(Lcom/oculus/horizon/cast/CastHTTPServer$StartSource;)V

    goto :goto_3

    .line 394
    :cond_15
    const-string v0, "com.oculus.horizon.STOP_LOCAL_STREAM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopLocalStreaming()V

    goto :goto_3

    .line 396
    :cond_16
    const-string v0, "com.oculus.horizon.GET_CAPTURE_STATE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 397
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->broadcastScreenCapture()V

    goto/16 :goto_3

    .line 398
    :cond_17
    const-string v0, "broadcast_abuse_capture_start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 399
    iget-object v0, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->startAbuseCapture()Landroid/os/Bundle;

    move-result-object v2

    .line 400
    const-string v0, "result_receiver"

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 402
    if-eqz v0, :cond_10

    .line 403
    invoke-virtual {v0, v8, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    .line 405
    :cond_18
    const-string v0, "broadcast_abuse_capture_stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 406
    const-string v0, "recording_uuid"

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    const-string v0, "result_receiver"

    .line 409
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 411
    iget-object v3, p0, Lcom/oculus/horizon/service_media/OVRMediaService;->mOVRMediaServiceManager:Lcom/oculus/horizon/service_media/OVRMediaServiceManager;

    invoke-virtual {v3, v2}, Lcom/oculus/horizon/service_media/OVRMediaServiceManager;->stopAbuseCapture(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 412
    if-eqz v0, :cond_10

    .line 413
    invoke-virtual {v0, v8, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_3
.end method

.method public makeServiceForeground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/oculus/horizon/service_media/OVRMediaService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    const-string v1, "message_type"

    const-string v2, "kill_service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 209
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/oculus/horizon/R$drawable;->app_icon:I

    .line 211
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->livestreaming_notification_title:I

    .line 212
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->livestreaming_notification_subtitle:I

    .line 213
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/service_media/OVRMediaService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 216
    const v1, 0x21042

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->startForeground(ILandroid/app/Notification;)V

    .line 217
    return-void
.end method

.method public teardownService()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/oculus/horizon/service_media/OVRMediaService;->TAG:Ljava/lang/String;

    const-string v1, "teardownService(), destroy enqueued"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service_media/OVRMediaService;->stopForeground(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/oculus/horizon/service_media/OVRMediaService;->stopSelf()V

    .line 224
    return-void
.end method
