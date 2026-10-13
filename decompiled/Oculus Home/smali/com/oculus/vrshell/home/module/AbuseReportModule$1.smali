.class Lcom/oculus/vrshell/home/module/AbuseReportModule$1;
.super Landroid/os/ResultReceiver;
.source "AbuseReportModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AbuseReportModule;->startRecordingForReportFlow(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

.field final synthetic val$failureCallbackID:I

.field final synthetic val$successCallbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Handler;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AbuseReportModule;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iput p3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->val$successCallbackID:I

    iput p4, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->val$failureCallbackID:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_0

    .line 83
    const-string v3, "recording_uuid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "recordingUUID":Ljava/lang/String;
    const-string v3, "recording_command_status"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 86
    .local v2, "status":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v4

    .line 88
    .local v0, "data":[Ljava/lang/String;
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iget-wide v4, v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->RVRCtxTag:J

    iget v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->val$successCallbackID:I

    invoke-static {}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$000()Lcom/google/gson/Gson;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 93
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "recordingUUID":Ljava/lang/String;
    .end local v2    # "status":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iget-wide v4, v3, Lcom/oculus/vrshell/home/module/AbuseReportModule;->RVRCtxTag:J

    iget v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->val$failureCallbackID:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$1;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    invoke-static {v7, p2}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$100(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->nativeInvokeCallback(JILjava/lang/String;)V

    goto :goto_0
.end method
