.class Lcom/oculus/platform/OVRServiceManager$2;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$2;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;)V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;->CONNECTED:Lcom/oculus/platform/OVRServiceSynchronous$ConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$2;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceManager;->sendProcessToken()V

    .line 144
    :cond_0
    return-void
.end method
