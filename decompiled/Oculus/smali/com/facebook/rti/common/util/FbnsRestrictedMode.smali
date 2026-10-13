.class public Lcom/facebook/rti/common/util/FbnsRestrictedMode;
.super Ljava/lang/Object;
.source "FbnsRestrictedMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/util/FbnsRestrictedMode$RestrictedModeSupplier;
    }
.end annotation


# static fields
.field private static sRestrictedModeSupplier:Lcom/facebook/rti/common/util/FbnsRestrictedMode$RestrictedModeSupplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRestricted()Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->sRestrictedModeSupplier:Lcom/facebook/rti/common/util/FbnsRestrictedMode$RestrictedModeSupplier;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->sRestrictedModeSupplier:Lcom/facebook/rti/common/util/FbnsRestrictedMode$RestrictedModeSupplier;

    invoke-interface {v0}, Lcom/facebook/rti/common/util/FbnsRestrictedMode$RestrictedModeSupplier;->isRestricted()Z

    move-result v0

    goto :goto_0
.end method
