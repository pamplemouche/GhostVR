.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$7;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->setStatus(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$status:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$7;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$7;->val$status:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$7;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$100(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;

    .line 330
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$7;->val$status:Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;->onStatusUpdated(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method
