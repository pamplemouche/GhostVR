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


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/authapi/AuthResultCallback",
            "<TT;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/authapi/AuthTaskReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/authapi/AuthTaskReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<TT;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p1, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method private onReceiveError(Lcom/oculus/authapi/AuthError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/oculus/authapi/AuthTaskReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], message: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    iget-object v0, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-interface {v0, p1}, Lcom/oculus/authapi/AuthResultCallback;->onError(Lcom/oculus/authapi/AuthError;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/oculus/authapi/AuthTaskReceiver;->mAuthResultCallback:Lcom/oculus/authapi/AuthResultCallback;

    invoke-virtual {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;->createResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/authapi/AuthResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/oculus/authapi/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 34
    invoke-direct {p0, v0}, Lcom/oculus/authapi/AuthTaskReceiver;->onReceiveError(Lcom/oculus/authapi/AuthError;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oculus/authapi/AuthTaskReceiver;->createErrorFromBundle(Landroid/os/Bundle;)Lcom/oculus/authapi/AuthError;

    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/oculus/authapi/AuthError;

    invoke-direct {v0, p2}, Lcom/oculus/authapi/AuthError;-><init>(Landroid/os/Bundle;)V

    .line 41
    :cond_1
    invoke-direct {p0, v0}, Lcom/oculus/authapi/AuthTaskReceiver;->onReceiveError(Lcom/oculus/authapi/AuthError;)V

    goto :goto_0
.end method
