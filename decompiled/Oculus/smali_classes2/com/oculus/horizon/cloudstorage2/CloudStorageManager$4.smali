.class Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$4;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Resolve failed D: "

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Resolve success :D"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
