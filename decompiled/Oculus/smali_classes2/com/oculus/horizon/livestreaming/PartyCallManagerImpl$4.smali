.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->handleCallRejectedNotification(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$callerId:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->val$callerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

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

    .line 220
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$4;->val$callerId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;->onCallRejected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method
