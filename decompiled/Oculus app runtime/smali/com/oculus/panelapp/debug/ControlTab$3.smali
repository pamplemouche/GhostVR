.class Lcom/oculus/panelapp/debug/ControlTab$3;
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


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/ControlTab;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$3;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/oculus/notifications/NotificationSender;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "title"

    const-string v1, "Test Title"

    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text"

    const-string v1, "Test Text About Notification"

    .line 62
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "priority"

    const/4 v1, 0x2

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "vrshell_aui_persist"

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$3;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/ControlTab;->access$000(Lcom/oculus/panelapp/debug/ControlTab;)I

    move-result p1

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$3;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/ControlTab;->access$008(Lcom/oculus/panelapp/debug/ControlTab;)I

    .line 68
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ControlTab$3;->this$0:Lcom/oculus/panelapp/debug/ControlTab;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/ControlTab;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/oculus/notifications/NotificationSender;->sendTestNotif(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
