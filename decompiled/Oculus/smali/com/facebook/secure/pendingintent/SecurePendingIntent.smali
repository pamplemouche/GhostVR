.class public Lcom/facebook/secure/pendingintent/SecurePendingIntent;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/pendingintent/SecurePendingIntent$Api16Utils;,
        Lcom/facebook/secure/pendingintent/SecurePendingIntent$Api15Utils;,
        Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;

    invoke-direct {v0}, Lcom/facebook/secure/pendingintent/SecurePendingIntent$Builder;-><init>()V

    return-object v0
.end method

.method static isOnOrAboveApi15()Z
    .locals 2

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOnOrAboveApi16()Z
    .locals 2

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
