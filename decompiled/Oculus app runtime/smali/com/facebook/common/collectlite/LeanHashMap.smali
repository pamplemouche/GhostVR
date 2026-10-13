.class public Lcom/facebook/common/collectlite/LeanHashMap;
.super Ljava/lang/Object;
.source "LeanHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/collectlite/LeanHashMap$Values;,
        Lcom/facebook/common/collectlite/LeanHashMap$KeySet;,
        Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;,
        Lcom/facebook/common/collectlite/LeanHashMap$ValueIterator;,
        Lcom/facebook/common/collectlite/LeanHashMap$KeyIterator;,
        Lcom/facebook/common/collectlite/LeanHashMap$EntryIterator;,
        Lcom/facebook/common/collectlite/LeanHashMap$BaseMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_ARRAY_SIZE:I = 0x20000000

.field private static final MAXIMUM_CAPACITY:I = 0x10000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final NULL_KEY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x4c35d633a555d9feL


# instance fields
.field private transient mEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient mModCount:I

.field private transient mSize:I

.field private transient mTable:[Ljava/lang/Object;

.field private transient mThreshold:I

.field private transient mValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$1;

    invoke-direct {v0}, Lcom/facebook/common/collectlite/LeanHashMap$1;-><init>()V

    sput-object v0, Lcom/facebook/common/collectlite/LeanHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 117
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    const/high16 v0, 0x10000000

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    .line 144
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->resizeMappingTable(I)V

    return-void

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (must not be less than zero)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;-><init>(I)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/common/collectlite/LeanHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/LeanHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/common/collectlite/LeanHashMap;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    return p0
.end method

.method static synthetic access$400(I)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/common/collectlite/LeanHashMap;)[Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(I)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/facebook/common/collectlite/LeanHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/collectlite/LeanHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private addNewEntry(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    .line 376
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_2

    .line 380
    iget v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mThreshold:I

    if-lt v0, v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->doubleCapacityAndRehash()V

    .line 383
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->baseIndex(Ljava/lang/Object;)I

    move-result p3

    .line 386
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p3}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 388
    invoke-direct {p0, p3}, Lcom/facebook/common/collectlite/LeanHashMap;->nextBaseIndex(I)I

    move-result p3

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p3}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v1

    aput-object p1, v0, v1

    .line 392
    iget-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p3}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p3

    aput-object p2, p1, p3

    .line 394
    iget p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    .line 395
    iget p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    return-void

    .line 377
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Maximum capacity reached, cannot add new item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private baseIndex(Ljava/lang/Object;)I
    .locals 1

    .line 584
    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyHash(Ljava/lang/Object;)I

    move-result p1

    .line 585
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 659
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->findKeyBaseIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p2, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private containsNullValue()Z
    .locals 5

    .line 183
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 185
    iget-object v3, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private currentCapacity()I
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    array-length v0, v0

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private doubleCapacityAndRehash()V
    .locals 1

    .line 526
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->increaseCapacityAndRehash(I)V

    return-void
.end method

.method private findKeyBaseIndex(Ljava/lang/Object;)I
    .locals 4

    .line 727
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 732
    sget-object p1, Lcom/facebook/common/collectlite/LeanHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 735
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->baseIndex(Ljava/lang/Object;)I

    move-result v0

    .line 737
    iget-object v2, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, p1, :cond_3

    .line 739
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 742
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextBaseIndex(I)I

    move-result v0

    .line 743
    iget-object v2, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    return v1
.end method

.method private increaseCapacityAndRehash(I)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_4

    .line 539
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    if-le p1, v0, :cond_3

    const/high16 v1, 0x10000000

    if-gt p1, v1, :cond_2

    .line 548
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    .line 549
    iget v2, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    .line 552
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->resizeMappingTable(I)V

    if-lez v2, :cond_1

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    if-ge v3, v2, :cond_1

    .line 557
    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v4

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    .line 559
    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result v5

    aget-object v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/facebook/common/collectlite/LeanHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 545
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "New capacity is greater than maximum capacity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "New capacity must be greater than current capacity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "New capacity must be a power of two."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static keyHash(Ljava/lang/Object;)I
    .locals 0

    .line 621
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->secondaryHash(I)I

    move-result p0

    return p0
.end method

