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

.method public static makeSpecifier(IIIIIZZ)J
    .locals 15

    .prologue
    .line 124
    move/from16 v0, p4

    int-to-long v2, v0

    const/16 v4, 0x36

    shl-long v6, v2, v4

    .line 125
    const-wide/16 v2, 0x0

    .line 126
    if-eqz p5, :cond_1

    .line 127
    const-wide/high16 v2, 0x1000000000000000L

    move-wide v4, v2

    .line 129
    :goto_0
    int-to-long v2, p0

    const/16 v8, 0x30

    shl-long v8, v2, v8

    .line 130
    move/from16 v0, p1

    int-to-long v2, v0

    const/16 v10, 0x20

    shl-long v10, v2, v10

    .line 131
    move/from16 v0, p2

    int-to-long v2, v0

    const/16 v12, 0x10

    shl-long v12, v2, v12

    .line 132
    if-eqz p6, :cond_0

    const-wide/16 v2, 0x1

    :goto_1
    const/16 v14, 0x3d

    shl-long/2addr v2, v14

    .line 134
    or-long/2addr v4, v6

    or-long/2addr v4, v8

    or-long/2addr v4, v10

    or-long/2addr v4, v12

    move/from16 v0, p3

    int-to-long v6, v0

    or-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2

    .line 132
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide v4, v2

    goto :goto_0
.end method

.method public static makeSpecifier(IIIIZZZ)J
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->makeSpecifier(IIIIIZZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
