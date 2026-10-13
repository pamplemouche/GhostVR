.class final Lcom/oculus/vrshell/home/module/NuxPreferencesModule$1;
.super Ljava/lang/Object;
.source "NuxPreferencesModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->initialFetchPreferencesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
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
    .line 139
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while getting preferences"

    invoke-static {v0, v1, p1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "preferences"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received null String"

    invoke-static {v1, v2}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    :try_start_0
    invoke-static {p1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$300()Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$400()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    .local v0, "callbackID":Ljava/lang/Integer;
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$300()Lcom/oculus/vrshell/home/module/NuxPreferencesModule;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$500(Lcom/oculus/vrshell/home/module/NuxPreferencesModule;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    .end local v0    # "callbackID":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_1
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
