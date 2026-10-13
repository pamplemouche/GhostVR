.class public abstract Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;
.super Ljava/lang/Object;
.source "AbstractFbErrorReporter.java"

# interfaces
.implements Lcom/facebook/common/errorreporting/FbErrorReporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V
    .locals 0
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;
    .param p2, "external"    # Lcom/facebook/acra/info/ExternalProcessInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 34
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p1, p2}, Lcom/facebook/common/errorreporting/SoftError;->newError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 14
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "samplingFrequency"    # I

    .prologue
    .line 28
    invoke-static {p1, p2, p3}, Lcom/facebook/common/errorreporting/SoftError;->newError(Ljava/lang/String;Ljava/lang/String;I)Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 29
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 19
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "samplingFrequency"    # I

    .prologue
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p4}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setSamplingFrequency(I)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 43
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public softReport(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "samplingFrequency"    # I

    .prologue
    .line 47
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 48
    return-void
.end method

.method public softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setFailHarder(Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 53
    return-void
.end method

.method public softReportFailHarder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcom/facebook/common/errorreporting/SoftError;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setFailHarder(Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->build()Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 58
    return-void
.end method

.method public softReportFailHarder(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReportFailHarder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
