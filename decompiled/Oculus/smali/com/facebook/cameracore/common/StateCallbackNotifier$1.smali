.class final Lcom/facebook/cameracore/common/StateCallbackNotifier$1;
.super Ljava/lang/Object;
.source "StateCallbackNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/common/StateCallback;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/cameracore/common/StateCallbackNotifier$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    invoke-interface {v0}, Lcom/facebook/cameracore/common/StateCallback;->onSuccess()V

    .line 35
    return-void
.end method
