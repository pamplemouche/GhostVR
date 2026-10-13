.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->reportStall(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-wide p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 452
    :try_start_0
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 453
    .local v0, "draft":Lcom/facebook/acra/CrashReportData;
    const-string v2, "stall_duration"

    iget-wide v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;->val$duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ErrorReporter;

    .line 456
    .local v1, "reporter":Lcom/facebook/acra/ErrorReporter;
    new-instance v2, Lcom/facebook/common/errorreporting/StallException;

    invoke-direct {v2}, Lcom/facebook/common/errorreporting/StallException;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0    # "draft":Lcom/facebook/acra/CrashReportData;
    .end local v1    # "reporter":Lcom/facebook/acra/ErrorReporter;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v2

    goto :goto_0
.end method
