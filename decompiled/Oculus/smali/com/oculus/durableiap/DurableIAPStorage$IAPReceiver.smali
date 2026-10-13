.class Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver;
.super Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;
.source "DurableIAPStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/DurableIAPStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IAPReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/durableiap/DurableIAPStorage;


# direct methods
.method public constructor <init>(Lcom/oculus/durableiap/DurableIAPStorage;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver;->this$0:Lcom/oculus/durableiap/DurableIAPStorage;

    .line 60
    const-string v0, "com.oculus.iap_shell_result"

    new-instance v1, Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver$1;

    invoke-direct {v1, p1}, Lcom/oculus/durableiap/DurableIAPStorage$IAPReceiver$1;-><init>(Lcom/oculus/durableiap/DurableIAPStorage;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;-><init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V

    .line 71
    return-void
.end method
