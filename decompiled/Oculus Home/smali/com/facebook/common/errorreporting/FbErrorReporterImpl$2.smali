.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->softReportDelayed(Lcom/facebook/common/errorreporting/SoftError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$reportedCategory:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$reportedCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 311
    .local v0, "draft":Lcom/facebook/acra/CrashReportData;
    const-string v2, "soft_error_category"

    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$reportedCategory:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v2, "soft_error_message"

    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-static {v2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ErrorReporter;

    .line 315
    .local v1, "reporter":Lcom/facebook/acra/ErrorReporter;
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->handleExceptionDelayed(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)V

    .line 316
    return-void
.end method
