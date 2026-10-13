.class public Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;
.super Ljava/lang/Object;
.source "DebuggableSamplingPolicyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugEventSamplingConfig"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final probability:I


# virtual methods
.method public isBlacklisted()Z
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->probability:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
