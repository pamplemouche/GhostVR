.class public Lcom/facebook/crudolib/view/impression/ImpressionDetector;
.super Ljava/lang/Object;
.source "ImpressionDetector.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/crudolib/view/impression/ImpressionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevFirstRevealedPos:I

.field private mPrevLastRevealedPos:I

.field private mRecyclerView:Landroid/view/ViewGroup;

.field private final mScratchChildRect:Landroid/graphics/Rect;

.field private final mScratchContainerRect:Landroid/graphics/Rect;

.field final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSimulateScrollHandler:Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScratchContainerRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScratchChildRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$1;

    invoke-direct {v0, p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector$1;-><init>(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 184
    new-instance v0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$2;

    invoke-direct {v0, p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector$2;-><init>(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onDataChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->resetRevealedState()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->postSimulateScroll()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->doSimulateScroll()V

    return-void
.end method

.method private doSimulateScroll()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/facebook/crudolib/view/impression/ViewUpdateLogic;->hasPendingAdapterUpdates(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->postSimulateScroll()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/facebook/crudolib/view/impression/ViewUpdateLogic;->doScroll(Landroid/view/ViewGroup;Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V

    goto :goto_0
.end method

.method private isChildRevealed(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 340
    iget-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScratchChildRect:Landroid/graphics/Rect;

    .line 341
    invoke-static {p2, v2}, Lcom/facebook/crudolib/view/impression/VisibilityLogic;->getGlobalVisibleRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    .line 347
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v2, v4

    .line 349
    if-ne v3, v2, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 355
    :cond_2
    int-to-float v4, v2

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 356
    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move v0, v1

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v3, v4

    .line 362
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 363
    const v3, 0x3f333333    # 0.7f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    .line 366
    goto :goto_0
.end method

.method private isTracking(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static negativeSafeDistance(III)I
    .locals 1

    .prologue
    .line 314
    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return p2

    :cond_1
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_0
.end method

.method private static negativeSafeMax(III)I
    .locals 0

    .prologue
    .line 304
    if-gez p0, :cond_1

    .line 305
    if-ltz p1, :cond_0

    .line 309
    :goto_0
    return p1

    :cond_0
    move p1, p2

    .line 305
    goto :goto_0

    .line 306
    :cond_1
    if-gez p1, :cond_2

    move p1, p0

    .line 307
    goto :goto_0

    .line 309
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method private static negativeSafeMin(III)I
    .locals 0

    .prologue
    .line 294
    if-gez p0, :cond_1

    .line 295
    if-ltz p1, :cond_0

    .line 299
    :goto_0
    return p1

    :cond_0
    move p1, p2

    .line 295
    goto :goto_0

    .line 296
    :cond_1
    if-gez p1, :cond_2

    move p1, p0

    .line 297
    goto :goto_0

    .line 299
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private onConcealed(II)V
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/view/impression/ImpressionListener;

    invoke-interface {v0, p1, p2}, Lcom/facebook/crudolib/view/impression/ImpressionListener;->onConcealed(II)V

    .line 328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method private onDataChanged()V
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/view/impression/ImpressionListener;

    invoke-interface {v0}, Lcom/facebook/crudolib/view/impression/ImpressionListener;->onDataChanged()V

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method private onRevealed(II)V
    .locals 3

    .prologue
    .line 322
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/view/impression/ImpressionListener;

    invoke-interface {v0, p1, p2}, Lcom/facebook/crudolib/view/impression/ImpressionListener;->onRevealed(II)V

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method private postSimulateScroll()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mSimulateScrollHandler:Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;-><init>(Lcom/facebook/crudolib/view/impression/ImpressionDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mSimulateScrollHandler:Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mSimulateScrollHandler:Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;

    invoke-virtual {v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;->sendPerformOnScrolled()V

    .line 182
    return-void
.end method

.method private resetRevealedState()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevFirstRevealedPos:I

    .line 161
    iput v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevLastRevealedPos:I

    .line 162
    return-void
.end method

.method private resetRevealedStateAndDeliverConcealed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1, v1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrollInternal(Landroid/view/ViewGroup;II)V

    .line 156
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->resetRevealedState()V

    .line 157
    return-void
.end method


# virtual methods
.method public isTracking()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScrollInternal(Landroid/view/ViewGroup;II)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 212
    invoke-virtual {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal scroll listener state error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v6, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScratchContainerRect:Landroid/graphics/Rect;

    .line 222
    invoke-static {p1, v6}, Lcom/facebook/crudolib/view/impression/VisibilityLogic;->getGlobalVisibleRect(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    move v3, v4

    move v2, v5

    move v0, v5

    .line 231
    :goto_0
    if-ge v3, p3, :cond_3

    .line 232
    add-int v1, p2, v3

    .line 233
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 234
    invoke-direct {p0, v6, v7}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->isChildRevealed(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 235
    if-ne v0, v5, :cond_2

    move v0, v1

    .line 231
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 242
    :cond_3
    iget v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevFirstRevealedPos:I

    invoke-static {v1, v0, v5}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeMin(III)I

    move-result v1

    .line 243
    iget v3, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevLastRevealedPos:I

    invoke-static {v3, v2, v5}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeMax(III)I

    move-result v3

    .line 245
    if-eq v1, v5, :cond_4

    if-ne v3, v5, :cond_5

    .line 246
    :cond_4
    if-eq v1, v3, :cond_9

    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstPos="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; lastPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    sub-int v5, v3, v1

    add-int/lit8 v5, v5, 0x1

    .line 253
    iget v6, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevFirstRevealedPos:I

    invoke-static {v1, v6, v5}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeDistance(III)I

    move-result v6

    .line 254
    invoke-static {v1, v0, v5}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeDistance(III)I

    move-result v5

    .line 255
    iget v7, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevLastRevealedPos:I

    invoke-static {v3, v7, v4}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeDistance(III)I

    move-result v7

    .line 256
    invoke-static {v3, v2, v4}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->negativeSafeDistance(III)I

    move-result v4

    .line 259
    if-lez v5, :cond_6

    .line 260
    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v1, v5}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onConcealed(II)V

    .line 264
    :cond_6
    if-lez v4, :cond_7

    .line 265
    sub-int v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onConcealed(II)V

    .line 269
    :cond_7
    if-lez v6, :cond_8

    .line 270
    add-int v4, v1, v6

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1, v4}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onRevealed(II)V

    .line 274
    :cond_8
    if-lez v7, :cond_9

    .line 275
    sub-int v1, v3, v7

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onRevealed(II)V

    .line 279
    :cond_9
    iput v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevFirstRevealedPos:I

    .line 280
    iput v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mPrevLastRevealedPos:I

    .line 291
    return-void

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 195
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 201
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrollInternal(Landroid/view/ViewGroup;II)V

    goto :goto_0
.end method

.method public registerListener(Lcom/facebook/crudolib/view/impression/ImpressionListener;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public startTracking(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 75
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->startTrackingInternal(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    .line 80
    return-void
.end method

.method startTrackingInternal(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already tracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    .line 98
    iput-object p2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 99
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->resetRevealedState()V

    .line 100
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 103
    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->onScrollInternal(Landroid/view/ViewGroup;II)V

    .line 107
    return-void
.end method

.method public stopTracking(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->stopTrackingInternal(Landroid/view/ViewGroup;)V

    .line 117
    return-void
.end method

.method stopTrackingInternal(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->isTracking(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->resetRevealedStateAndDeliverConcealed()V

    .line 128
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 129
    iput-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 130
    iput-object v2, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->mRecyclerView:Landroid/view/ViewGroup;

    .line 131
    return-void
.end method
