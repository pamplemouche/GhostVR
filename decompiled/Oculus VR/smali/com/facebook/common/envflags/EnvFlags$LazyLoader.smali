.class Lcom/facebook/common/envflags/EnvFlags$LazyLoader;
.super Ljava/lang/Object;
.source "EnvFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/envflags/EnvFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyLoader"
.end annotation


# static fields
.field private static final FORCE_GENERATE_OMNI_OAT:Z

.field private static final IS_CT_SCAN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/ctscan_test_running"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->IS_CT_SCAN:Z

    .line 20
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/generate_omni_oat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->FORCE_GENERATE_OMNI_OAT:Z

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->IS_CT_SCAN:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/common/envflags/EnvFlags$LazyLoader;->FORCE_GENERATE_OMNI_OAT:Z

    return v0
.end method
