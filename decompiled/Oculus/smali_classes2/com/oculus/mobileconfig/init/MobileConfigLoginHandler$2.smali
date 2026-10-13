.class Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;
.super Ljava/lang/Object;
.source "MobileConfigLoginHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->afterLoginAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;


# direct methods
.method constructor <init>(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 52
    iget-object v0, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    .line 53
    invoke-static {v0}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$200(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;

    .line 54
    invoke-static {}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting Tigon service"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v1, Lcom/oculus/mobileconfig/init/MobileConfigInitModule$UL_id;->$ul_$xXXcom_oculus_mobileconfig_init_MobileConfigInit$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-static {v2}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$100(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/mobileconfig/init/MobileConfigInit;

    iget-object v2, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    .line 57
    invoke-static {v2}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$300(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/auth/credentials/Credentials;

    iget-object v3, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-static {v3}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$400(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/tigon/iface/TigonServiceHolder;

    .line 56
    invoke-virtual {v1, v2, v3, v5}, Lcom/oculus/mobileconfig/init/MobileConfigInit;->login(Lcom/oculus/auth/credentials/Credentials;Lcom/facebook/tigon/iface/TigonServiceHolder;Z)V

    .line 62
    iget-object v1, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    .line 63
    invoke-static {v1}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$500(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;

    .line 64
    invoke-virtual {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryImpl;->refreshSessionState()V

    .line 68
    sget v1, Lcom/oculus/mobileconfig/init/MobileConfigInitModule$UL_id;->$ul_$xXXcom_oculus_mobileconfig_init_MobileConfigInitOptions$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$2;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-static {v2}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$100(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;

    iget-boolean v1, v1, Lcom/oculus/mobileconfig/init/MobileConfigInitOptions;->shouldFetchOnLogin:Z

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updating MobileConfig on login"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v7}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->tryUpdateConfigsSynchronously(I)Z

    move-result v1

    .line 73
    invoke-static {}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Update completed or timed out - sync fetched: %s"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigManagerSingletonHolder;->isFetchNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Unable to finish downloading config values after: %d ms"

    new-array v2, v5, [Ljava/lang/Object;

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 77
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
