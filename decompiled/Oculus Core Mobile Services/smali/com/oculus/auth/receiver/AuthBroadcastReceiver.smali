.class public Lcom/oculus/auth/receiver/AuthBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AuthBroadcastReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mHandler:Lcom/oculus/auth/receiver/BaseLoginHandler;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/receiver/AuthBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/receiver/AuthBroadcastReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/receiver/AuthBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/auth/receiver/ReceiverModule;->$ul_$xXXcom_oculus_auth_receiver_BaseLoginHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/receiver/BaseLoginHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;->mHandler:Lcom/oculus/auth/receiver/BaseLoginHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 19
    invoke-static {p1, p0}, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/receiver/AuthBroadcastReceiver;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_2
    const-string v0, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :sswitch_0
    const-string v2, "com.oculus.auth.BROADCAST_LOGIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.oculus.auth.BROADCAST_LOGOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;->mHandler:Lcom/oculus/auth/receiver/BaseLoginHandler;

    invoke-interface {v0}, Lcom/oculus/auth/receiver/BaseLoginHandler;->onLogin()V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/auth/receiver/AuthBroadcastReceiver;->mHandler:Lcom/oculus/auth/receiver/BaseLoginHandler;

    invoke-interface {v0}, Lcom/oculus/auth/receiver/BaseLoginHandler;->onLogout()V

    goto :goto_2

    .line 33
    :sswitch_data_0
    .sparse-switch
        0xa0dced6 -> :sswitch_1
        0x299d587d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
