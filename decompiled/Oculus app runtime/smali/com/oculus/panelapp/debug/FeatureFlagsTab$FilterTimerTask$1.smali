.class Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask$1;
.super Ljava/lang/Object;
.source "FeatureFlagsTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask$1;->this$1:Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$300(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->notifyDataSetChanged()V

    return-void
.end method
