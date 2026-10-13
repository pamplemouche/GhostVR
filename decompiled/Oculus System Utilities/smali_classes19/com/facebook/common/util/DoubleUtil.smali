.class public Lcom/facebook/common/util/DoubleUtil;
.super Ljava/lang/Object;
.source "DoubleUtil.java"


# static fields
.field private static final EPSILON:F = 1.0E-5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doublesEqual(DD)Z
    .locals 6
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 10
    goto :goto_0

    .line 12
    :cond_3
    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
