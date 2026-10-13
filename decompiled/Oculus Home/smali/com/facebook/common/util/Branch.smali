.class public final Lcom/facebook/common/util/Branch;
.super Ljava/lang/Object;
.source "Branch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static likely(Z)Z
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 22
    return p0
.end method

.method public static unlikely(Z)Z
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 37
    return p0
.end method
