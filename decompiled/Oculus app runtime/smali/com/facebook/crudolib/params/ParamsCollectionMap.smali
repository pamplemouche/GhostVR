.class public final Lcom/facebook/crudolib/params/ParamsCollectionMap;
.super Lcom/facebook/crudolib/params/ParamsCollection;
.source "ParamsCollectionMap.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final mPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/facebook/crudolib/params/ParamsCollection;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    return-void
.end method

.method private addInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotAddable(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    return-void
.end method

.method private addSubparamsPhaseOneInternal(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1

    const-string v0, "subParams cannot be null!"

    .line 75
    invoke-static {p2, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotAddable(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private throwIfNotAddable(Ljava/lang/String;)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotExternallyMutable()V

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfOutOfBounds(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 41
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    if-ge p1, v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public acquireArrayThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionArray;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireArray()Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-object v0
.end method

.method public acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-object v0
.end method

.method public add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addSubparamsPhaseOneInternal(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->attachToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p2    # Ljava/lang/Boolean;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addAsRef(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addSubparamsPhaseOneInternal(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 71
    invoke-virtual {p2, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->attachAsRefToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfOutOfBounds(I)V

    .line 31
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfOutOfBounds(I)V

    .line 37
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onClear()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    return-void
.end method

.method protected onCompact(I)V
    .locals 2

    .line 141
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    sub-int/2addr v0, p1

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, p1

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->release(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    return-void
.end method

.method protected onReleaseReferences()V
    .locals 3

    const/4 v0, 0x0

    .line 120
    :goto_0
    iget v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    if-ge v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    .line 122
    instance-of v2, v1, Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v2, :cond_0

    .line 123
    check-cast v1, Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v1}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseFromParent()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget v1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 86
    iget p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    return v0
.end method
