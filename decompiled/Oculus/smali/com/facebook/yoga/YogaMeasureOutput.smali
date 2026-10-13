.class public Lcom/facebook/yoga/YogaMeasureOutput;
.super Ljava/lang/Object;
.source "YogaMeasureOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(FF)J
    .locals 4

    .prologue
    .line 15
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 16
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 17
    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static make(II)J
    .locals 2

    .prologue
    .line 21
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0
.end method
