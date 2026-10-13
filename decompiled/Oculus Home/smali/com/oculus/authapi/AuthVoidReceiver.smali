.class final Lcom/oculus/authapi/AuthVoidReceiver;
.super Lcom/oculus/authapi/AuthTaskReceiver;
.source "AuthVoidReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/authapi/AuthTaskReceiver",
        "<",
        "Ljava/lang/Void;",
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
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    invoke-direct {p0, p1}, Lcom/oculus/authapi/AuthTaskReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/oculus/authapi/AuthVoidReceiver;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Void;
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
