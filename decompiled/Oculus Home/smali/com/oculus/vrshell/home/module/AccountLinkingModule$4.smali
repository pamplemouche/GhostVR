.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->facebookLinkCheckMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
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
        "Ljava/lang/Boolean;",
        "Lcom/oculus/authapi/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

.field final synthetic val$authToken:Ljava/lang/String;

.field final synthetic val$failureCallbackID:I

.field final synthetic val$machineID:Ljava/lang/String;

.field final synthetic val$successCallbackID:I

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iput-object p2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$authToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$machineID:Ljava/lang/String;

    iput p5, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$successCallbackID:I

    iput p6, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$failureCallbackID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 3
    .param p1, "error"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$failureCallbackID:I

    invoke-static {p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$500(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$authToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$machineID:Ljava/lang/String;

    iget v4, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$successCallbackID:I

    iget v5, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$failureCallbackID:I

    invoke-static/range {v0 .. v5}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$400(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->val$failureCallbackID:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
