.class Lcom/oculus/platform/OVRServiceManager$30;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->stopRecordingAndLaunchReportFlow(JLjava/lang/String;ZIJLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

.field final synthetic val$messageType:I

.field final synthetic val$preventPeopleChooser:Z

.field final synthetic val$recordingUUID:Ljava/lang/String;

.field final synthetic val$requestID:J

.field final synthetic val$returnComponent:Landroid/content/ComponentName;

.field final synthetic val$userID:J


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;JIJZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1756
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$30;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$recordingUUID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$userID:J

    iput p5, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$messageType:I

    iput-wide p6, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$requestID:J

    iput-boolean p8, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$preventPeopleChooser:Z

    iput-object p9, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iput-object p10, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$returnComponent:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$30;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$recordingUUID:Ljava/lang/String;

    const-string v2, "broadcast_abuse_capture_stop"

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$1300(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1763
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$30;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-wide v1, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$userID:J

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$messageType:I

    iget-wide v4, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$requestID:J

    iget-object v6, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$recordingUUID:Ljava/lang/String;

    const-string v7, "USER"

    iget-boolean v8, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$preventPeopleChooser:Z

    iget-object v9, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$callback:Lcom/oculus/platform/callback/OVRErrorOrReleaseCallback;

    iget-object v10, p0, Lcom/oculus/platform/OVRServiceManager$30;->val$returnComponent:Landroid/content/ComponentName;

    invoke-virtual/range {v0 .. v10}, Lcom/oculus/platform/OVRServiceManager;->launchUserReportFlow(JIJLjava/lang/String;Ljava/lang/String;ZLcom/oculus/platform/callback/OVRErrorOrReleaseCallback;Landroid/content/ComponentName;)V

    .line 1772
    return-void
.end method
