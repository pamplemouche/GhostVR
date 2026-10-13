.class final Lcom/oculus/modules/LibraryModuleImpl$2;
.super Ljava/lang/Object;
.source "LibraryModuleImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/LibraryModuleImpl;->fetchLibraryAsync(Lcom/oculus/libraryapi/OVRLibrary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<[",
        "Lcom/oculus/library/model/App;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
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
    .line 157
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception while getting sparse library"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    check-cast p1, [Lcom/oculus/library/model/App;

    invoke-virtual {p0, p1}, Lcom/oculus/modules/LibraryModuleImpl$2;->onSuccess([Lcom/oculus/library/model/App;)V

    return-void
.end method

.method public onSuccess([Lcom/oculus/library/model/App;)V
    .locals 8
    .param p1, "apps"    # [Lcom/oculus/library/model/App;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 124
    const-string v2, "Received null apps from OVRLibrary"

    .line 125
    .local v2, "error":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Received null apps from OVRLibrary"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Received null apps from OVRLibrary"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 153
    .end local v2    # "error":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 134
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/oculus/modules/LibraryModuleImpl;->access$302(Ljava/util/List;)Ljava/util/List;

    .line 136
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, p1, v3

    .line 137
    .local v0, "app":Lcom/oculus/library/model/App;
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$300()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$400()Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "app":Lcom/oculus/library/model/App;
    :cond_2
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 141
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 142
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/oculus/modules/LibraryModuleImpl;->access$302(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_3
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception while parsing library"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 147
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 148
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/oculus/modules/LibraryModuleImpl;->access$302(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :cond_4
    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/oculus/modules/LibraryModuleImpl;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
