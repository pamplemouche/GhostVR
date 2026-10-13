.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LocalMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$2;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->access$100(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPresenter;->onScrolled()V

    .line 119
    return-void
.end method
