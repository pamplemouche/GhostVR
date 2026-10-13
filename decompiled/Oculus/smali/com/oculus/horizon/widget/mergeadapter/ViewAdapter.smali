.class Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;->mView:Landroid/view/View;

    .line 17
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 26
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter$1;

    iget-object v1, p0, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter$1;-><init>(Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;Landroid/view/View;)V

    return-object v0
.end method
