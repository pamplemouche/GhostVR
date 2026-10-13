.class public interface abstract Lcom/facebook/common/errorreporting/FbErrorReporter;
.super Ljava/lang/Object;
.source "FbErrorReporter.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract softReport(Lcom/facebook/common/errorreporting/SoftError;)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract softReport(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V
.end method
