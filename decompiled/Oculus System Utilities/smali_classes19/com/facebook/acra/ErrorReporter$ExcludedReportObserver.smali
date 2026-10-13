.class public interface abstract Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExcludedReportObserver"
.end annotation


# virtual methods
.method public abstract onExclude(Lcom/facebook/acra/CrashReportData;)V
.end method
