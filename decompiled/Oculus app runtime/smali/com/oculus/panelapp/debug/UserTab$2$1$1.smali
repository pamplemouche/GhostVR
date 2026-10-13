.class Lcom/oculus/panelapp/debug/UserTab$2$1$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$2$1;->onResult(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$2$1;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DebugUserTab"

    const-string v1, "sendTwoFactorCode: success"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$2;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$2;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v2}, Lcom/oculus/panelapp/debug/UserTab;->access$000(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$2;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$2;->val$debugApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v2, v2, Lcom/oculus/panelapp/debug/UserTab$2$1;->val$methodId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$2$1;

    iget-object v3, v3, Lcom/oculus/panelapp/debug/UserTab$2$1;->val$nonce:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oculus/panelapp/debug/UserTab;->access$100(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
