.class public Lcom/facebook/mobileconfig/MobileConfigCoreParams;
.super Ljava/lang/Object;
.source "MobileConfigCoreParams.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "mobileconfig-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/facebook/mobileconfig/MobileConfigCoreParams;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigCoreParams;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 26
    return-void
.end method

.method private static native initHybrid()Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public native isCanaryEnabled()Z
.end method

.method public native setIsCanaryEnabled(Z)V
.end method

.method public native setSkipBufferVerification(Z)V
.end method

.method public native skipBufferVerification()Z
.end method
