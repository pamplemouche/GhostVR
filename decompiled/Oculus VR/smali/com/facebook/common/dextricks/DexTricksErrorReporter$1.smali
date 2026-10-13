.class final Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;
.super Ljava/lang/Object;
.source "DexTricksErrorReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/dextricks/DexTricksErrorReporter;->reportSampledSoftError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$ex:Lcom/facebook/common/errorreporting/SoftErrorException;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/errorreporting/SoftErrorException;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$category:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$ex:Lcom/facebook/common/errorreporting/SoftErrorException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 53
    invoke-static {}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$category:Ljava/lang/String;

    move-object v1, v0

    .line 54
    :goto_0
    invoke-static {}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 56
    :goto_1
    new-instance v2, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v2}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 57
    const-string v3, "soft_error_category"

    invoke-virtual {v2, v3, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "soft_error_message"

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "sample_rate"

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v2, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$ex:Lcom/facebook/common/errorreporting/SoftErrorException;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 68
    :goto_2
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexTricksErrorReporter$1;->val$category:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->access$100(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0x3e8

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "Unable to report soft error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
