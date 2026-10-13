.class Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;
.super Ljava/lang/Object;
.source "NuxPreferencesModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/systemutilities/module/NuxPreferencesModule;->forceFetchPreferences(I)V
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
.field final synthetic this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

.field final synthetic val$callbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/systemutilities/module/NuxPreferencesModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    iput p2, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->val$callbackID:I

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
    .line 248
    invoke-static {}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while getting preferences"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "preferences"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    invoke-static {}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received null String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$800(Lcom/oculus/systemutilities/module/NuxPreferencesModule;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 240
    iget-object v0, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$900(Lcom/oculus/systemutilities/module/NuxPreferencesModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    iget-wide v0, v0, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->RVRCtxTag:J

    iget v2, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->val$callbackID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/oculus/systemutilities/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/systemutilities/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/systemutilities/module/NuxPreferencesModule;->access$800(Lcom/oculus/systemutilities/module/NuxPreferencesModule;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method
