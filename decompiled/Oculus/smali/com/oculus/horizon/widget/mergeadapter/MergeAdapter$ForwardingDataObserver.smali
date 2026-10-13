.class Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingDataObserver"
.end annotation


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 362
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->notifyDataSetChanged()V

    .line 373
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v2, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    .line 382
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-gt v2, v3, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 383
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 384
    invoke-static {v2, v3, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$400(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v2

    .line 383
    invoke-virtual {v0, v2, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->notifyItemRangeChanged(II)V

    .line 385
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 382
    goto :goto_1
.end method

.method public onItemRangeInserted(II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v2, v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    .line 394
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-gt v2, v3, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v3, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 396
    invoke-static {v2, v3, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$400(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v2

    .line 395
    invoke-virtual {v0, v2, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->notifyItemRangeInserted(II)V

    .line 397
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 394
    goto :goto_1
.end method

.method public onItemRangeRemoved(II)V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$200(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    .line 406
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 407
    invoke-static {v1, v2, p1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$400(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result v1

    .line 406
    invoke-virtual {v0, v1, p2}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->notifyItemRangeRemoved(II)V

    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter$ForwardingDataObserver;->this$0:Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;->access$202(Lcom/oculus/horizon/widget/mergeadapter/MergeAdapter;Z)Z

    goto :goto_0
.end method
