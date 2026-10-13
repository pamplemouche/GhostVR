.class Lcom/oculus/modules/AuthModuleImpl$7;
.super Ljava/lang/Object;
.source "AuthModuleImpl.java"

# interfaces
.implements Lcom/oculus/authapi/AuthResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/AuthModuleImpl;->verifyLoginImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V
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
.field final synthetic this$0:Lcom/oculus/modules/AuthModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/AuthModuleImpl;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oculus/modules/AuthModuleImpl$7;->this$0:Lcom/oculus/modules/AuthModuleImpl;

    iput-object p2, p0, Lcom/oculus/modules/AuthModuleImpl$7;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/authapi/AuthError;)V
    .locals 2
    .param p1, "error"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 178
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verifyLoginImpl() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl$7;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-static {p1}, Lcom/oculus/modules/AuthModuleImpl;->access$1400(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/AuthModuleImpl$7;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 172
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verifyLoginImpl() succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl$7;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$1300()Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 174
    return-void
.end method
