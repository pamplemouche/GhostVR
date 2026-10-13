.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->unlink(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

.field final synthetic val$callbackID:I

.field final synthetic val$serviceProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->val$callbackID:I

    iput-object p3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->val$serviceProvider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-static {}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while unlinking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->val$serviceProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->val$callbackID:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "numOfLinkedAccountsDeleted"    # Ljava/lang/Integer;

    .prologue
    .line 124
    const-string v1, ""

    .line 126
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "result"

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    const-string v2, "success"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iget v3, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->val$callbackID:I

    invoke-virtual {v2, v3, v1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->invokeCallback(ILjava/lang/String;)V

    .line 133
    return-void

    .line 127
    :cond_0
    :try_start_1
    const-string v2, "error"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSON Error"

    invoke-static {v2, v3, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