.method private static keyIndex(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private needToShiftUpOnDelete(II)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    .line 715
    invoke-direct {p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->baseIndex(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, p2, :cond_3

    if-le v1, p1, :cond_1

    if-le v1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    if-gt v1, p1, :cond_4

    if-le v1, p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 712
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method private nextBaseIndex(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 589
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 997
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 998
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_4

    const/high16 v1, 0x10000000

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->roundUpToPowerOfTwo(I)I

    move-result v1

    .line 1010
    :goto_0
    invoke-direct {p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->resizeMappingTable(I)V

    .line 1012
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1018
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1019
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1020
    invoke-virtual {p0, v2, v3}, Lcom/facebook/common/collectlite/LeanHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 1014
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1000
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeEntryAt(I)V
    .locals 5

    .line 682
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 687
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->nextBaseIndex(I)I

    move-result v0

    .line 688
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 689
    invoke-direct {p0, p1, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->needToShiftUpOnDelete(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 691
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    iget-object v2, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    move p1, v0

    .line 694
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextBaseIndex(I)I

    move-result v0

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 698
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    aput-object v2, v0, p1

    .line 699
    iget p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    .line 700
    iget p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    return-void

    .line 683
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 669
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->findKeyBaseIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p2, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 672
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->removeEntryAt(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private resizeMappingTable(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    .line 578
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mThreshold:I

    const/4 v0, 0x0

    .line 579
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    mul-int/lit8 p1, p1, 0x2

    .line 580
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    return-void

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capacity must be a power of two."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static roundUpToPowerOfTwo(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static secondaryHash(I)I
    .locals 2

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

    return p0
.end method

.method private static valueIndex(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f400000    # 0.75f

    .line 985
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 986
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 987
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 988
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->firstIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 989
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 990
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 988
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    .line 415
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mModCount:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 473
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/collectlite/LeanHashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    .line 479
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :catch_0
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->findKeyBaseIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->containsNullValue()Z

    move-result p1

    return p1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 171
    iget-object v3, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_1

    .line 172
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mEntrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap$EntrySet;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    iput-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mEntrySet:Ljava/util/Set;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 501
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 502
    check-cast p1, Ljava/util/Map;

    .line 503
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->firstIndex()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_4

    .line 508
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 509
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 510
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/facebook/common/collectlite/LeanHashMap;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 507
    :cond_2
    invoke-virtual {p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public firstIndex()I
    .locals 1

    const/4 v0, -0x1

    .line 230
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->findKeyBaseIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 487
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->firstIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 488
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 489
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 490
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 487
    invoke-virtual {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 437
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    .line 275
    sget-object v0, Lcom/facebook/common/collectlite/LeanHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 272
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap$KeySet;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    iput-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mKeySet:Ljava/util/Set;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mKeySet:Ljava/util/Set;

    return-object v0
.end method

.method public nextIndex(I)I
    .locals 3

    .line 251
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    if-lez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    .line 254
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 333
    sget-object p1, Lcom/facebook/common/collectlite/LeanHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 335
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->baseIndex(Ljava/lang/Object;)I

    move-result v0

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 341
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-eq v1, p1, :cond_3

    .line 343
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 350
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->nextBaseIndex(I)I

    move-result v0

    goto :goto_0

    .line 345
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    .line 346
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 347
    aput-object p2, v0, p1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 357
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->currentCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 366
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/collectlite/LeanHashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    .line 367
    invoke-direct {p0, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->increaseCapacityAndRehash(I)V

    .line 370
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/common/collectlite/LeanHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 401
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->findKeyBaseIndex(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 405
    invoke-direct {p0, p1}, Lcom/facebook/common/collectlite/LeanHashMap;->removeEntryAt(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/facebook/common/collectlite/LeanHashMap;->firstIndex()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    if-nez v1, :cond_1

    const-string v1, ", "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/LeanHashMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "null"

    .line 454
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/LeanHashMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, v2}, Lcom/facebook/common/collectlite/LeanHashMap;->nextIndex(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v1, "}"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->keyIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mTable:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/collectlite/LeanHashMap;->valueIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 286
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mValues:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/facebook/common/collectlite/LeanHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/collectlite/LeanHashMap$Values;-><init>(Lcom/facebook/common/collectlite/LeanHashMap;Lcom/facebook/common/collectlite/LeanHashMap$1;)V

    iput-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mValues:Ljava/util/Collection;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/collectlite/LeanHashMap;->mValues:Ljava/util/Collection;

    return-object v0
.end method
