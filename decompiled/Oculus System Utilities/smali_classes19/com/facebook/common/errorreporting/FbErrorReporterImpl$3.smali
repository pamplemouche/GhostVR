.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->strictModeReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$stackTrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$stackTrace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 421
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$category:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$300(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "reportedCategory":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 431
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 432
    .local v0, "draft":Lcom/facebook/acra/CrashReportData;
    const-string v3, "strict_mode_message"

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v3, "strict_mode_category"

    invoke-virtual {v0, v3, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v3}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/ErrorReporter;

    .line 436
    .local v2, "reporter":Lcom/facebook/acra/ErrorReporter;
    new-instance v3, Lcom/facebook/common/errorreporting/StrictModeException;

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$message:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/facebook/common/errorreporting/StrictModeException;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;->val$stackTrace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v0    # "draft":Lcom/facebook/acra/CrashReportData;
    .end local v2    # "reporter":Lcom/facebook/acra/ErrorReporter;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
