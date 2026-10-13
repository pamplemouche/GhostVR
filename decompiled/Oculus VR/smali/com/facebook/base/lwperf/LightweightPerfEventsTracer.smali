.class public abstract Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
.super Ljava/lang/Object;
.source "LightweightPerfEventsTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
.end method
