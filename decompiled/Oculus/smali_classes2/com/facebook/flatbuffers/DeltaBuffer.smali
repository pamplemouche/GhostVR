.class public final Lcom/facebook/flatbuffers/DeltaBuffer;
.super Ljava/lang/Object;
.source "DeltaBuffer.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;
    }
.end annotation


# static fields
.field private static final UNSET_MARKER:Ljava/lang/Object;


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDeltaIndices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExtensions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/flatbuffers/Extension;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHasChanged:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextExtensionOrigin:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mScratchDelta:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/flatbuffers/DeltaBuffer;->UNSET_MARKER:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mHasChanged:Z

    .line 99
    iput-object v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 100
    iput-object v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mDeltaIndices:Landroid/util/SparseArray;

    .line 101
    iput p1, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mNextExtensionOrigin:I

    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mLock:Ljava/lang/Object;

    .line 90
    iput-boolean v2, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mHasChanged:Z

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 135
    iget-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v0, v2

    .line 140
    :goto_1
    const-string v3, "DELT"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const-string v4, "DELT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    if-eq v3, v4, :cond_1

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Delta buffer header is invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    .line 110
    goto :goto_0

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_2
    iget-object v3, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mNextExtensionOrigin:I

    .line 148
    add-int/lit8 v0, v0, 0x4

    .line 150
    iget-object v3, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 151
    add-int/lit8 v0, v0, 0x4

    .line 152
    if-lez v5, :cond_6

    .line 153
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v4, v0

    move-object v0, v1

    .line 154
    :goto_2
    if-ge v2, v5, :cond_5

    .line 155
    iget-object v6, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 156
    add-int/lit8 v4, v4, 0x4

    .line 157
    iget-object v7, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 158
    add-int/lit8 v4, v4, 0x4

    .line 160
    new-instance v8, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;

    iget-object v9, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v8, v9, v4}, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 161
    add-int/lit8 v4, v4, 0x10

    .line 163
    invoke-static {v3, v6, v7, v8}, Lcom/facebook/flatbuffers/DeltaBuffer;->addDeltaIndex(Landroid/util/SparseArray;IILcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;)V

    .line 165
    iget v6, v8, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 166
    iget-object v6, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v7, v8, Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;->pivot:I

    invoke-static {v6, v7}, Lcom/facebook/flatbuffers/Extension;->readFromBuffer(Ljava/nio/ByteBuffer;I)Lcom/facebook/flatbuffers/Extension;

    move-result-object v6

    .line 167
    if-nez v0, :cond_3

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 170
    :cond_3
    iget v7, v6, Lcom/facebook/flatbuffers/Extension;->origin:I

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 176
    :goto_3
    iput-object v2, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mDeltaIndices:Landroid/util/SparseArray;

    .line 177
    iput-object v0, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mExtensions:Landroid/util/SparseArray;

    .line 178
    iput-object v1, p0, Lcom/facebook/flatbuffers/DeltaBuffer;->mScratchDelta:Landroid/util/SparseArray;

    .line 179
    return-void

    :cond_6
    move-object v0, v1

    move-object v2, v1

    goto :goto_3
.end method

.method private static addDeltaIndex(Landroid/util/SparseArray;IILcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;",
            ">;>;II",
            "Lcom/facebook/flatbuffers/DeltaBuffer$DeltaIndex;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 199
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 201
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    return-void
.end method
