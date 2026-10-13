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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/crudolib/params/ParamsCollection;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method private addInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotAddable(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    .line 116
    return-void
.end method

.method private addSubparamsPhaseOneInternal(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1

    .prologue
    .line 75
    const-string v0, "subParams cannot be null!"

    invoke-static {p2, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotAddable(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method private throwIfNotAddable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfNotExternallyMutable()V

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method private throwIfOutOfBounds(I)V
    .locals 1

    .prologue
    .line 41
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    if-lt p1, v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public acquireArrayThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionArray;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireArray()Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 101
    return-object v0
.end method

.method public acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 95
    return-object v0
.end method

.method public add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addSubparamsPhaseOneInternal(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->attachToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 61
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->addInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfOutOfBounds(I)V

    .line 31
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->throwIfOutOfBounds(I)V

    .line 37
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onClear()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    .line 137
    return-void
.end method

.method protected onCompact(I)V
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    sub-int/2addr v0, p1

    .line 142
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 148
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->release(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 131
    return-void
.end method

.method protected onReleaseReferences()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    if-ge v1, v0, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 122
    instance-of v2, v0, Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v2, :cond_0

    .line 123
    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseFromParent()V

    .line 120
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionMap;->mSize:I

    return v0
.end method
