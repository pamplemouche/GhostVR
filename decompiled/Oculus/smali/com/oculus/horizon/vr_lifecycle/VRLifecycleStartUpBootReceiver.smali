.class public Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "VRLifecycleStartUpBootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mJobSchedulerLazy:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;->$ul_$xXXcom_oculus_horizon_vr$x5Flifecycle_VRLifecycleJobScheduler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->mJobSchedulerLazy:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;

    invoke-static {p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->$ul_$xXXcom_oculus_horizon_vr$x5Flifecycle_VRLifecycleSessionManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->mJobSchedulerLazy:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleJobScheduler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {p1, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V

    .line 32
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;->mVRLifecycleSessionManager:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    new-instance v1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver$1;-><init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleStartUpBootReceiver;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->markSessionEndIfNotRecentAndInfoExists(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;)V

    goto :goto_0
.end method
