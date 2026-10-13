.class public Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;
.super Ljava/lang/Object;
.source "MobileConfigSpecifierUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigIndex(J)I
    .locals 4

    .prologue
    .line 28
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getIsSessionless(J)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getUnitType(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getParamIndex(J)I
    .locals 4

    .prologue
    .line 33
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getParamType(J)I
    .locals 4

    .prologue
    .line 48
    const/16 v0, 0x30

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lcom/facebook/mobileconfig/specifier/MobileConfigParamTypeUtil;->valueOf(I)I

    move-result v0

    return v0
.end method

.method public static getRequireCallsiteDefault(J)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 65
    const/16 v0, 0x3c

    ushr-long v0, p0, v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSlotId(J)I
    .locals 2

    .prologue
    .line 38
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getStdDefault(J)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 42
    const/16 v0, 0x3d

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUnitType(J)I
    .locals 4

    .prologue
    .line 52
    const/16 v0, 0x36

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lcom/facebook/mobileconfig/specifier/MobileConfigUnitTypeUtil;->valueOf(I)I

    move-result v0

    return v0
.end method
