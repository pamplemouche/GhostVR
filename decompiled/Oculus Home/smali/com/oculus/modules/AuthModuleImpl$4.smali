.class Lcom/oculus/modules/AuthModuleImpl$4;
.super Ljava/lang/Object;
.source "AuthModuleImpl.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/AuthModuleImpl;->loginToFbImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
        "Lcom/oculus/authapi/AuthFbLoginResult;",
        "Lcom/oculus/authapi/AuthFbLoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/AuthModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/AuthModuleImpl;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/modules/AuthModuleImpl$4;->this$0:Lcom/oculus/modules/AuthModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/AuthModuleImpl$4;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/oculus/authapi/AuthError;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/oculus/authapi/AuthFbLoginError;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/AuthModuleImpl$4;->onError(Lcom/oculus/authapi/AuthFbLoginError;)V

    return-void
.end method

.method public onError(Lcom/oculus/authapi/AuthFbLoginError;)V
    .locals 2
    .param p1, "error"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 109
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginToFbImpl() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl$4;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-static {p1}, Lcom/oculus/modules/AuthModuleImpl;->access$800(Lcom/oculus/authapi/AuthFbLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public onResult(Lcom/oculus/authapi/AuthFbLoginResult;)V
    .locals 2
    .param p1, "result"    # Lcom/oculus/authapi/AuthFbLoginResult;

    .prologue
    .line 103
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginToFbImpl() succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl$4;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-static {p1}, Lcom/oculus/modules/AuthModuleImpl;->access$700(Lcom/oculus/authapi/AuthFbLoginResult;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/oculus/authapi/AuthFbLoginResult;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/AuthModuleImpl$4;->onResult(Lcom/oculus/authapi/AuthFbLoginResult;)V

    return-void
.end method
