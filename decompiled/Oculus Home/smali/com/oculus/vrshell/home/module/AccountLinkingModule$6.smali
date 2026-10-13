.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->facebookLinkWithTwoFacCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
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
        "Lcom/oculus/authapi/AuthError;",
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
    .line 224
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->val$successCallbackID:I

    iput p3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->val$failureCallbackID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 3
    .param p1, "error"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->val$failureCallbackID:I

    invoke-static {p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$500(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;->val$successCallbackID:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 228
    return-void
.end method
