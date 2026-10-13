.class Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;
.super Ljava/lang/Object;
.source "FeatureFlagsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindAction(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

.field final synthetic val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p2

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->val$setting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->setSetting(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$200(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->access$300(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Ljava/util/Timer;

    move-result-object p1

    new-instance p2, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1$1;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 p1, 0x1

    return p1
.end method
