.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$5;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->registerStatusObserver(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$observer:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$5;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$5;->val$observer:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$5;->val$observer:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$5;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$200(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;->onStatusUpdated(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V

    .line 248
    return-void
.end method
