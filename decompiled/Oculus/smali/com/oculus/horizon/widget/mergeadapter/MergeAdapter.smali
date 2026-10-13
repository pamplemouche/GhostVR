.class public final Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MergeAdapter.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;,
        Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;,
        Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;,
        Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifying:Z

.field private final mViewHolderToAdapter:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeIndexMax:I

.field private final mViewTypeToAdapter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhichAdapterInfo:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 79
    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;-><init>(II)V

    .line 80
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;-><init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mWhichAdapterInfo:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeIndexMax:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeToAdapter:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p2}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    .line 86
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;-><init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$1;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mNotifying:Z

    return v0
.end method

.method static synthetic access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mNotifying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->getExternalPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v0

    return v0
.end method

.method private getExternalPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 170
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 171
    if-ne v0, p1, :cond_1

    .line 172
    if-ge p2, v5, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    add-int v0, v3, p2

    return v0

    :cond_0
    move v0, v1

    .line 172
    goto :goto_1

    .line 175
    :cond_1
    add-int/2addr v3, v5

    .line 168
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter not found in list of sub adapters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;-><init>(I)V

    .line 55
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->addView(Landroid/view/View;)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->add(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    return-object v0
.end method

.method private whichAdapter(I)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mWhichAdapterInfo:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->whichAdapter(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;I)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mWhichAdapterInfo:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    return-object v0
.end method

.method private whichAdapter(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 145
    if-gez p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 152
    add-int v3, v2, v0

    .line 154
    if-ge p2, v3, :cond_1

    .line 155
    iput v1, p1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterIndex:I

    .line 156
    sub-int v0, p2, v2

    iput v0, p1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterPosition:I

    .line 157
    return-void

    .line 150
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exceeds count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    invoke-direct {v0, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;

    invoke-direct {v0, p0, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;-><init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 101
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public add(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->add(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->add(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    return-void
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/2addr v2, v0

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    return v2
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 247
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->whichAdapter(I)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    move-result-object v1

    .line 217
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    iget v2, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    .line 219
    iget-object v2, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v1, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterPosition:I

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    .line 222
    iget-object v1, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    .line 223
    if-gez v1, :cond_0

    .line 225
    iget v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeIndexMax:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeIndexMax:I

    .line 226
    iget-object v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeToAdapter:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 230
    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 272
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->whichAdapter(I)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    iget v2, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v1, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterPosition:I

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 193
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->whichAdapter(I)Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;

    move-result-object v1

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    iget v2, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterIndex:I

    .line 200
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v1, v1, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$WhichAdapterInfo;->adapterPosition:I

    .line 202
    invoke-virtual {v0, p1, v1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 203
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewTypeToAdapter:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    .line 183
    iget-object v1, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mViewTypeExternalToLocalMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 184
    iget-object v2, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 263
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 268
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->mViewHolderToAdapter:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 253
    return-void
.end method
