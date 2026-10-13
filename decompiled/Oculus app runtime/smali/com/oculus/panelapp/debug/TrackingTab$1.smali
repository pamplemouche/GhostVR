.class Lcom/oculus/panelapp/debug/TrackingTab$1;
.super Ljava/lang/Object;
.source "TrackingTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/TrackingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/TrackingTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/TrackingTab;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oculus/panelapp/debug/TrackingTab$1;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/oculus/panelapp/debug/TrackingTab$1;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/TrackingTab;->access$400(Lcom/oculus/panelapp/debug/TrackingTab;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/TrackingTab$1;->this$0:Lcom/oculus/panelapp/debug/TrackingTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/TrackingTab;->access$300(Lcom/oculus/panelapp/debug/TrackingTab;)Lcom/oculus/panelapp/debug/TrackingDebugInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/TrackingDebugInfo;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
