.class public abstract Lcom/facebook/crudolib/params/ParamsCollection;
.super Ljava/lang/Object;
.source "ParamsCollection.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDetached:Z

.field private mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExternallyMutable:Z

.field private mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/crudolib/params/SimpleIntArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-boolean v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    .line 54
    return-void
.end method

.method private compactAndClear()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->getMaxParamsSizeInPool()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollection;->onCompact(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onClear()V

    .line 197
    return-void
.end method


# virtual methods
.method acquire(Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 4
    .param p1, "owner"    # Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 58
    .local v0, "currentValue":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired object with non-zero initial refCount current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 63
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    const-string v2, "release"

    invoke-static {v1, v2}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->markMutable()V

    .line 65
    return-void
.end method

.method addRef()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 72
    return-void
.end method

.method protected attachAsRefToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0
    .param p1, "parentCollection"    # Lcom/facebook/crudolib/params/ParamsCollection;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 145
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 146
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->addRef()V

    .line 147
    return-void
.end method

.method attachToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0
    .param p1, "parentCollection"    # Lcom/facebook/crudolib/params/ParamsCollection;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 136
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 137
    return-void
.end method

.method public encode(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "Writer is null!"

    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    const-string v1, "No encoder set, please call setEncoder() first!"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    invoke-interface {v0, p1, p0}, Lcom/facebook/crudolib/params/ParamsEncoder;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 255
    return-void
.end method

.method encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsEncoder;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "backupEncoder"    # Lcom/facebook/crudolib/params/ParamsEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v1, "Writer is null!"

    invoke-static {p1, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    .line 267
    .local v0, "encoder":Lcom/facebook/crudolib/params/ParamsEncoder;
    :goto_0
    const-string v1, "No encoder available"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    invoke-interface {v0, p1, p0}, Lcom/facebook/crudolib/params/ParamsEncoder;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 269
    return-void

    .end local v0    # "encoder":Lcom/facebook/crudolib/params/ParamsEncoder;
    :cond_0
    move-object v0, p2

    .line 266
    goto :goto_0
.end method

.method getEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)Lcom/facebook/crudolib/params/ParamsEncoder;
    .locals 1
    .param p1, "backupEncoder"    # Lcom/facebook/crudolib/params/ParamsEncoder;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    .end local p1    # "backupEncoder":Lcom/facebook/crudolib/params/ParamsEncoder;
    :cond_0
    return-object p1
.end method

.method getParentEncoderFlags(Ljava/lang/Class;I)I
    .locals 1
    .param p2, "defaultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "encoder":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/crudolib/params/ParamsEncoder;>;"
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->get(Ljava/lang/Object;I)I

    move-result p2

    .line 245
    .end local p2    # "defaultFlags":I
    :cond_0
    return p2
.end method

.method protected final getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionPool;

    return-object v0
.end method

.method public markImmutable()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    .line 170
    return-void
.end method

.method markMutable()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfExternallyMutable()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    .line 178
    return-void
.end method

.method protected abstract onClear()V
.end method

.method protected abstract onCompact(I)V
.end method

.method protected abstract onRelease()V
.end method

.method protected abstract onReleaseReferences()V
.end method

.method public putParentEncoderFlags(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "parentEncoderFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "encoder":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/crudolib/params/ParamsEncoder;>;"
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->put(Ljava/lang/Object;I)V

    .line 232
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 81
    .local v0, "currentCount":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    if-gez v0, :cond_1

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "release() has been called with refCount == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v1, :cond_2

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release, when added to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseInternal()V

    goto :goto_0
.end method

.method protected releaseFromParent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    iget-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 94
    .local v0, "currentCount":I
    if-ne v0, v2, :cond_0

    .line 95
    iput-boolean v2, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    .line 96
    iput-object v3, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 97
    iput-object v3, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    if-gez v0, :cond_1

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "releaseFromParent() has been called with refCount == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseInternal()V

    goto :goto_0
.end method

.method protected releaseInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Releasing object with non-zero refCount."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onReleaseReferences()V

    .line 110
    invoke-direct {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->compactAndClear()V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->markImmutable()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    .line 113
    iput-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    .line 114
    iput-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 115
    iput-object v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    .line 116
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    invoke-static {v0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->close(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onRelease()V

    .line 120
    :cond_1
    return-void
.end method

.method public setEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)V
    .locals 1
    .param p1, "encoder"    # Lcom/facebook/crudolib/params/ParamsEncoder;

    .prologue
    .line 205
    const-string v0, "encoder cannot be null!"

    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    .line 207
    return-void
.end method

.method protected throwIfExternallyMutable()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal bug, expected object to be immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method protected throwIfNotAttachable()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to re-attach a detached ParamsCollection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already added to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    return-void
.end method

.method protected throwIfNotExternallyMutable()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected object to be mutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method
