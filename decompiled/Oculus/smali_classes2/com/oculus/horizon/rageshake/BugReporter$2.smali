.class Lcom/oculus/horizon/rageshake/BugReporter$2;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "BugReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/rageshake/BugReporter;->sendReport(Lcom/oculus/horizon/rageshake/BugReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/flytrap/FlytrapResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/rageshake/BugReporter;

.field final synthetic val$report:Lcom/oculus/horizon/rageshake/BugReport;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/rageshake/BugReporter;Lcom/oculus/horizon/rageshake/BugReport;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iput-object p2, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->val$report:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-static {}, Lcom/oculus/horizon/rageshake/BugReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot send the bug report: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 155
    invoke-static {}, Lcom/oculus/horizon/rageshake/BugReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Facebook API error: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v3, v3, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v3, v3, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->message:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 157
    invoke-static {v1}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->rage_shake_reporter_cannot_send_report_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 158
    invoke-static {v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->rage_shake_reporter_reported_too_many_bugs:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$300(Lcom/oculus/horizon/rageshake/BugReporter;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->val$report:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/BugReporter;->cleanUpReportFolder(Lcom/oculus/horizon/rageshake/BugReport;)V

    .line 165
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 161
    invoke-static {v1}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->rage_shake_reporter_cannot_send_report_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 162
    invoke-static {v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->rage_shake_reporter_cannot_send_report:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$300(Lcom/oculus/horizon/rageshake/BugReporter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/api/flytrap/FlytrapResponse;)V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/oculus/horizon/rageshake/BugReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bug report was successfully sent! Bug ID: %s"

    iget-object v2, p1, Lcom/oculus/horizon/api/flytrap/FlytrapResponse;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 144
    invoke-static {v1}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->rage_shake_reporter_bug_reported_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    .line 145
    invoke-static {v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$200(Lcom/oculus/horizon/rageshake/BugReporter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->rage_shake_reporter_bug_reported:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/rageshake/BugReporter;->access$300(Lcom/oculus/horizon/rageshake/BugReporter;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->this$0:Lcom/oculus/horizon/rageshake/BugReporter;

    iget-object v1, p0, Lcom/oculus/horizon/rageshake/BugReporter$2;->val$report:Lcom/oculus/horizon/rageshake/BugReport;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/rageshake/BugReporter;->cleanUpReportFolder(Lcom/oculus/horizon/rageshake/BugReport;)V

    .line 147
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/oculus/horizon/api/flytrap/FlytrapResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/rageshake/BugReporter$2;->onResponse(Lcom/oculus/horizon/api/flytrap/FlytrapResponse;)V

    return-void
.end method
