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
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

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
    .locals 8

    .prologue
    .line 231
    :try_start_0
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 232
    .local v0, "draft":Lcom/facebook/acra/CrashReportData;
    const-string v5, "soft_error_category"

    iget-object v6, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$reportedCategory:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v5, "soft_error_message"

    iget-object v6, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v5, "sample_rate"

    iget-object v6, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$occurrenceCount:Ljava/lang/Integer;

    .line 236
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-virtual {v0, v5, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v5}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/acra/ErrorReporter;

    .line 240
    .local v3, "reporter":Lcom/facebook/acra/ErrorReporter;
    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

    if-eqz v5, :cond_1

    .line 242
    invoke-virtual {v3}, Lcom/facebook/acra/ErrorReporter;->getEventsLog()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "eventsLog":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 244
    const-string v5, "EVENTSLOG"

    invoke-virtual {v0, v5, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/facebook/acra/ErrorReporter;->getLogcatOutputIfPidFound(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "logcat":Ljava/lang/String;
    const-string v5, "LOGCAT"

    invoke-virtual {v0, v5, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$external:Lcom/facebook/acra/info/ExternalProcessInfo;

    invoke-virtual {v5}, Lcom/facebook/acra/info/ExternalProcessInfo;->getAcraFields()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lcom/facebook/acra/CrashReportData;->merge(Ljava/util/Map;ZLjava/io/Writer;)V

    .line 252
    .end local v1    # "eventsLog":Ljava/lang/String;
    .end local v2    # "logcat":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "draft":Lcom/facebook/acra/CrashReportData;
    .end local v3    # "reporter":Lcom/facebook/acra/ErrorReporter;
    :cond_2
    return-void

    .line 253
    :catch_0
    move-exception v4

    .line 257
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v5}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$200(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    instance-of v5, v4, Ljava/lang/Error;

    if-eqz v5, :cond_3

    .line 261
    check-cast v4, Ljava/lang/Error;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 263
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_4

    .line 264
    check-cast v4, Ljava/lang/RuntimeException;

    .end local v4    # "t":Ljava/lang/Throwable;
    throw v4

    .line 266
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
