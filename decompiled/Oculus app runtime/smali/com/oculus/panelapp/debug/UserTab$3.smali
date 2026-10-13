.class Lcom/oculus/panelapp/debug/UserTab$3;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;->setLoginUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V
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

    .line 151
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$3;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 154
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/UserTab;->access$200(Lcom/oculus/panelapp/debug/UserTab;)Lcom/oculus/authapi/OVRAuth;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    .line 155
    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$300(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    .line 156
    invoke-static {v1}, Lcom/oculus/panelapp/debug/UserTab;->access$400(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/panelapp/debug/UserTab$3$1;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/debug/UserTab$3$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$3;)V

    .line 154
    invoke-virtual {p1, v0, v1, v2}, Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method
