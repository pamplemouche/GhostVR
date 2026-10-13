.class Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase$1;
.super Ljava/lang/Object;
.source "OculusSecureBroadcastReceiverBase.java"

# interfaces
.implements Lcom/facebook/secure/receiver/ActionReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;-><init>([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;


# direct methods
.method constructor <init>(Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase$1;->this$0:Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase$1;->this$0:Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V

    .line 64
    return-void
.end method
