.class Lcom/oculus/horizon/store/StoreFragment$6$1;
.super Ljava/util/TimerTask;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment$6;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/store/StoreFragment$6;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment$6;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$6$1;->this$1:Lcom/oculus/horizon/store/StoreFragment$6;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreFragment$6$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$6$1;->this$1:Lcom/oculus/horizon/store/StoreFragment$6;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreFragment$6;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreFragment;->access$702(Lcom/oculus/horizon/store/StoreFragment;Z)Z

    .line 594
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$6$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 595
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$6$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 596
    return-void
.end method
