.class public Lcom/oculus/auth/service/AuthServicePermissionProtected;
.super Landroid/app/IntentService;
.source "AuthServicePermissionProtected.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthManager:Lcom/oculus/auth/service/AuthManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthServicePermissionProtected;)V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/auth/service/AuthServicePermissionProtected;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthServicePermissionProtected;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthServicePermissionProtected;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/oculus/auth/service/AuthManager;->$ul_$xXXcom_oculus_auth_service_AuthManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/service/AuthManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/service/AuthServicePermissionProtected;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "AuthServicePermissionProtected"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 14
    invoke-static {p0, p0}, Lcom/oculus/auth/service/AuthServicePermissionProtected;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthServicePermissionProtected;)V

    .line 28
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    sget-object v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;->TAG:Ljava/lang/String;

    const-string v1, "Intent action is null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;->TAG:Ljava/lang/String;

    const-string v3, "Intent action is %s"

    invoke-static {v0, v3, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 47
    sget-object v0, Lcom/oculus/auth/service/AuthServicePermissionProtected;->TAG:Ljava/lang/String;

    const-string v3, "not supported action: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :pswitch_0
    const-string v3, "com.oculus.auth.ACTION_LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/auth/service/AuthServicePermissionProtected;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x5297aee
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
