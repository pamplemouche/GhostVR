.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->reportRNException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$cause:Ljava/lang/Throwable;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 540
    :try_start_0
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 545
    .local v0, "draft":Lcom/facebook/acra/CrashReportData;
    const-string v1, "soft_error_category"

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "soft_error_message"

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v1

    .line 549
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ErrorReporter;

    new-instance v2, Lcom/facebook/common/errorreporting/ReactNativeException;

    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;->val$cause:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Lcom/facebook/common/errorreporting/ReactNativeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v0    # "draft":Lcom/facebook/acra/CrashReportData;
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v1

    goto :goto_0
.end method
