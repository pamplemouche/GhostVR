.class public Lcom/facebook/analytics2/logger/AlwaysOnSamplingPolicy;
.super Ljava/lang/Object;
.source "AlwaysOnSamplingPolicy.java"

# interfaces
.implements Lcom/facebook/flexiblesampling/SamplingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldLog(Ljava/lang/String;Z)Lcom/facebook/flexiblesampling/SamplingResult;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/facebook/flexiblesampling/SamplingResult;->createAlwaysOnResult()Lcom/facebook/flexiblesampling/SamplingResult;

    move-result-object v0

    return-object v0
.end method
