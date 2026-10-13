.class Lcom/oculus/platform/OVRServiceManager$29;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->cancelRecording(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

.field final synthetic val$recordingUUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
    .locals 0

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$29;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$29;->val$recordingUUID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$29;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$29;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$29;->val$recordingUUID:Ljava/lang/String;

    const-string v2, "broadcast_abuse_capture_cancel"

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$1300(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1735
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$29;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V

    .line 1736
    return-void
.end method
