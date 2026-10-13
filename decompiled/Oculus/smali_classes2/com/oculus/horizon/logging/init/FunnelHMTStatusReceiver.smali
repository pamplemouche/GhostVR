.class public Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "FunnelHMTStatusReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/logging/utils/UtilsModule;->$ul_$xXXcom_oculus_logging_utils_EventMigrationHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.intent.action.HMT_CONNECTED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private logDockToVRFunnel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "OC_NAV_TO_VR_FUNNEL"

    const-string v2, "hmt_connected"

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/oculus/logging/utils/EventMigrationHelper;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/utils/FunnelData;)V

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->mEventMigrationHelper:Lcom/oculus/logging/utils/EventMigrationHelper;

    const-string v1, "OC_NAV_TO_VR_FUNNEL"

    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->endFunnel(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {p1, p0}, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;)V

    .line 36
    const-string v0, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-class v0, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;

    const-string v1, "onHmtConnect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/logging/init/FunnelHMTStatusReceiver;->logDockToVRFunnel()V

    .line 40
    :cond_0
    return-void
.end method
