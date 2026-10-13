.class public Lcom/facebook/mobileconfig/BisectHelperHolder;
.super Ljava/lang/Object;
.source "BisectHelperHolder.java"


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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/mobileconfig/BisectHelperHolder;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 34
    return-void
.end method


# virtual methods
.method public native getCurrentState()Lcom/facebook/mobileconfig/BisectStateHolder;
.end method

.method public native startBisection(Ljava/lang/String;Lcom/facebook/mobileconfig/BisectCallback;)V
.end method

.method public native stopBisection()Z
.end method

.method public native userDidNotReproduceBug()Z
.end method

.method public native userDidReproduceBug()Z
.end method
