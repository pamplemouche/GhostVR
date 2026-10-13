.class Lcom/oculus/modules/AuthModuleImpl$10;
.super Landroid/os/ResultReceiver;
.source "AuthModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/AuthModuleImpl;->statusImpl(Lcom/oculus/modules/codegen/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/AuthModuleImpl;

.field final synthetic val$resolver:Lcom/oculus/modules/codegen/Resolver;


# direct methods
.method constructor <init>(Lcom/oculus/modules/AuthModuleImpl;Landroid/os/Handler;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/AuthModuleImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/oculus/modules/AuthModuleImpl$10;->this$0:Lcom/oculus/modules/AuthModuleImpl;

    iput-object p3, p0, Lcom/oculus/modules/AuthModuleImpl$10;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 241
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;-><init>()V

    .line 242
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 243
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 244
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    const-string v2, "error_code"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->code:D

    .line 245
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusImpl() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/oculus/modules/AuthModuleImpl$10;->val$resolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 252
    return-void

    .line 247
    :cond_0
    const-string v1, "user_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;->userId:Ljava/lang/String;

    .line 248
    const-string v1, "access_token"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;->accessToken:Ljava/lang/String;

    .line 249
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusImpl() succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
