.class Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;
.super Ljava/lang/Object;
.source "OVRAuthLoginHorizonProxy.java"

# interfaces
.implements Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombinedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/oculus/authapi/AuthError;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;",
        "Lcom/oculus/authapi/AuthResultCallback",
        "<TT;TE;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oculus/authapi/AuthResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/authapi/AuthResultCallback",
            "<TT;TE;>;"
        }
    .end annotation
.end field

.field private mCompleted:Z

.field private mError:Lcom/oculus/authapi/AuthError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mReceivedError:Z

.field private mReceivedResult:Z

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<TT;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->this$0:Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    .line 33
    return-void
.end method

.method private sendCallbackIfReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedError:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    iget-object v1, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mError:Lcom/oculus/authapi/AuthError;

    invoke-interface {v0, v1}, Lcom/oculus/authapi/AuthResultCallback;->onError(Lcom/oculus/authapi/AuthError;)V

    .line 44
    iput-boolean v3, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedError:Z

    .line 45
    iput-object v2, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mError:Lcom/oculus/authapi/AuthError;

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->this$0:Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;

    invoke-static {v0}, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;->access$000(Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;)Lcom/oculus/auth/receiver/LoginHandlersRunner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->setListener(Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedResult:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mCallback:Lcom/oculus/authapi/AuthResultCallback;

    iget-object v1, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mResult:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oculus/authapi/AuthResultCallback;->onResult(Ljava/lang/Object;)V

    .line 52
    iput-boolean v3, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedResult:Z

    .line 53
    iput-object v2, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mResult:Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->this$0:Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;

    invoke-static {v0}, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;->access$000(Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy;)Lcom/oculus/auth/receiver/LoginHandlersRunner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/auth/receiver/LoginHandlersRunner;->setListener(Lcom/oculus/auth/receiver/LoginHandlersRunner$LoginHandlerCompletionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onError(Lcom/oculus/authapi/AuthError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mError:Lcom/oculus/authapi/AuthError;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedError:Z

    .line 70
    invoke-direct {p0}, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->sendCallbackIfReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLoginInternalCompleted()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mCompleted:Z

    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->sendCallbackIfReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResult(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mResult:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->mReceivedResult:Z

    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/authhelper/OVRAuthLoginHorizonProxy$CombinedListener;->sendCallbackIfReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
