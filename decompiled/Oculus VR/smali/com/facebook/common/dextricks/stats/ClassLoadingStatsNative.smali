.class public final Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;
.super Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.source "ClassLoadingStatsNative.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "dextricks"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;-><init>()V

    .line 19
    invoke-static {}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 20
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native decrementDexFileQueries()V
.end method

.method public native getClassLoadThreadTime()I
.end method

.method protected native getClassLoadsAttempted()I
.end method

.method protected native getClassLoadsFailed()I
.end method

.method protected native getDexFileQueries()I
.end method

.method protected native getIncorrectDfaGuesses()I
.end method

.method protected native getLocatorAssistedClassLoads()I
.end method

.method public native getTurboLoaderClassLocationFailures()I
.end method

.method public native getTurboLoaderClassLocationSuccesses()I
.end method

.method public native getTurboLoaderMapGenerationFailures()I
.end method

.method public native getTurboLoaderMapGenerationSuccesses()I
.end method

.method public native incrementClassLoadsAttempted()V
.end method

.method public native incrementClassLoadsFailed()V
.end method

.method public native incrementDexFileQueries(I)V
.end method

.method public native incrementIncorrectDfaGuesses()V
.end method

.method public native incrementLocatorAssistedClassLoads()V
.end method

.method public native incrementTurboLoaderClassLocationFailures()V
.end method

.method public native incrementTurboLoaderClassLocationSuccesses()V
.end method

.method public native incrementTurboLoaderMapGenerationFailures()V
.end method

.method public native incrementTurboLoaderMapGenerationSuccesses()V
.end method

.method public native setClassLoadTimeTrackingForThisThread(Z)Z
.end method
