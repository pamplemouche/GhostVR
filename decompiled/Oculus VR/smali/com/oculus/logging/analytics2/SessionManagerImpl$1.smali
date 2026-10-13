.class Lcom/oculus/logging/analytics2/SessionManagerImpl$1;
.super Ljava/lang/Object;
.source "SessionManagerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/analytics2/SessionManagerImpl;
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
.field final synthetic this$0:Lcom/oculus/logging/analytics2/SessionManagerImpl;


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/oculus/logging/analytics2/SessionManagerImpl$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/oculus/logging/analytics2/SessionManagerImpl$1;->this$0:Lcom/oculus/logging/analytics2/SessionManagerImpl;

    invoke-static {v0}, Lcom/oculus/logging/analytics2/SessionManagerImpl;->access$000(Lcom/oculus/logging/analytics2/SessionManagerImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 72
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->forOculusUser(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    move-result-object v0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/oculus/logging/analytics2/SessionManagerImpl$1;->this$0:Lcom/oculus/logging/analytics2/SessionManagerImpl;

    invoke-virtual {v1, v0}, Lcom/oculus/logging/analytics2/SessionManagerImpl;->notifyOnUserLoggedIn(Lcom/facebook/analytics2/logger/PigeonIdentity;)V

    .line 80
    return-object v2

    .line 77
    :cond_0
    invoke-static {v2, v2}, Lcom/oculus/logging/analytics2/OculusPigeonIdentity;->forOculusUser(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/analytics2/OculusPigeonIdentity;

    move-result-object v0

    goto :goto_0
.end method
