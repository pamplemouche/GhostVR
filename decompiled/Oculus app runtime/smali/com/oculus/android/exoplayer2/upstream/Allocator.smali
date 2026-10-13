.class public interface abstract Lcom/oculus/android/exoplayer2/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# virtual methods
.method public abstract allocate()Lcom/oculus/android/exoplayer2/upstream/Allocation;
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract getTotalBytesAllocated()I
.end method

.method public abstract release(Lcom/oculus/android/exoplayer2/upstream/Allocation;)V
.end method

.method public abstract release([Lcom/oculus/android/exoplayer2/upstream/Allocation;)V
.end method

.method public abstract trim()V
.end method
