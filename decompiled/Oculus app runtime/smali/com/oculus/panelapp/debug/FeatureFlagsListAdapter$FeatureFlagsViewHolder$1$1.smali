.class Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;
.super Ljava/util/TimerTask;
.source "FeatureFlagsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;->this$2:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 128
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;->this$2:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1$1;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;)V

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
