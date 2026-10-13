.class public Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;
.super Landroid/app/Activity;
.source "DeepLinkResponseHandler.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p2, :cond_1

    .line 47
    sget-object v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t parse the deep link. Intent object was null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    sget-object v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t handle notification when user is not logged in"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 60
    if-nez v1, :cond_3

    .line 61
    sget-object v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t handle notification when uri is null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportDeepLinkTap(Landroid/net/Uri;)V

    .line 68
    sget v0, Lcom/oculus/horizon/deeplinking/DeeplinkingModule$UL_id;->$ul_$xXXcom_oculus_horizon_deeplinking_DeepLinkRouter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;->isUriValid(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    sget-object v0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Unknown notification route"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_4
    sget v0, Lcom/oculus/horizon/deeplinking/DeeplinkingModule$UL_id;->$ul_$xXXcom_oculus_horizon_deeplinking_DeepLinkRouter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/deeplinking/DeepLinkRouter;->getLaunchIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0, p0}, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/deeplinking/DeepLinkResponseHandler;->finish()V

    .line 42
    return-void
.end method
