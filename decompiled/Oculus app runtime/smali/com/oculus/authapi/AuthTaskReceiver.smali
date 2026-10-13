.class abstract Lcom/oculus/authapi/AuthTaskReceiver;
.super Landroid/os/ResultReceiver;
.source "AuthTaskReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/oculus/authapi/AuthError;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation


# instance fields
.field private final mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/authapi/AuthResultCallback<",
            "TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    return-void
.end method


# virtual methods
.method protected createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TE;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-virtual {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oculus/authapi/AuthResultCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;->createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;

    move-result-object p1

    if-nez p1, :cond_1

    .line 27
    new-instance p1, Lcom/oculus/authapi/AuthError;

    invoke-direct {p1, p2}, Lcom/oculus/authapi/AuthError;-><init>(Landroid/os/Bundle;)V

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-interface {p2, p1}, Lcom/oculus/authapi/AuthResultCallback;->onError(Lcom/oculus/authapi/AuthError;)V

    :goto_0
    return-void
.end method
