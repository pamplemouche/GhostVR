.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$occurrenceCount:Ljava/lang/Integer;

.field final synthetic val$reportedCategory:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/acra/info/ExternalProcessInfo;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$reportedCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$occurrenceCount:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

    iput-object p6, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    new-instance v1, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v1}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 232
    const-string v0, "soft_error_category"

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$reportedCategory:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "soft_error_message"

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "sample_rate"

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$occurrenceCount:Ljava/lang/Integer;

    .line 236
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    .line 240
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter;->getEventsLog()Ljava/lang/String;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    .line 244
    const-string v3, "EVENTSLOG"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->getLogcatOutputIfPidFound(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v3, "LOGCAT"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

    invoke-virtual {v2}, Lcom/facebook/acra/info/ExternalProcessInfo;->getAcraFields()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->merge(Ljava/util/Map;ZLjava/io/Writer;)V

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_2
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 257
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$200(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    .line 261
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 263
    :cond_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    .line 264
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 266
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
