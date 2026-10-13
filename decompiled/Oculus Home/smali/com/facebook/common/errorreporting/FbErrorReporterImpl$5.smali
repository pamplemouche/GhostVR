.class Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->reportJavascriptException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

.field final synthetic val$cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;->this$0:Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;->val$cause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    goto :goto_0
.end method
