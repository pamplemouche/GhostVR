.class public Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerProvider.java"


# static fields
.field private static mQuickPerformanceLogger:Lcom/facebook/quicklog/QuickPerformanceLogger;

.field private static mQuickPerformanceLoggerBuilder:Lcom/facebook/quicklog/QuickPerformanceLogger$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQPLInstance()Lcom/facebook/quicklog/QuickPerformanceLogger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLogger:Lcom/facebook/quicklog/QuickPerformanceLogger;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLogger:Lcom/facebook/quicklog/QuickPerformanceLogger;

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLoggerBuilder:Lcom/facebook/quicklog/QuickPerformanceLogger$Builder;

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLoggerBuilder:Lcom/facebook/quicklog/QuickPerformanceLogger$Builder;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLogger$Builder;->build()Lcom/facebook/quicklog/QuickPerformanceLogger;

    move-result-object v0

    sput-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLogger:Lcom/facebook/quicklog/QuickPerformanceLogger;

    .line 30
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerProvider;->mQuickPerformanceLogger:Lcom/facebook/quicklog/QuickPerformanceLogger;

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
