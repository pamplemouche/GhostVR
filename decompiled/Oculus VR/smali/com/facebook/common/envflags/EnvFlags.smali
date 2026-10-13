.class public final Lcom/facebook/common/envflags/EnvFlags;
.super Ljava/lang/Object;
.source "EnvFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/envflags/EnvFlags$LazyLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceGenerateOmniOat()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->access$100()Z

    move-result v0

    return v0
.end method

.method public static inCtScanOptMode()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->isCtScan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCtScan()Z
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->access$000()Z

    move-result v0

    return v0
.end method
