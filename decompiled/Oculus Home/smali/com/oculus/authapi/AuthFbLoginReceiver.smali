.class final Lcom/oculus/authapi/AuthFbLoginReceiver;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "AuthFbLoginReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver",
        "<",
        "Lcom/oculus/authapi/AuthFbLoginResult;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method constructor <init>(Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Lcom/oculus/authapi/AuthFbLoginResult;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthError;>;"
    invoke-direct {p0, p1}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginResult;
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/oculus/authapi/AuthFbLoginResult;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/AuthFbLoginResult;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/AuthFbLoginReceiver;->createResultFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthFbLoginResult;

    move-result-object v0

    return-object v0
.end method
