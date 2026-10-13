.class Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;
.super Ljava/lang/Object;
.source "HorizonGatekeeperFetcherModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->checkGatekeeper(Ljava/lang/String;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

.field final synthetic val$callbackId:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->val$callbackId:I

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
    .line 86
    sget-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->TAG:Ljava/lang/String;

    const-string v1, "Exception while fetching gk value"

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->val$callbackId:I

    const-string v2, "[{\"enabled\":false}]"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->invokeCallback(ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "enabled"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    sget-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->TAG:Ljava/lang/String;

    const-string v1, "Received null value for gk"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->val$callbackId:I

    const-string v2, "[{\"enabled\":false}]"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->invokeCallback(ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    iget v1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->val$callbackId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[{\"enabled\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->invokeCallback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
