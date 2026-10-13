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
    .param p2    # Lcom/facebook/acra/info/ExternalProcessInfo;
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

    .prologue
    .line 28
    invoke-static {p1, p2, p3}, Lcom/facebook/common/errorreporting/SoftError;->newError(Ljava/lang/String;Ljava/lang/String;I)Lcom/facebook/common/errorreporting/SoftError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;->softReport(Lcom/facebook/common/errorreporting/SoftError;)V

    .line 29
    return-void
.end method

.method public softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
