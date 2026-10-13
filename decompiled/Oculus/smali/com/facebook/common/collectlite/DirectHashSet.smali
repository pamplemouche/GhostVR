.class public Lcom/facebook/common/collectlite/DirectHashSet;
.super Ljava/util/AbstractSet;
.source "DirectHashSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final serialVersionUID:J


# instance fields
.field private transient mBackingArray:[Ljava/lang/Object;

.field private transient mModCount:I

.field private mSize:I

.field private transient mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/common/collectlite/DirectHashSet$1;

    invoke-direct {v0}, Lcom/facebook/common/collectlite/DirectHashSet$1;-><init>()V

    sput-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;-><init>(I)V

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    .line 80
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 81
    if-gez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 86
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 87
    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    .line 89
    int-to-float v0, p1

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 93
    if-gez v0, :cond_1

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "adjustedCapacity = %d, capacity = %d, LOAD_FACTOR = %s, (capacity / LOAD_FACTOR) = %s"

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 99
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, p1

    div-float/2addr v5, v6

    .line 100
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static {v2, v0, v3, v4, v5}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    .line 105
    return-void

    .line 104
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/common/collectlite/DirectHashSet;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method private static convertElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 448
    array-length v0, p1

    .line 449
    invoke-static {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v1

    move v0, v1

    .line 452
    :cond_0
    aget-object v2, p1, v0

    .line 453
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    :cond_1
    :goto_0
    return v0

    .line 456
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 457
    array-length v2, p1

    if-ne v0, v2, :cond_3

    .line 458
    const/4 v0, 0x0

    .line 460
    :cond_3
    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private static getModuloHash(Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 469
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    .line 470
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 471
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 472
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 473
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 475
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 429
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 430
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    .line 431
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 433
    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 435
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 7

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 121
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x2

    .line 125
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 126
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 127
    if-eqz v5, :cond_1

    .line 128
    invoke-static {v5, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v6

    aput-object v5, v2, v6

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iput-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    .line 132
    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    .line 133
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 415
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 416
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 417
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 418
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 419
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->getFromBackingArray(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    iget v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    if-lt v0, v2, :cond_0

    .line 142
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 143
    invoke-direct {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->rehash()V

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v2, v0

    .line 151
    invoke-static {p1, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    .line 153
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 154
    if-nez v3, :cond_4

    .line 155
    iget v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 156
    iget v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 157
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 158
    const/4 v1, 0x1

    .line 161
    :cond_3
    return v1

    .line 160
    :cond_4
    if-eq v3, p1, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 164
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 172
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 174
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 180
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/collectlite/DirectHashSet;

    .line 181
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    if-nez p1, :cond_2

    .line 196
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p1, p0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 308
    check-cast p1, Ljava/util/Set;

    .line 309
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 314
    if-eqz v5, :cond_3

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    .line 315
    goto :goto_0

    .line 313
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method public firstIndex()I
    .locals 1

    .prologue
    .line 379
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method getFromBackingArray(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/facebook/common/collectlite/DirectHashSet;->convertElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 328
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 327
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    goto :goto_0

    .line 330
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;

    invoke-direct {v0, p0, p0}, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;-><init>(Lcom/facebook/common/collectlite/DirectHashSet;Lcom/facebook/common/collectlite/DirectHashSet;)V

    return-object v0
.end method

.method public nextIndex(I)I
    .locals 2

    .prologue
    .line 387
    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 392
    :goto_1
    return v0

    .line 387
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_1
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    if-nez p1, :cond_2

    .line 226
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v5, v2

    move v4, v0

    .line 241
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 242
    if-lt v0, v5, :cond_4

    move v0, v1

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v6, v2, v0

    .line 247
    if-nez v6, :cond_5

    .line 268
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 269
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 270
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    move v1, v3

    .line 272
    goto :goto_0

    .line 251
    :cond_5
    invoke-static {v6, v5}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v7

    .line 252
    if-le v7, v4, :cond_7

    move v2, v3

    .line 253
    :goto_2
    if-ge v0, v4, :cond_9

    .line 254
    if-nez v2, :cond_6

    if-gt v7, v0, :cond_8

    :cond_6
    move v2, v3

    .line 259
    :goto_3
    if-nez v2, :cond_3

    .line 260
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aput-object v6, v2, v4

    move v4, v0

    .line 261
    goto :goto_1

    :cond_7
    move v2, v1

    .line 252
    goto :goto_2

    :cond_8
    move v2, v1

    .line 254
    goto :goto_3

    .line 256
    :cond_9
    if-eqz v2, :cond_a

    if-gt v7, v0, :cond_a

    move v2, v3

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v0

    .line 348
    if-nez v0, :cond_1

    .line 350
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    .line 357
    :cond_0
    return-object v0

    .line 352
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 353
    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 355
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->getFromBackingArray(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 354
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v1

    move v2, v3

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v4

    .line 364
    array-length v0, p1

    if-ge v0, v4, :cond_2

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 367
    :goto_0
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v1

    :goto_1
    if-ltz v1, :cond_0

    .line 369
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->getFromBackingArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    .line 368
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v1

    move v2, v3

    goto :goto_1

    .line 371
    :cond_0
    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 372
    const/4 v1, 0x0

    aput-object v1, v0, v4

    .line 374
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string/jumbo v0, "{}"

    .line 298
    :goto_0
    return-object v0

    .line 286
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    const/4 v1, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 290
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 291
    if-nez v2, :cond_1

    .line 292
    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    sget-object v2, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    const-string v0, "null"

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 297
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
