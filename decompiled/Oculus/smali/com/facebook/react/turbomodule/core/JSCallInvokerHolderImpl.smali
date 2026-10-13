.class public Lcom/facebook/react/turbomodule/core/JSCallInvokerHolderImpl;
.super Ljava/lang/Object;
.source "JSCallInvokerHolderImpl.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "turbomodulejsijni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/JSCallInvokerHolderImpl;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 27
    return-void
.end method
