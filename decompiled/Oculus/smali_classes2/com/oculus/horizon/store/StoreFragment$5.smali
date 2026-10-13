.class Lcom/oculus/horizon/store/StoreFragment$5;
.super Ljava/util/TimerTask;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->setupAutoScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$700(Lcom/oculus/horizon/store/StoreFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 569
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$800(Lcom/oculus/horizon/store/StoreFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 570
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$900(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$1004(Lcom/oculus/horizon/store/StoreFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreFragment;->access$900(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreFragment;->access$1002(Lcom/oculus/horizon/store/StoreFragment;I)I

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$800(Lcom/oculus/horizon/store/StoreFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$5;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreFragment;->access$1000(Lcom/oculus/horizon/store/StoreFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 576
    :cond_1
    return-void
.end method
