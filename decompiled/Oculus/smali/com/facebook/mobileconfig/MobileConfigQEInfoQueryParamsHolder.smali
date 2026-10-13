.class public Lcom/facebook/mobileconfig/MobileConfigQEInfoQueryParamsHolder;
.super Ljava/lang/Object;
.source "MobileConfigQEInfoQueryParamsHolder.java"


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
    invoke-static {}, Lcom/facebook/mobileconfig/MobileConfigQEInfoQueryParamsHolder;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigQEInfoQueryParamsHolder;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 19
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native setExperimentName(Ljava/lang/String;)V
.end method

.method public native setGatekeeperName(Ljava/lang/String;)V
.end method

.method public native setUniverseRegex(Ljava/lang/String;)V
.end method

.method public native withCurrentExperimentGroup(Z)V
.end method

.method public native withExperiments(Z)V
.end method

.method public native withGatekeepers(Z)V
.end method

.method public native withGroupParams(Z)V
.end method

.method public native withGroups(Z)V
.end method

.method public native withParams(Z)V
.end method

.method public native withUniverseParams(Z)V
.end method
