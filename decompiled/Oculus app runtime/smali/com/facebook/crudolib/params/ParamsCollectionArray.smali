.class public final Lcom/facebook/crudolib/params/ParamsCollectionArray;
.super Lcom/facebook/crudolib/params/ParamsCollection;
.source "ParamsCollectionArray.java"


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/facebook/crudolib/params/ParamsCollection;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private addInternal(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->throwIfNotExternallyMutable()V

    .line 76
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSubparamsPhaseOneInternal(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1

    const-string v0, "subParams cannot be null!"

    .line 56
    invoke-static {p1, v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->throwIfNotExternallyMutable()V

    .line 58
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollection;->throwIfNotAttachable()V

    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addInternal(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acquireArrayThenAdd()Lcom/facebook/crudolib/params/ParamsCollectionArray;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireArray()Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-object v0
.end method

.method public acquireMapThenAdd()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-object v0
.end method

.method public add(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addSubparamsPhaseOneInternal(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 41
    invoke-virtual {p1, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->attachToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public addAsRef(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->addSubparamsPhaseOneInternal(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/facebook/crudolib/params/ParamsCollection;->attachAsRefToParent(Lcom/facebook/crudolib/params/ParamsCollection;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onClear()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onCompact(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, p1

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->getSourcePool()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->release(Lcom/facebook/crudolib/params/ParamsCollectionArray;)V

    return-void
.end method

.method protected onReleaseReferences()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 84
    instance-of v3, v2, Lcom/facebook/crudolib/params/ParamsCollection;

    if-eqz v3, :cond_0

    .line 85
    check-cast v2, Lcom/facebook/crudolib/params/ParamsCollection;

    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollection;->releaseFromParent()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/facebook/crudolib/params/ParamsCollectionArray;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
