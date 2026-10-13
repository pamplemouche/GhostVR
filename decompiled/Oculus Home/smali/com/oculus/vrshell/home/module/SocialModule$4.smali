.class Lcom/oculus/vrshell/home/module/SocialModule$4;
.super Ljava/lang/Object;
.source "SocialModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/SocialModule;->fetchFacebookAccount(I)V
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
        "Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/SocialModule;

.field final synthetic val$callbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/SocialModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/SocialModule;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->val$callbackID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while fetching Facebook account"

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-void
.end method

.method public onSuccess(Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;)V
    .locals 5
    .param p1, "facebookAccount"    # Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received null Facebook account"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/SocialModule;->RVRCtxTag:J

    iget v2, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->val$callbackID:I

    const-string v3, "[null]"

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/SocialModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/SocialModule;->RVRCtxTag:J

    iget v2, p0, Lcom/oculus/vrshell/home/module/SocialModule$4;->val$callbackID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$200()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/SocialModule;->nativeInvokeCallback(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    check-cast p1, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/SocialModule$4;->onSuccess(Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;)V

    return-void
.end method
