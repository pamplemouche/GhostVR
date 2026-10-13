.class Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;
.super Ljava/lang/Object;
.source "NuxPreferencesModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->forceFetchPreferences(I)V
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
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

.field final synthetic val$callbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->val$callbackID:I

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
    .line 250
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while getting preferences"

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 232
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "preferences"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received null String"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$800(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 242
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$900(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->RVRCtxTag:J

    iget v2, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->val$callbackID:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$3;->this$0:Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$800(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method
