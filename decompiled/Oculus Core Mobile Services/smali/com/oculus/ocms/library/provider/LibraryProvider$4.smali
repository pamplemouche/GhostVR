.class Lcom/oculus/ocms/library/provider/LibraryProvider$4;
.super Ljava/lang/Object;
.source "LibraryProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ocms/library/provider/LibraryProvider;->refreshHorizon(Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

.field final synthetic val$blocking:Z


# direct methods
.method constructor <init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Z)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    iput-boolean p2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->val$blocking:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 320
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 321
    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    .line 322
    invoke-virtual {v1}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.oculus.library"

    .line 324
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 325
    if-nez v1, :cond_0

    .line 357
    :goto_0
    return-object v6

    .line 329
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->val$blocking:Z

    if-nez v2, :cond_1

    .line 330
    const-string v0, "refetch"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 334
    :cond_1
    :try_start_1
    new-instance v2, Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider$4$1;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider$4;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V

    .line 340
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 341
    const-string v4, "result_receiver"

    iget-object v5, p0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;->this$0:Lcom/oculus/ocms/library/provider/LibraryProvider;

    .line 343
    invoke-static {v5, v2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$200(Lcom/oculus/ocms/library/provider/LibraryProvider;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 341
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    const-string v2, "refetch"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 353
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-static {}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error waiting for horizon refresh"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    :try_start_3
    invoke-static {}, Lcom/oculus/ocms/library/provider/LibraryProvider;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception while refreshing horizon library"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method
