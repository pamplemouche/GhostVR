.class Lcom/oculus/panelapp/debug/UserTab$5$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/UserTab$5;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$5;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyLogin: onError with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DebugUserTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/UserTab$5$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 3

    const-string p1, "DebugUserTab"

    const-string v0, "verifyLogin: success"

    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$5;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v1}, Lcom/oculus/panelapp/debug/UserTab;->access$100(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$5;->val$debugPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/oculus/panelapp/debug/UserTab;->access$600(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    .line 265
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$5$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$5;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$5;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/UserTab;->access$500(Lcom/oculus/panelapp/debug/UserTab;)V

    return-void
.end method
