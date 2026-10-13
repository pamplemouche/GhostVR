.class Lcom/oculus/panelapp/debug/UserTab$6;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;->setPinUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/UserTab;

.field final synthetic val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$6;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$6;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 290
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$6;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$6;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v1}, Lcom/oculus/panelapp/debug/UserTab;->access$100(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$6;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$6;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oculus/panelapp/debug/UserTab;->access$600(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    return-void
.end method
