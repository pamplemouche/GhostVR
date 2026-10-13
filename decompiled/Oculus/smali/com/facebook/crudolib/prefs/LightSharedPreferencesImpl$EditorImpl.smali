.class public Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "LightSharedPreferencesImpl.java"

# interfaces
.implements Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorImpl"
.end annotation


# instance fields
.field private volatile mClear:Z

.field private volatile mIsModifiedFrozen:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iput-object p1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 122
    iput-boolean v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 123
    iput-boolean v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mIsModifiedFrozen:Z

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;)Z
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->synchronizeDiskWithCache()Z

    move-result v0

    return v0
.end method

.method private commitToMemory(Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 253
    new-instance v3, Lcom/facebook/common/collectlite/DirectHashSet;

    invoke-direct {v3}, Lcom/facebook/common/collectlite/DirectHashSet;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 260
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$600()Ljava/lang/Object;

    move-result-object v6

    if-ne v0, v6, :cond_2

    .line 265
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 267
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v7}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 272
    iget-object v6, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v6}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$1100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 278
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iput-boolean v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 280
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 282
    return-object v3

    :cond_4
    move v0, v2

    .line 277
    goto :goto_2
.end method

.method private synchronizeDiskWithCache()Z
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$1100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$1100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$100(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 299
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->commitToDisk(Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private throwIfModifiedIsFrozen()V
    .locals 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mIsModifiedFrozen:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Editors shouldn\'t be modified during commit!"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->freezeModified()Ljava/util/Map;

    move-result-object v0

    .line 231
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->commitToMemory(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v1, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$800(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/util/Set;)V

    .line 234
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$1000(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl$1;-><init>(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->thawModified()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->thawModified()V

    throw v0
.end method

.method public clear()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->throwIfModifiedIsFrozen()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 193
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$700(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->commit(I)Z

    move-result v0

    return v0
.end method

.method public commit(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 205
    const-string v1, "commit is called on the main thread."

    .line 206
    if-ne p1, v0, :cond_1

    .line 207
    const-string v2, "LightSharedPreferencesImpl"

    invoke-static {v2, v1}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->freezeModified()Ljava/util/Map;

    move-result-object v1

    .line 216
    :try_start_0
    invoke-direct {p0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->commitToMemory(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$800(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;Ljava/util/Set;)V

    .line 219
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->synchronizeDiskWithCache()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 222
    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->thawModified()V

    .line 224
    :goto_0
    return v0

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->thawModified()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->thawModified()V

    throw v0
.end method

.method commitToDisk(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->this$0:Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$200(Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;)Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesStorage;->saveSharedPreference(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v1, "LightSharedPreferencesImpl"

    const-string v2, "Commit to disk failed."

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized freezeModified()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mIsModifiedFrozen:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to freeze an editor that is already frozen!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mIsModifiedFrozen:Z

    .line 327
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->throwIfModifiedIsFrozen()V

    .line 135
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->throwIfModifiedIsFrozen()V

    .line 142
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->throwIfModifiedIsFrozen()V

    .line 185
    iget-object v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$500(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl;->access$600()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-object p0
.end method

.method declared-synchronized thawModified()V
    .locals 1

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/crudolib/prefs/LightSharedPreferencesImpl$EditorImpl;->mIsModifiedFrozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
