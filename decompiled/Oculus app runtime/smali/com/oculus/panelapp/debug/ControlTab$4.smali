.class Lcom/oculus/panelapp/debug/ControlTab$4;
.super Ljava/lang/Object;
.source "ControlTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/ControlTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/ControlTab;

.field final synthetic val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/ControlTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/ControlTab;->access$100(Lcom/oculus/panelapp/debug/ControlTab;)Z

    move-result p1

    const-string v0, "{color:"

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "green}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/ControlTab;->access$200(Lcom/oculus/panelapp/debug/ControlTab;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "blue}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/ControlTab;->access$200(Lcom/oculus/panelapp/debug/ControlTab;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/ControlTab;->access$100(Lcom/oculus/panelapp/debug/ControlTab;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/panelapp/debug/ControlTab;->access$102(Lcom/oculus/panelapp/debug/ControlTab;Z)Z

    .line 89
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ControlTab$4;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPartyBroadcastMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method
