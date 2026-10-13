.class Lcom/oculus/vrshell/home/module/SocialModule$2;
.super Ljava/lang/Object;
.source "SocialModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/SocialModule;->fetchFBConnectAccount(I)V
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
        "Ljava/lang/String;",
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
    .line 181
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$2;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/SocialModule$2;->val$callbackID:I

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
    .line 189
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while fetching Facebook Connect account"

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/SocialModule$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "facebookAccountString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/SocialModule$2;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/SocialModule;->RVRCtxTag:J

    iget v2, p0, Lcom/oculus/vrshell/home/module/SocialModule$2;->val$callbackID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/SocialModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 185
    return-void
.end method
