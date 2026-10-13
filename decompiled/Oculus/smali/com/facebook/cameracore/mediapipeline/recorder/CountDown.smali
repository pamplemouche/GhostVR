.class public Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;
.super Ljava/lang/Object;
.source "CountDown.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->mCount:I

    .line 12
    return-void
.end method


# virtual methods
.method public decrementAndGet()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->mCount:I

    return v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->mCount:I

    return v0
.end method
