.class public Lcom/facebook/animated/gif/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mNativeContext:J
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifFrame;->mNativeContext:J

    .line 34
    return-void
.end method

.method private native nativeDispose()V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeFinalize()V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetDisposalMode()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetDurationMs()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetHeight()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetTransparentPixelColor()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetWidth()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetXOffset()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeGetYOffset()I
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeHasTransparency()Z
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeFinalize()V

    .line 39
    return-void
.end method
