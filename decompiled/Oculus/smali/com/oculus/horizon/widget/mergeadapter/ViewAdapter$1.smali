.class Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter$1;->this$0:Lcom/oculus/horizon/widget/mergeadapter/ViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
