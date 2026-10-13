.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->handleIncomingCallNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
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
    .line 164
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->val$callerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$2;->val$callerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->handleCallCanceledNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method
