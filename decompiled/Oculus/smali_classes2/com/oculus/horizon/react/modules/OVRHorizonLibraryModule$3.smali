.class Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$3;
.super Landroid/os/ResultReceiver;
.source "OVRHorizonLibraryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;->refetch(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;Landroid/os/Handler;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$3;->this$0:Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule;

    iput-object p3, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/OVRHorizonLibraryModule$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
