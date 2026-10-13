.class public final Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;
.super Lcom/facebook/common/dextricks/MultiDexClassLoader;
.source "MultiDexClassLoaderArtNative.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field private static final CRASH_CORRELATION_BAIL_THRESHOLD:I = 0x3

.field public static final FAILEDSTART_FILE:Ljava/lang/String; = "multidexclassloader_artnative_failedstart"


# instance fields
.field private final mAuxDexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryDexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "dextricks"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>()V

    .line 38
    const-string v0, "MultiDexClassLoader"

    const-string v1, "using ART-native MDCL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez p6, :cond_0

    .line 41
    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->maybeBail(Landroid/content/Context;)V

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    .line 45
    iput-object p4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mAuxDexes:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bailing: No primary dexes"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v4, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;

    invoke-direct {v4}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;-><init>()V

    .line 51
    invoke-static {v4}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->setInstance(Lcom/facebook/common/dextricks/stats/ClassLoadingStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPutativeLoader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ldalvik/system/DexFile;

    const-string v0, "mdclan"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v6, p5

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->init(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;[Ldalvik/system/DexFile;Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->cleanupFailedInit()V

    .line 62
    throw v0
.end method

.method private native cleanupFailedInit()V
.end method

.method private native init(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;[Ldalvik/system/DexFile;Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;Ljava/lang/String;Z)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ldalvik/system/DexFile;",
            "Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public static native isFastHooked()Z
.end method

.method private static maybeBail(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "multidexclassloader_artnative_failedstart"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MDCLAN bailing: Failed to start last time"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 78
    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 82
    :goto_0
    const-string v1, "x86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bailing: x86 unsupported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 86
    :cond_3
    const-string v0, "multidexclassloader_artnative_modelspecific_blacklisted"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bailing: Blacklisted device model"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4
    return-void
.end method

.method private static native nativeConfigure([Ldalvik/system/DexFile;I[I)V
.end method


# virtual methods
.method public configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mPrimaryDexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v1, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->mAuxDexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    .line 101
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getConfigFlags()I

    move-result v1

    iget-object v2, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    .line 99
    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->nativeConfigure([Ldalvik/system/DexFile;I[I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->configureArtHacks(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 105
    return-void
.end method

.method protected native doGetConfiguredDexFiles()[Ldalvik/system/DexFile;
.end method

.method protected native findClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public native getRecentFailedClasses()[Ljava/lang/String;
.end method

.method public native loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected onColdstartDone()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "MultiDexClassLoaderArtNative"

    return-object v0
.end method
