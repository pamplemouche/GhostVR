.class public Lcom/oculus/vrshell/util/SecurePendingIntent;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/SecurePendingIntent$Api16Utils;,
        Lcom/oculus/vrshell/util/SecurePendingIntent$Api15Utils;,
        Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;
    .locals 1

    .line 168
    new-instance v0, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;

    invoke-direct {v0}, Lcom/oculus/vrshell/util/SecurePendingIntent$Builder;-><init>()V

    return-object v0
.end method

.method static isOnOrAboveApi15()Z
    .locals 2

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isOnOrAboveApi16()Z
    .locals 2

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
