.class final Lcom/facebook/cameracore/common/StateCallbackNotifier$2;
.super Ljava/lang/Object;
.source "StateCallbackNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/common/StateCallback;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$2;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p2, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$2;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$2;->val$throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/facebook/cameracore/common/StateCallback;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
