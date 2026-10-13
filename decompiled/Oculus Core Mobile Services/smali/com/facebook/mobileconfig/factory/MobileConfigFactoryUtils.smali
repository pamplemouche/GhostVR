.class public Lcom/facebook/mobileconfig/factory/MobileConfigFactoryUtils;
.super Ljava/lang/Object;
.source "MobileConfigFactoryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceKey(Z)I
    .locals 1

    .prologue
    .line 10
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
