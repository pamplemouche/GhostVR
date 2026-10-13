.class public Lcom/facebook/native_bridge/NativeLocationManager;
.super Ljava/lang/Object;
.source "NativeLocationManager.java"


# static fields
.field private static final EMPTY:[D


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "native_bridge"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/native_bridge/NativeLocationManager;->EMPTY:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private native initHybrid()Lcom/facebook/jni/HybridData;
.end method
