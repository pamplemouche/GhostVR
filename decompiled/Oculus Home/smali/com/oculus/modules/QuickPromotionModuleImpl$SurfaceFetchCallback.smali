.class public abstract Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;
.super Ljava/lang/Object;
.source "QuickPromotionModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/QuickPromotionModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SurfaceFetchCallback"
.end annotation


# instance fields
.field final mSurfaceCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->mSurfaceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    return-void
.end method


# virtual methods
.method public markSurfaceComplete()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->mSurfaceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 128
    .local v0, "count":I
    if-gez v0, :cond_0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Surface fetch completed more times than the number of surfaces."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->onFetchComplete()V

    .line 133
    :cond_1
    return-void
.end method

.method public abstract onFetchComplete()V
.end method

.method public setSurfaceCount(I)V
    .locals 1
    .param p1, "surfaceCount"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/modules/QuickPromotionModuleImpl$SurfaceFetchCallback;->mSurfaceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 124
    return-void
.end method
