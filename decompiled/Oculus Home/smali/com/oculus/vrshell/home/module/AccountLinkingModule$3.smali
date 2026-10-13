.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->facebookLinkWithCredentials(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/authapi/AuthResultCallback",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/authapi/AuthFbLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

.field final synthetic val$failureCallbackID:I

.field final synthetic val$successCallbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->val$successCallbackID:I

    iput p3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->val$failureCallbackID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/oculus/authapi/AuthFbLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->onError(Lcom/oculus/authapi/AuthFbLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthFbLoginError;)V
    .locals 4
    .param p1, "error"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthFbLoginError;->getErrorCode()I

    move-result v1

    const/4 v2, -0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, "twoFactorLoginRequired":Z
    :goto_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->val$successCallbackID:I

    .line 159
    :goto_1
    invoke-static {p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$300(Lcom/oculus/authapi/AuthFbLoginError;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v1, v3}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 160
    return-void

    .line 157
    .end local v0    # "twoFactorLoginRequired":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    .restart local v0    # "twoFactorLoginRequired":Z
    :cond_1
    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->val$failureCallbackID:I

    goto :goto_1
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;->val$successCallbackID:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 152
    return-void
.end method
