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
