.class public Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;
.super Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
.source "MobileConfigMmapHandleHolder.java"


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
    const-string v0, "mobileconfig-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/mobileconfig/MobileConfigMmapHandle;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 21
    return-void
.end method


# virtual methods
.method public native getFilename()Ljava/lang/String;
.end method

.method public getJavaByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/MobileConfigMmapHandleHolder;->mmapFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
