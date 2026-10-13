.class public interface abstract Lcom/facebook/common/errorreporting/FbErrorReporter;
.super Ljava/lang/Object;
.source "FbErrorReporter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract putCurrentUserId(Ljava/lang/String;)V
.end method

.method public abstract putCustomData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putLazyCustomData(Ljava/lang/String;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V
.end method

.method public abstract removeCustomData(Ljava/lang/String;)V
.end method

.method public abstract removeLazyCustomData(Ljava/lang/String;)V
.end method

.method public abstract reportANRs()V
.end method

.method public abstract reportJavascriptException(Ljava/lang/Throwable;)V
.end method

.method public abstract reportLastActivity(Ljava/lang/String;)V
.end method

.method public abstract reportRNException(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportRNException(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract reportStall(J)V
.end method

.method public abstract softReport(Lcom/facebook/common/errorreporting/SoftError;)V
.end method

.method public abstract softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V
    .param p2    # Lcom/facebook/acra/info/ExternalProcessInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/Throwable;I)V
.end method

.method public abstract softReportDelayed(Lcom/facebook/common/errorreporting/SoftError;)V
.end method

.method public abstract softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract softReportFailHarder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract softReportFailHarder(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract strictModeReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateCrashReportProxy(Ljava/net/Proxy;)V
.end method
