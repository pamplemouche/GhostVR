.class public Lcom/oculus/horizon/chromecast/PresentationService;
.super Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.source "PresentationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;
    }
.end annotation


# instance fields
.field private mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

.field private mSurfaceBroadcast:Lcom/oculus/horizon/capture/SurfaceBroadcast;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/chromecast/PresentationService;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/chromecast/PresentationService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/chromecast/PresentationService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/chromecast/PresentationService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/chromecast/PresentationService;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/chromecast/PresentationService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/capture/SurfaceBroadcast;->$ul_$xXXcom_oculus_horizon_capture_SurfaceBroadcast$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/capture/SurfaceBroadcast;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/chromecast/PresentationService;->mSurfaceBroadcast:Lcom/oculus/horizon/capture/SurfaceBroadcast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/chromecast/PresentationService;Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/chromecast/PresentationService;->broadcast(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/chromecast/PresentationService;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method private broadcast(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 6

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mSurfaceBroadcast:Lcom/oculus/horizon/capture/SurfaceBroadcast;

    const-string v3, "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE_WITH_SURFACE"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/capture/SurfaceBroadcast;->enqueueAndWait(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "PresentationService"

    const-string v2, "Failed to broadcast surface"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createPresentation(Landroid/view/Display;)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/oculus/horizon/chromecast/PresentationService;->dismissPresentation()V

    .line 72
    new-instance v0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    invoke-direct {v0, p0, p0, p1}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;-><init>(Lcom/oculus/horizon/chromecast/PresentationService;Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    .line 74
    new-instance v0, Lcom/oculus/horizon/chromecast/PresentationService$1;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.oculus.chromecast_start_streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.oculus.chromecast_stop_streaming"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/chromecast/PresentationService$1;-><init>(Lcom/oculus/horizon/chromecast/PresentationService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    iget-object v1, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {v1}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/chromecast/PresentationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    invoke-virtual {v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "PresentationService"

    const-string v2, "Unable to show presentation, display was removed. %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    invoke-direct {p0}, Lcom/oculus/horizon/chromecast/PresentationService;->dismissPresentation()V

    goto :goto_0
.end method

.method private dismissPresentation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    iput-object v1, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mCastStateReceiver:Lcom/facebook/secure/receiver/SecureBroadcastReceiver;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    invoke-virtual {v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->dismiss()V

    .line 66
    iput-object v1, p0, Lcom/oculus/horizon/chromecast/PresentationService;->mPresentation:Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->onCreate()V

    .line 29
    invoke-static {p0, p0}, Lcom/oculus/horizon/chromecast/PresentationService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/chromecast/PresentationService;)V

    .line 46
    return-void
.end method

.method public onCreatePresentation(Landroid/view/Display;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oculus/horizon/chromecast/PresentationService;->createPresentation(Landroid/view/Display;)V

    .line 51
    return-void
.end method

.method public onDismissPresentation()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/horizon/chromecast/PresentationService;->dismissPresentation()V

    .line 56
    return-void
.end method
