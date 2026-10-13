.class Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;
.super Ljava/lang/Object;
.source "QuickLaunchTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;I)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;->this$1:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    iput p2, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 218
    iget-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;->this$1:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->this$0:Lcom/oculus/panelapp/debug/QuickLaunchTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab;->access$100(Lcom/oculus/panelapp/debug/QuickLaunchTab;)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    move-result-object p1

    iget v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->access$200(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;->this$1:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->this$0:Lcom/oculus/panelapp/debug/QuickLaunchTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/QuickLaunchTab;->access$300(Lcom/oculus/panelapp/debug/QuickLaunchTab;)Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->getLaunchString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method
