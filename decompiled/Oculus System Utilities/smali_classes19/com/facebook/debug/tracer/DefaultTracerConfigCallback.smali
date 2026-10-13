.class public Lcom/facebook/debug/tracer/DefaultTracerConfigCallback;
.super Ljava/lang/Object;
.source "DefaultTracerConfigCallback.java"

# interfaces
.implements Lcom/facebook/debug/tracer/TracerConfigCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCollectTracer()Z
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    return v0
.end method
