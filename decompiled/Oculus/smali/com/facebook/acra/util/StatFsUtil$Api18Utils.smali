.class Lcom/facebook/acra/util/StatFsUtil$Api18Utils;
.super Ljava/lang/Object;
.source "StatFsUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Lcom/facebook/soloader/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/StatFsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api18Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAvailableInternalStorageSpace(Landroid/os/StatFs;)J
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 80
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 81
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static getTotalInternalStorageSpace(Landroid/os/StatFs;)J
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 86
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    .line 87
    mul-long/2addr v0, v2

    return-wide v0
.end method
