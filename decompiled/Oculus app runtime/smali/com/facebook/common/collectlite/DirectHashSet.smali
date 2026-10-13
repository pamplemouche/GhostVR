.class public Lcom/facebook/common/collectlite/DirectHashSet;
.super Ljava/util/AbstractSet;
.source "DirectHashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


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
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x0

.field private static final EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

.field private static final LOAD_FACTOR:F = 0.75f

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

    .line 47
    new-instance v0, Lcom/facebook/common/collectlite/DirectHashSet$1;

    invoke-direct {v0}, Lcom/facebook/common/collectlite/DirectHashSet$1;-><init>()V

    sput-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 80
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 86
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 87
    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v2, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 104
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    return-void

    .line 94
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v4, "adjustedCapacity = %d, capacity = %d, LOAD_FACTOR = %s, (capacity / LOAD_FACTOR) = %s"

    .line 95
    invoke-static {v4, v2, p1, v1, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;-><init>(I)V

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/common/collectlite/DirectHashSet;)[Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/common/collectlite/DirectHashSet;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method private static convertElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 342
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 448
    array-length v0, p1

    .line 449
    invoke-static {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    move v1, v0

    .line 452
    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    if-eq v2, p0, :cond_3

    .line 453
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 457
    array-length v2, p1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-ne v1, v0, :cond_0

    :cond_3
    :goto_0
    return v1
.end method

.method private static getModuloHash(Ljava/lang/Object;I)I
    .locals 2

    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    .line 475
    rem-int/2addr p0, p1

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 425
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 426
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 429
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 430
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 435
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 125
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    .line 128
    invoke-static {v5, v1}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v6

    aput-object v5, v1, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iput-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 132
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 415
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 416
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

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    iget v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mThreshold:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 142
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 143
    invoke-direct {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->rehash()V

    :cond_0
    if-nez p1, :cond_1

    .line 147
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    .line 151
    invoke-static {p1, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v1

    .line 153
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-nez v4, :cond_3

    .line 155
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 156
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 157
    aput-object p1, v3, v1

    return v2

    :cond_3
    const/4 v3, 0x0

    if-eq v4, p1, :cond_5

    .line 160
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    return v3
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    .line 172
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

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

    iget-object v2, v0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 196
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public copyTo(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)V"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 204
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 205
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 307
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 308
    check-cast p1, Ljava/util/Set;

    .line 309
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 314
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public firstIndex()I
    .locals 1

    const/4 v0, -0x1

    .line 379
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method getFromBackingArray(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/facebook/common/collectlite/DirectHashSet;->convertElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v0

    const/4 v1, 0x0

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

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 211
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;

    invoke-direct {v0, p0, p0}, Lcom/facebook/common/collectlite/DirectHashSet$DirectHashSetIterator;-><init>(Lcom/facebook/common/collectlite/DirectHashSet;Lcom/facebook/common/collectlite/DirectHashSet;)V

    return-object v0
.end method

.method public nextIndex(I)I
    .locals 2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 387
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 388
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return p1

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 226
    sget-object p1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v2, v0, p1

    if-nez v2, :cond_2

    return v1

    .line 235
    :cond_2
    array-length v0, v0

    :goto_0
    move v2, p1

    :cond_3
    const/4 v3, 0x1

    add-int/2addr p1, v3

    if-lt p1, v0, :cond_4

    const/4 p1, 0x0

    .line 246
    :cond_4
    iget-object v4, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v5, v4, p1

    if-nez v5, :cond_5

    .line 268
    iget p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mModCount:I

    .line 269
    iget p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    const/4 p1, 0x0

    .line 270
    aput-object p1, v4, v2

    return v3

    .line 251
    :cond_5
    invoke-static {v5, v0}, Lcom/facebook/common/collectlite/DirectHashSet;->getModuloHash(Ljava/lang/Object;I)I

    move-result v4

    if-le v4, v2, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-ge p1, v2, :cond_8

    if-nez v6, :cond_9

    if-gt v4, p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_7

    if-gt v4, p1, :cond_7

    :cond_9
    :goto_2
    if-nez v3, :cond_3

    .line 260
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aput-object v5, v3, v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 347
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/facebook/common/collectlite/DirectHashSet;->EMPTY_BACKING_ARRAY:[Ljava/lang/Object;

    return-object v0

    .line 352
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 355
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->getFromBackingArray(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 354
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->size()I

    move-result v0

    .line 364
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 369
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->getFromBackingArray(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1

    .line 368
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v2

    move v1, v3

    goto :goto_0

    .line 371
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 372
    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/DirectHashSet;->firstIndex()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    .line 290
    iget-object v3, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v1, :cond_1

    const-string v1, ", "

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    sget-object v1, Lcom/facebook/common/collectlite/DirectHashSet;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v3, v1, :cond_2

    const-string v3, "null"

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/DirectHashSet;->nextIndex(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/facebook/common/collectlite/DirectHashSet;->mBackingArray:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 410
    invoke-static {p1}, Lcom/facebook/common/collectlite/DirectHashSet;->convertElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 408
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method
