.class public Lcom/facebook/mobileconfig/MobileConfigDefaults;
.super Ljava/lang/Object;
.source "MobileConfigDefaults.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolDefaults(J)Z
    .locals 2

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getStdDefault(J)Z

    move-result v0

    return v0
.end method
