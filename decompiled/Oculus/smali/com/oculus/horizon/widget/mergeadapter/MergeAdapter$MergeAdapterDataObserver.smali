.class Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeAdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$1;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;-><init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)V

    return-void
.end method

.method private onGranularNotify()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Don\'t call notify* directly on the MergeAdapter, call only on sub-adapters"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$300(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_1

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$300(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;

    iget-object v0, v0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$AdapterWithViewTypeMap;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0, v2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->onGranularNotify()V

    .line 328
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->onGranularNotify()V

    .line 333
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$MergeAdapterDataObserver;->onGranularNotify()V

    .line 338
    return-void
.end method
