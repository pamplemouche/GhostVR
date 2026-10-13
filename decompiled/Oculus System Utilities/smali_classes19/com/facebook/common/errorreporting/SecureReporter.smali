.class public Lcom/facebook/common/errorreporting/SecureReporter;
.super Ljava/lang/Object;
.source "SecureReporter.java"

# interfaces
.implements Lcom/facebook/secure/logger/Reporter;


# instance fields
.field private final mDefaultCategory:Ljava/lang/String;

.field private final mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;


# direct methods
.method public constructor <init>(Lcom/facebook/common/errorreporting/FbErrorReporter;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorReporter"    # Lcom/facebook/common/errorreporting/FbErrorReporter;
    .param p2, "defaultCategory"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/common/errorreporting/SecureReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 20
    iput-object p2, p0, Lcom/facebook/common/errorreporting/SecureReporter;->mDefaultCategory:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SecureReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    iget-object v1, p0, Lcom/facebook/common/errorreporting/SecureReporter;->mDefaultCategory:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SecureReporter;->mErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
