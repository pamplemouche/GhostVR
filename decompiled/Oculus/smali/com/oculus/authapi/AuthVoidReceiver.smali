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

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
