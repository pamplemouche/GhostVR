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
    .locals 10
    .param p0, "unit"    # J

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 29
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 30
    .local v6, "stat":Landroid/os/StatFs;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_0

    .line 31
    invoke-static {v6}, Lcom/facebook/acra/util/StatFsUtil$Api18Utils;->getAvailableInternalStorageSpace(Landroid/os/StatFs;)J

    move-result-wide v8

    div-long/2addr v8, p0

    .line 38
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 33
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stat":Landroid/os/StatFs;
    :cond_0
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 34
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 35
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    div-long/2addr v8, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 38
    .local v4, "ignore":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method public static getTotalInternalStorageSpace(J)J
    .locals 10
    .param p0, "unit"    # J

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 51
    .local v3, "path":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "stat":Landroid/os/StatFs;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v5, v8, :cond_0

    .line 53
    invoke-static {v4}, Lcom/facebook/acra/util/StatFsUtil$Api18Utils;->getTotalInternalStorageSpace(Landroid/os/StatFs;)J

    move-result-wide v8

    div-long/2addr v8, p0

    .line 60
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 55
    .restart local v3    # "path":Ljava/io/File;
    .restart local v4    # "stat":Landroid/os/StatFs;
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 56
    .local v0, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 57
    .local v6, "totalBlocks":J
    mul-long v8, v6, v0

    div-long/2addr v8, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "blockSize":J
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :catch_0
    move-exception v2

    .line 60
    .local v2, "ignore":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method public static getUsedInternalStorageSpace(J)J
    .locals 4
    .param p0, "unit"    # J

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
