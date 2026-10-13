.class public abstract Lcom/facebook/crudolib/params/ParamsCollection;
.super Ljava/lang/Object;
.source "ParamsCollection.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDetached:Z

.field private mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExternallyMutable:Z

.field private mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/crudolib/params/SimpleIntArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-boolean v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    return-void
.end method

.method private compactAndClear()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->getMaxParamsSizeInPool()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollection;->onCompact(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onClear()V

    return-void
.end method


# virtual methods
.method acquire(Lcom/facebook/crudolib/params/ParamsCollectionPool;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 63
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    const-string v0, "release"

    invoke-static {p1, v0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->markMutable()V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired object with non-zero initial refCount current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method addRef()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected attachAsRefToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 145
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 146
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->addRef()V

    return-void
.end method

.method attachToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 136
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    return-void
.end method

.method public encode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Writer is null!"

    .line 252
    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    const-string v1, "No encoder set, please call setEncoder() first!"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    invoke-interface {v0, p1, p0}, Lcom/facebook/crudolib/params/ParamsEncoder;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Writer is null!"

    .line 265
    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    const-string v0, "No encoder available"

    .line 267
    invoke-static {p2, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    invoke-interface {p2, p1, p0}, Lcom/facebook/crudolib/params/ParamsEncoder;->encode(Ljava/io/Writer;Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method getEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)Lcom/facebook/crudolib/params/ParamsEncoder;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method getParentEncoderFlags(Ljava/lang/Class;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;I)I"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/SimpleIntArrayMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected final getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;
    .locals 1
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionPool;

    return-object v0
.end method

.method public markImmutable()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    return-void
.end method

.method markMutable()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfExternallyMutable()V

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/crudolib/params/ParamsEncoder;",
            ">;I)V"
        }
    .end annotation

    .line 228
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

    return-void
.end method

.method public release()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseInternal()V

    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to release, when added to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "release() has been called with refCount == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected releaseFromParent()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    iput-boolean v1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 97
    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    return-void

    :cond_0
    if-ltz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseInternal()V

    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "releaseFromParent() has been called with refCount == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected releaseInternal()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onReleaseReferences()V

    .line 110
    invoke-direct {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->compactAndClear()V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->markImmutable()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    .line 114
    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    .line 115
    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentEncoderFlags:Lcom/facebook/crudolib/params/SimpleIntArrayMap;

    .line 116
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mSourcePool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mCloseGuard:Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    invoke-static {v0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->close(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollection;->onRelease()V

    :cond_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Releasing object with non-zero refCount."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)V
    .locals 1

    const-string v0, "encoder cannot be null!"

    .line 205
    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mEncoder:Lcom/facebook/crudolib/params/ParamsEncoder;

    return-void
.end method

.method protected throwIfExternallyMutable()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal bug, expected object to be immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected throwIfNotAttachable()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mDetached:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already added to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mParentCollection:Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to re-attach a detached ParamsCollection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected throwIfNotExternallyMutable()V
    .locals 2

    .line 181
    iget-boolean v0, p0, Lcom/facebook/crudolib/params/ParamsCollection;->mExternallyMutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected object to be mutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
