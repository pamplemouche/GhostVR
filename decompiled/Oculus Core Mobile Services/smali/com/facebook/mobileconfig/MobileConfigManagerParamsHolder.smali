.class public Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;
.super Ljava/lang/Object;
.source "MobileConfigManagerParamsHolder.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "mobileconfig-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigManagerParamsHolder;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 19
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native enableVariableLengthHash()V
.end method

.method public native setConsistencyLoggingEnabled(Z)V
.end method

.method public native setConsistencyLoggingEveryNSec(J)V
.end method

.method public native setEmergencyPushShadow(Z)V
.end method

.method public native setExtendBlnSchema(Z)V
.end method

.method public native setOTAParamsMapPath(Ljava/lang/String;)V
.end method

.method public native setOTARNDefaultPath(Ljava/lang/String;)V
.end method

.method public native setOmnistoreUpdaterExpected(Z)V
.end method

.method public native setQueryHashOptimization(Z)V
.end method

.method public native setResponseCompressionEnabled(Z)V
.end method

.method public native setShadowAlternativeUpdater(Z)V
.end method

.method public native setShouldUseOTAResource(Z)V
.end method

.method public native setUniverseType(I)Z
.end method

.method public native setUsePartialAndFullSyncFetch(Z)V
.end method

.method public native setUsePlatformEpHandler(Z)V
.end method
