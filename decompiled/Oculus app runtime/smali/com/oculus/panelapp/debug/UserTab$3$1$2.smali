.class Lcom/oculus/panelapp/debug/UserTab$3$1$2;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$3$1;->onError(Lcom/oculus/authapi/AuthLoginError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

.field final synthetic val$authLoginError:Lcom/oculus/authapi/AuthLoginError;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$3$1;Lcom/oculus/authapi/AuthLoginError;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginWithEmailAndPassword: error with code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    iget v1, v1, Lcom/oculus/authapi/AuthLoginError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUserTab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    iget v0, v0, Lcom/oculus/authapi/AuthLoginError;->mErrorCode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v0, v4, :cond_0

    const-string v0, "result login approvals error."

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-static {v0, v1, v3}, Lcom/oculus/panelapp/debug/UserTab;->access$600(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    .line 188
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    invoke-virtual {v4}, Lcom/oculus/authapi/AuthLoginError;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/panelapp/debug/UserTab;->access$100(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    iget v0, v0, Lcom/oculus/authapi/AuthLoginError;->mErrorCode:I

    const/4 v4, -0x8

    if-ne v0, v4, :cond_1

    const-string v0, "result two fac error."

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-static {v0, v1, v3}, Lcom/oculus/panelapp/debug/UserTab;->access$600(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    .line 196
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/UserTab$3;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    iget-object v3, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    .line 199
    invoke-virtual {v3}, Lcom/oculus/authapi/AuthLoginError;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->val$authLoginError:Lcom/oculus/authapi/AuthLoginError;

    .line 200
    invoke-virtual {v4}, Lcom/oculus/authapi/AuthLoginError;->getNonce()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/panelapp/debug/UserTab;->access$000(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 202
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$2;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$500(Lcom/oculus/panelapp/debug/UserTab;)V

    return-void
.end method
