.class final Lcom/facebook/quicklog/PerformanceLoggingEvent$1;
.super Lcom/facebook/quicklog/ObjectPool;
.source "PerformanceLoggingEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/quicklog/PerformanceLoggingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/quicklog/ObjectPool",
        "<",
        "Lcom/facebook/quicklog/PerformanceLoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/ObjectPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic constructFresh()Lcom/facebook/quicklog/ObjectPool$Poolable;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/facebook/quicklog/PerformanceLoggingEvent$1;->constructFresh()Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v0

    return-object v0
.end method

.method protected constructFresh()Lcom/facebook/quicklog/PerformanceLoggingEvent;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;

    invoke-direct {v0}, Lcom/facebook/quicklog/PerformanceLoggingEvent;-><init>()V

    return-object v0
.end method
