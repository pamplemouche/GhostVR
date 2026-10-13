.class Lcom/oculus/horizon/store/StoreFragment$6;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


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
    .line 582
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$800(Lcom/oculus/horizon/store/StoreFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/oculus/horizon/store/StoreFragment;->access$1002(Lcom/oculus/horizon/store/StoreFragment;I)I

    .line 587
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreFragment;->access$702(Lcom/oculus/horizon/store/StoreFragment;Z)Z

    .line 588
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 589
    new-instance v1, Lcom/oculus/horizon/store/StoreFragment$6$1;

    invoke-direct {v1, p0, v0}, Lcom/oculus/horizon/store/StoreFragment$6$1;-><init>(Lcom/oculus/horizon/store/StoreFragment$6;Ljava/util/Timer;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreFragment;->access$702(Lcom/oculus/horizon/store/StoreFragment;Z)Z

    .line 605
    return-void
.end method
