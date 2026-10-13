.class public Lcom/facebook/common/envflags/InternalEnvFlags;
.super Ljava/lang/Object;
.source "InternalEnvFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canCheckMagicFiles()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forceAssumeVerified()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags;->canCheckMagicFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveOat()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags;->canCheckMagicFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useOatmeal()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags;->canCheckMagicFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
