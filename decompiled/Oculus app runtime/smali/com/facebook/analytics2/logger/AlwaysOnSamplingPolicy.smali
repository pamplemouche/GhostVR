.class public Lcom/facebook/analytics2/logger/AlwaysOnSamplingPolicy;
.super Ljava/lang/Object;
.source "AlwaysOnSamplingPolicy.java"

# interfaces
.implements Lcom/facebook/flexiblesampling/SamplingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventSampleRate(Ljava/lang/String;Z)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public shouldLog(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
