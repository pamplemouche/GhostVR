.class public Lcom/facebook/rti/common/util/RateLimiterNoOp;
.super Ljava/lang/Object;
.source "RateLimiterNoOp.java"

# interfaces
.implements Lcom/facebook/rti/common/util/RateLimiter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
