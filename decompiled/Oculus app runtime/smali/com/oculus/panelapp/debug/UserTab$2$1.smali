.class Lcom/oculus/panelapp/debug/UserTab$2$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$2;->sendTwoFacCode(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/oculus/panelapp/debug/UserTab$2;

.field final synthetic val$methodId:Ljava/lang/String;

.field final synthetic val$nonce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$2$1;->val$methodId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/panelapp/debug/UserTab$2$1;->val$nonce:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTwoFactorCode: onError = "

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

    .line 105
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/UserTab$2$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$2$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$2;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$2;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$2$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/UserTab$2$1$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$2$1;)V

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/UserTab;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
