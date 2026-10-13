.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->ring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

.field final synthetic val$call:Lcom/oculus/horizon/livestreaming/model/IncomingCall;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Lcom/oculus/horizon/livestreaming/model/IncomingCall;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;->val$call:Lcom/oculus/horizon/livestreaming/model/IncomingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$700(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;->val$call:Lcom/oculus/horizon/livestreaming/model/IncomingCall;

    iget-object v1, v1, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 465
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$10;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$800(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;)V

    .line 466
    return-void
.end method
