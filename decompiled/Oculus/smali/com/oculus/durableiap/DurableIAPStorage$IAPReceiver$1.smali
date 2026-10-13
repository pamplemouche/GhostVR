.class Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver$1;
.super Ljava/lang/Object;
.source "DurableIAPStorage.java"

# interfaces
.implements Lcom/facebook/secure/receiver/ActionReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver;-><init>(Lcom/oculus/durableiap/DurableIAPStorage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/oculus/durableiap/DurableIAPStorage;


# direct methods
.method constructor <init>(Lcom/oculus/durableiap/DurableIAPStorage;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver$1;->val$this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/oculus/durableiap/DurableIAPStorage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refresh durable IAP after purchase."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "is_successful"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver$1;->val$this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    invoke-virtual {v0}, Lcom/oculus/durableiap/DurableIAPStorage;->refetchPurchases()Lbolts/Task;

    .line 69
    :cond_0
    return-void
.end method
