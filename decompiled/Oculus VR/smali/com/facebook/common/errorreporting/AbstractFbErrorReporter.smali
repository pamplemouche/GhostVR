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
