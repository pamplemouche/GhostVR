.class Lcom/oculus/vrshell/home/module/AbuseReportModule$2;
.super Landroid/os/ResultReceiver;
.source "AbuseReportModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AbuseReportModule;->stopRecordingAndLaunchReportFlow(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

.field final synthetic val$fromPkg:Ljava/lang/String;

.field final synthetic val$recordingUUID:Ljava/lang/String;

.field final synthetic val$sdkUserID:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AbuseReportModule;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iput-object p3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$recordingUUID:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$sdkUserID:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$fromPkg:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$source:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 132
    invoke-static {}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Something went wrong while stopping abuse capture: [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$recordingUUID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$sdkUserID:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$fromPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$2;->val$source:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$300(Lcom/oculus/vrshell/home/module/AbuseReportModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
