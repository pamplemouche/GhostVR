.class Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$3;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->testDownload(Ljava/lang/String;)V
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


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$3;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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
    .line 195
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Download failed D:"

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Download cancelled :S"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Download success :D"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
