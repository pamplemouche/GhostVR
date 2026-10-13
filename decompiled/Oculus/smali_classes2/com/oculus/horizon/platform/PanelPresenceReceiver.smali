.class public Lcom/oculus/horizon/platform/PanelPresenceReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "PanelPresenceReceiver.java"


# instance fields
.field mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/platform/PanelPresenceReceiver;)V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/platform/PanelPresenceReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/platform/PanelPresenceReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/platform/PanelPresenceReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/platform/PanelPresenceReceiver;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/platform/PanelPresenceReceiver;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.horizon.SET_NEW_PANEL_ACTIVE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 3

    .prologue
    .line 12
    invoke-static {p1, p0}, Lcom/oculus/horizon/platform/PanelPresenceReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/platform/PanelPresenceReceiver;)V

    .line 23
    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "service_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/oculus/horizon/platform/PanelPresenceReceiver;->mPresenceManager:Lcom/oculus/horizon/platform/PresenceManager;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/platform/PresenceManager;->panelApplicationChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
