.class Lcom/oculus/panelapp/debug/UserTab$5;
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

.field final synthetic val$methodId:Ljava/lang/String;

.field final synthetic val$nonce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$5;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    iput-object p3, p0, Lcom/oculus/panelapp/debug/UserTab$5;->val$nonce:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/panelapp/debug/UserTab$5;->val$methodId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 258
    new-instance v6, Lcom/oculus/panelapp/debug/UserTab$5$1;

    invoke-direct {v6, p0}, Lcom/oculus/panelapp/debug/UserTab$5$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$5;)V

    .line 281
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/UserTab;->access$200(Lcom/oculus/panelapp/debug/UserTab;)Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$5;->val$nonce:Ljava/lang/String;

    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    .line 282
    invoke-static {p1}, Lcom/oculus/panelapp/debug/UserTab;->access$700(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/panelapp/debug/UserTab$5;->val$methodId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 281
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/authapi/OVRAuth;->verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V

    return-void
.end method
