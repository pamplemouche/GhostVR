.class public Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;
.super Ljava/lang/Object;
.source "ExposureRateLimiter.java"


# instance fields
.field private final mLoggingSlotIds:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;->mLoggingSlotIds:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 19
    return-void
.end method


# virtual methods
.method public take(I)Z
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;->mLoggingSlotIds:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
