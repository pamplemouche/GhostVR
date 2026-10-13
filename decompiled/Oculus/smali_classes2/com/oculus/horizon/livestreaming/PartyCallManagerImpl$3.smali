.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->handleCallAcceptedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$callerId:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$partyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$callerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$partyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

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

    .line 207
    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$callerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$3;->val$partyId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;->onCallAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method
