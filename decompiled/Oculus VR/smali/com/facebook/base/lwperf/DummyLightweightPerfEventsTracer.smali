.class public final Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;
.super Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
.source "DummyLightweightPerfEventsTracer.java"


# static fields
.field private static final THE_EVENT:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;-><init>()V

    sput-object v0, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;->THE_EVENT:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;->THE_EVENT:Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    return-object v0
.end method
