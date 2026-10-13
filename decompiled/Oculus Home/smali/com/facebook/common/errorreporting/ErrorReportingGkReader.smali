.class public interface abstract Lcom/facebook/common/errorreporting/ErrorReportingGkReader;
.super Ljava/lang/Object;
.source "ErrorReportingGkReader.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract isFailHarderFatalDisabled()Lcom/facebook/common/util/TriState;
.end method

.method public abstract isSoftErrorReportingDisabled()Lcom/facebook/common/util/TriState;
.end method

.method public abstract shouldReportNativeSoftErrors()Lcom/facebook/common/util/TriState;
.end method
