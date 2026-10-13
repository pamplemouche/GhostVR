.class Lcom/oculus/horizon/fbconnect/FBConnectHelper$1;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;->startFetchFBData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/horizon/fbconnect/FacebookData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/fbconnect/FacebookData;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectHelper$1;->this$0:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->access$000(Lcom/oculus/horizon/fbconnect/FBConnectHelper;)Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    move-result-object v1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fbconnect/FacebookData;

    invoke-interface {v1, v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;->onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
