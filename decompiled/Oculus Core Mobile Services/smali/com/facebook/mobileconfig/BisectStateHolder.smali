.class public Lcom/facebook/mobileconfig/BisectStateHolder;
.super Ljava/lang/Object;
.source "BisectStateHolder.java"


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

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/mobileconfig/BisectStateHolder;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 52
    return-void
.end method


# virtual methods
.method public native canContinue()Z
.end method

.method public native getCulprit()Ljava/lang/String;
.end method

.method public native getLeft()I
.end method

.method public native getMiddle()I
.end method

.method public native getNumberOfStepsMade()I
.end method

.method public native getNumberOfStepsRemaining()I
.end method

.method public native getRight()I
.end method

.method public native getSize()I
.end method

.method public native getTaskNumber()Ljava/lang/String;
.end method

.method public native getUniqueId()Ljava/lang/String;
.end method

.method public native isRunning()Z
.end method
