.class public interface abstract Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;
.super Ljava/lang/Object;
.source "DebuggableSamplingPolicyConfig.java"

# interfaces
.implements Lcom/facebook/flexiblesampling/SamplingPolicyConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;
    }
.end annotation


# static fields
.field public static final NO_PREVIOUS_VALUE:I = -0x1


# virtual methods
.method public abstract add(Ljava/lang/String;I)I
.end method

.method public abstract blacklist(Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateChecksum()V
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
