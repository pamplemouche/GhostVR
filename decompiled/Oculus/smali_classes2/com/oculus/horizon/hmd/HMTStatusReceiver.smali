.class public Lcom/oculus/horizon/hmd/HMTStatusReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "HMTStatusReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field public static ACTION_HMT_DISCONNECT:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/hmd/HMTStatusReceiver;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/hmd/HMTStatusReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/hmd/HMTStatusReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/hmd/HMTStatusReceiver;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_os_Handler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.samsung.intent.action.HMT_DISCONNECTED"

    sput-object v0, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->ACTION_HMT_DISCONNECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->ACTION_HMT_DISCONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 4

    .prologue
    .line 19
    invoke-static {p1, p0}, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/hmd/HMTStatusReceiver;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platform/PresenceManager;->onHeadsetDisconnected()V

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasDocked(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/hmd/HMTStatusReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/hmd/HMTStatusReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/hmd/HMTStatusReceiver$1;-><init>(Lcom/oculus/horizon/hmd/HMTStatusReceiver;Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method
