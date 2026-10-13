.class public Lcom/oculus/auth/receiver/LoginHandlersService;
.super Landroid/app/IntentService;
.source "LoginHandlersService.java"


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/receiver/LoginHandlersService;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/auth/receiver/LoginHandlersService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/receiver/LoginHandlersService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/auth/receiver/LoginHandlersService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/receiver/LoginHandlersService;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/auth/receiver/LoginHandlersService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "LoginHandlersService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 19
    invoke-static {p0, p0}, Lcom/oculus/auth/receiver/LoginHandlersService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/receiver/LoginHandlersService;)V

    .line 31
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 36
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 43
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_1
    return-void

    .line 36
    :pswitch_0
    const-string v3, "com.oculus.auth.BROADCAST_LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 39
    :pswitch_1
    sget v0, Lcom/oculus/auth/receiver/ReceiverModule$UL_id;->$ul_$xXXcom_oculus_auth_receiver_LoginHandlersRunner$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/receiver/LoginHandlersService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/receiver/LoginHandlersRunner;

    invoke-virtual {v0}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->runLoginHandlers()V

    goto :goto_1

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x299d587d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
