.class public abstract Lcom/facebook/quicklog/BaseListenersList;
.super Ljava/lang/Object;
.source "BaseListenersList.java"


# instance fields
.field private final mGreedyListeners:I

.field protected final mListeners:[Lcom/facebook/quicklog/QuickEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMarkersToListeners:Landroid/util/SparseIntArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/facebook/quicklog/QuickEventListener;)V
    .locals 2
    .param p1    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/quicklog/BaseListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    .line 35
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/quicklog/BaseListenersList;->mMarkersToListeners:Landroid/util/SparseIntArray;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/quicklog/BaseListenersList;->mGreedyListeners:I

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_1
    array-length v0, p1

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "We support up to 64 listeners"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/quicklog/BaseListenersList;->mMarkersToListeners:Landroid/util/SparseIntArray;

    .line 43
    iget-object v0, p0, Lcom/facebook/quicklog/BaseListenersList;->mMarkersToListeners:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/BaseListenersList;->calculateEnabledMarkers([Lcom/facebook/quicklog/QuickEventListener;Landroid/util/SparseIntArray;)I

    move-result v0

    iput v0, p0, Lcom/facebook/quicklog/BaseListenersList;->mGreedyListeners:I

    goto :goto_0
.end method

.method private calculateEnabledMarkers([Lcom/facebook/quicklog/QuickEventListener;Landroid/util/SparseIntArray;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 50
    array-length v5, p1

    .line 52
    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    move v0, v2

    :goto_0
    if-ge v4, v5, :cond_3

    .line 53
    aget-object v1, p1, v4

    .line 54
    invoke-virtual {p0, v1}, Lcom/facebook/quicklog/BaseListenersList;->getListenerMarkers(Lcom/facebook/quicklog/QuickEventListener;)[I

    move-result-object v6

    .line 55
    if-nez v6, :cond_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 58
    :cond_1
    array-length v7, v6

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    aget v8, v6, v1

    .line 59
    if-nez v8, :cond_2

    .line 60
    or-int/2addr v0, v3

    .line 58
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 63
    or-int/2addr v9, v3

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 67
    :cond_3
    return v0
.end method


# virtual methods
.method protected abstract getListenerMarkers(Lcom/facebook/quicklog/QuickEventListener;)[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected getListenersMaskForMarker(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/facebook/quicklog/BaseListenersList;->mMarkersToListeners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/quicklog/BaseListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/facebook/quicklog/BaseListenersList;->mGreedyListeners:I

    iget-object v2, p0, Lcom/facebook/quicklog/BaseListenersList;->mMarkersToListeners:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0
.end method
