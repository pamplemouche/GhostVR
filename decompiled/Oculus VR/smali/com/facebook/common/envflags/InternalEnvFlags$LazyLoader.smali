.class Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;
.super Ljava/lang/Object;
.source "InternalEnvFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/envflags/InternalEnvFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyLoader"
.end annotation


# static fields
.field private static final FORCE_ASSUME_VERIFIED:Z

.field private static final SAVE_OAT:Z

.field private static final USE_DEX2OAT_QUICKEN:Z

.field private static final USE_MIXED_MODE:Z

.field private static final USE_MIXED_MODE_PGO:Z

.field private static final USE_OATMEAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/use_oatmeal"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->USE_OATMEAL:Z

    .line 26
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/use_mixed_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->USE_MIXED_MODE:Z

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/use_mixed_mode_pgo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->USE_MIXED_MODE_PGO:Z

    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/use_dex2oat_quicken"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->USE_DEX2OAT_QUICKEN:Z

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/save_oatmeal_sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->SAVE_OAT:Z

    .line 30
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/force_assume_verified"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->FORCE_ASSUME_VERIFIED:Z

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->USE_OATMEAL:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->SAVE_OAT:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/common/envflags/InternalEnvFlags$LazyLoader;->FORCE_ASSUME_VERIFIED:Z

    return v0
.end method
