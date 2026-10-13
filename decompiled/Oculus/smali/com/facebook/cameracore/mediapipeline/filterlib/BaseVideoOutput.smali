.class public abstract Lcom/facebook/cameracore/mediapipeline/filterlib/BaseVideoOutput;
.super Ljava/lang/Object;
.source "BaseVideoOutput.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;


# instance fields
.field private volatile mIsEnabled:Z

.field protected mSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/filterlib/BaseVideoOutput;->mIsEnabled:Z

    .line 26
    return-void
.end method
