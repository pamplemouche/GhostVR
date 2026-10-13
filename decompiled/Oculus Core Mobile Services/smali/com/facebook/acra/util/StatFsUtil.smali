.class public Lcom/facebook/acra/util/StatFsUtil;
.super Ljava/lang/Object;
.source "StatFsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/util/StatFsUtil$Api18Utils;
    }
.end annotation


# static fields
.field public static final IN_BYTE:J = 0x1L

.field public static final IN_GIGA_BYTE:J = 0x40000000L

.field public static final IN_KILO_BYTE:J = 0x400L

.field public static final IN_MEGA_BYTE:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableInternalStorageSpace(J)J
    .locals 4

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 31
    invoke-static {v1}, Lcom/facebook/acra/util/StatFsUtil$Api18Utils;->getAvailableInternalStorageSpace(Landroid/os/StatFs;)J

    move-result-wide v0

    div-long/2addr v0, p0

    .line 38
    :goto_0
    return-wide v0

    .line 33
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 34
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 35
    mul-long/2addr v0, v2

    div-long/2addr v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalStorageSpace(J)J
    .locals 4

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    .line 53
    invoke-static {v1}, Lcom/facebook/acra/util/StatFsUtil$Api18Utils;->getTotalInternalStorageSpace(Landroid/os/StatFs;)J

    move-result-wide v0

    div-long/2addr v0, p0

    .line 60
    :goto_0
    return-wide v0

    .line 55
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 56
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 57
    mul-long/2addr v0, v2

    div-long/2addr v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getUsedInternalStorageSpace(J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 71
    invoke-static {v2, v3}, Lcom/facebook/acra/util/StatFsUtil;->getTotalInternalStorageSpace(J)J

    move-result-wide v0

    invoke-static {v2, v3}, Lcom/facebook/acra/util/StatFsUtil;->getAvailableInternalStorageSpace(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, p0

    return-wide v0
.end method
