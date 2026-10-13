.class public Lcom/oculus/horizon/fbconnect/FBConnectReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "FBConnectReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnect/FBConnectReceiver;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnect/FBConnectReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/fbconnect/FBConnectReceiver;)V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.fbconnect.UPDATE_CURRENT_FACEBOOK_ACCOUNT"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 3

    .prologue
    .line 17
    invoke-static {p1, p0}, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/fbconnect/FBConnectReceiver;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v1, "com.oculus.fbconnect.UPDATE_CURRENT_FACEBOOK_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Updating linked FB account on %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/fbconnect/FBConnectModule$UL_id;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    sget-object v1, Lcom/oculus/horizon/fbconnect/FBConnectReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->updateFBConnectAccountAsync(Ljava/lang/String;)Lbolts/Task;

    .line 41
    :cond_0
    return-void
.end method
