.class public Lcom/facebook/common/dextricks/turboloader/TurboLoader;
.super Ljava/lang/Object;
.source "TurboLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotAccessedPrivateField"
    }
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/turboloader/TurboLoader$Locator;,
        Lcom/facebook/common/dextricks/turboloader/TurboLoader$Config;
    }
.end annotation


# instance fields
.field private final mAuxDexes:[Ldalvik/system/DexFile;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPrimaryDexes:[Ldalvik/system/DexFile;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSecondaryDexes:[Ldalvik/system/DexFile;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final turboLoaderMapFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "turboloader"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    :goto_0
    iput-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 52
    if-eqz p2, :cond_2

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    :goto_1
    iput-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->mAuxDexes:[Ldalvik/system/DexFile;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "classmap.bin"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->turboLoaderMapFile:Ljava/lang/String;

    .line 58
    sget-boolean v0, Lcom/facebook/common/dextricks/turboloader/TurboLoader$Config;->IS_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->init()V

    .line 61
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 51
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 54
    goto :goto_1
.end method

.method private native init()V
.end method

.method private native install([Ldalvik/system/DexFile;[Ldalvik/system/DexFile;Ljava/lang/String;Z)V
    .param p1    # [Ldalvik/system/DexFile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ldalvik/system/DexFile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native locateClassNative(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/dextricks/turboloader/TurboLoader$Locator;
.end method


# virtual methods
.method public install(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    :goto_0
    iput-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->mSecondaryDexes:[Ldalvik/system/DexFile;

    .line 66
    sget-boolean v0, Lcom/facebook/common/dextricks/turboloader/TurboLoader$Config;->IS_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->mPrimaryDexes:[Ldalvik/system/DexFile;

    iget-object v1, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->mSecondaryDexes:[Ldalvik/system/DexFile;

    iget-object v2, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->turboLoaderMapFile:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->install([Ldalvik/system/DexFile;[Ldalvik/system/DexFile;Ljava/lang/String;Z)V

    .line 70
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTurboLoaderMapPresent()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->turboLoaderMapFile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 76
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->turboLoaderMapFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method
