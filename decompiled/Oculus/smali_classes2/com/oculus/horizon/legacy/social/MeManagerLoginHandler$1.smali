.class Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$1;
.super Ljava/lang/Object;
.source "MeManagerLoginHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->afterLoginAsync()Lbolts/Task;
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
        "Lcom/oculus/horizon/api/common/user/User;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/User;

    .line 50
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->access$000(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received profile with photo: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$1;->this$0:Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    invoke-static {v1, v0}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;->access$100(Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
