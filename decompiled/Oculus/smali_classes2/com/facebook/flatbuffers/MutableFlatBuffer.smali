.class public final Lcom/facebook/flatbuffers/MutableFlatBuffer;
.super Ljava/lang/Object;
.source "MutableFlatBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;
    }
.end annotation


# static fields
.field private static volatile sGlobalDebugEnabledFlag:Z


# instance fields
.field private final DEBUG_LOG_LOCK:Ljava/lang/Object;

.field private final mBaseBuffer:Ljava/nio/ByteBuffer;

.field private final mCorruptionHandler:Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mMutationBuffer:Lcom/facebook/flatbuffers/DeltaBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMutationSupported:Z

.field private mTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->sGlobalDebugEnabledFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)V
    .locals 2
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->DEBUG_LOG_LOCK:Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mBaseBuffer:Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mBaseBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 105
    iput-boolean p3, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mMutationSupported:Z

    .line 106
    iput-object p4, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mCorruptionHandler:Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;

    .line 107
    iget-boolean v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mMutationSupported:Z

    if-eqz v0, :cond_0

    .line 109
    if-eqz p2, :cond_1

    .line 110
    :try_start_0
    new-instance v0, Lcom/facebook/flatbuffers/DeltaBuffer;

    invoke-direct {v0, p2}, Lcom/facebook/flatbuffers/DeltaBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mMutationBuffer:Lcom/facebook/flatbuffers/DeltaBuffer;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Lcom/facebook/flatbuffers/DeltaBuffer;

    iget-object v1, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mBaseBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/flatbuffers/DeltaBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mMutationBuffer:Lcom/facebook/flatbuffers/DeltaBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->handleCorruptionAndThrow(Ljava/lang/Exception;)Lcom/facebook/flatbuffers/FlatBufferCorruptionException;

    move-result-object v0

    throw v0
.end method

.method private duplicateBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private handleCorruptionAndThrow(Ljava/lang/Exception;)Lcom/facebook/flatbuffers/FlatBufferCorruptionException;
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mCorruptionHandler:Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mCorruptionHandler:Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;

    invoke-interface {v0, p1}, Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;->handleFlatBufferCorruption(Ljava/lang/Exception;)V

    .line 1921
    :cond_0
    new-instance v0, Lcom/facebook/flatbuffers/FlatBufferCorruptionException;

    invoke-virtual {p0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->getDebugLogs()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/flatbuffers/FlatBufferCorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static resolveRootFlattenable(Ljava/nio/ByteBuffer;Lcom/facebook/flatbuffers/Flattenable;Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)Lcom/facebook/flatbuffers/Flattenable;
    .locals 2
    .param p2    # Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/flatbuffers/Flattenable;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;",
            "Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1360
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->resolveRootFlattenable(Ljava/nio/ByteBuffer;Lcom/facebook/flatbuffers/Flattenable;Ljava/nio/ByteBuffer;ZLcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)Lcom/facebook/flatbuffers/Flattenable;

    move-result-object v0

    return-object v0
.end method

.method public static resolveRootFlattenable(Ljava/nio/ByteBuffer;Lcom/facebook/flatbuffers/Flattenable;Ljava/nio/ByteBuffer;ZLcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)Lcom/facebook/flatbuffers/Flattenable;
    .locals 1
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/flatbuffers/Flattenable;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;",
            "Ljava/nio/ByteBuffer;",
            "Z",
            "Lcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1382
    new-instance v0, Lcom/facebook/flatbuffers/MutableFlatBuffer;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/facebook/flatbuffers/MutableFlatBuffer;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLcom/facebook/flatbuffers/MutableFlatBuffer$FlatBufferCorruptionHandler;)V

    .line 1384
    invoke-virtual {v0, p1}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->resolveRootFlattenable(Lcom/facebook/flatbuffers/Flattenable;)Lcom/facebook/flatbuffers/Flattenable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addTag(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mTags:Landroid/util/SparseArray;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mBaseBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->duplicateBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDebugLogs()Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    sget-boolean v0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->sGlobalDebugEnabledFlag:Z

    if-nez v0, :cond_0

    .line 189
    const-string v0, ""

    .line 207
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->DEBUG_LOG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 194
    instance-of v0, v2, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 195
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :cond_1
    const/4 v0, 0x6

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const-string v4, "Source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 201
    const-string v2, "\nHistory:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    check-cast v0, Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getTag(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mTags:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markDebugSource(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 125
    sget-boolean v0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->sGlobalDebugEnabledFlag:Z

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->DEBUG_LOG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v0, 0x5

    :try_start_0
    const-string v2, "[%s @ %d] %s"

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 133
    invoke-static {v2, v3, v4, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v0, v2}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->addTag(ILjava/lang/Object;)V

    .line 136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resolveFlattenableAt(ILcom/facebook/flatbuffers/Flattenable;)Lcom/facebook/flatbuffers/Flattenable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/flatbuffers/Flattenable;",
            ">(ITT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1310
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/facebook/flatbuffers/Flattenable;->initFromMutableFlatBuffer(Lcom/facebook/flatbuffers/MutableFlatBuffer;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    return-object p2

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->handleCorruptionAndThrow(Ljava/lang/Exception;)Lcom/facebook/flatbuffers/FlatBufferCorruptionException;

    move-result-object v0

    throw v0
.end method

.method public resolveRootFlattenable(Lcom/facebook/flatbuffers/Flattenable;)Lcom/facebook/flatbuffers/Flattenable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/flatbuffers/Flattenable;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1279
    :try_start_0
    iget-object v0, p0, Lcom/facebook/flatbuffers/MutableFlatBuffer;->mBaseBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/flatbuffers/FlatBuffer;->getRootObjectPosition(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1283
    if-gtz v0, :cond_0

    .line 1284
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return-object v0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    invoke-direct {p0, v0}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->handleCorruptionAndThrow(Ljava/lang/Exception;)Lcom/facebook/flatbuffers/FlatBufferCorruptionException;

    move-result-object v0

    throw v0

    .line 1286
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/flatbuffers/MutableFlatBuffer;->resolveFlattenableAt(ILcom/facebook/flatbuffers/Flattenable;)Lcom/facebook/flatbuffers/Flattenable;

    move-result-object v0

    goto :goto_0
.end method
