.class public Lcom/facebook/common/android/FbLocalBroadcastManager;
.super Ljava/lang/Object;
.source "FbLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;,
        Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;,
        Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FbLocalBroadcastManager"

.field private static sInstance:Lcom/facebook/common/android/FbLocalBroadcastManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final mPendingBroadcasts:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    .line 118
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    .line 120
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mPendingBroadcasts:Lcom/google/common/collect/Multimap;

    .line 121
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    .line 137
    iput-object p1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/common/android/FbLocalBroadcastManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/facebook/common/android/FbLocalBroadcastManager;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/android/FbLocalBroadcastManager;->executePendingBroadcastsForThread(J)V

    return-void
.end method

.method private callBroadcastsRecords([Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;)V
    .locals 7
    .param p1, "brs"    # [Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;

    .prologue
    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 446
    aget-object v0, p1, v1

    .line 447
    .local v0, "br":Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;
    iget-object v3, v0, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    .line 448
    .local v2, "receiverRecord":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    iget-object v4, v2, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 445
    .end local v2    # "receiverRecord":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "br":Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;
    :cond_1
    return-void
.end method

.method private executePendingBroadcasts(Lcom/google/common/collect/Multimap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "pendingBroadcasts":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    :goto_0
    iget-object v4, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v4

    .line 420
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 421
    monitor-exit v4

    .line 431
    :goto_1
    return-void

    .line 424
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 425
    .local v1, "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    if-nez v1, :cond_1

    .line 426
    monitor-exit v4

    goto :goto_1

    .line 438
    .end local v1    # "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 429
    .restart local v1    # "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 430
    .local v0, "N":I
    if-gtz v0, :cond_2

    .line 431
    monitor-exit v4

    goto :goto_1

    .line 434
    :cond_2
    new-array v2, v0, [Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;

    .line 435
    .local v2, "brs":[Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 437
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->clear()V

    .line 438
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    invoke-direct {p0, v2}, Lcom/facebook/common/android/FbLocalBroadcastManager;->callBroadcastsRecords([Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;)V

    goto :goto_0
.end method

.method private executePendingBroadcastsForThread(J)V
    .locals 7
    .param p1, "threadId"    # J

    .prologue
    .line 391
    :goto_0
    iget-object v4, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v4

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mPendingBroadcasts:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 393
    monitor-exit v4

    .line 403
    :goto_1
    return-void

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mPendingBroadcasts:Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 397
    .local v1, "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    if-nez v1, :cond_1

    .line 398
    monitor-exit v4

    goto :goto_1

    .line 410
    .end local v1    # "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 401
    .restart local v1    # "broadcastRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 402
    .local v0, "N":I
    if-gtz v0, :cond_2

    .line 403
    monitor-exit v4

    goto :goto_1

    .line 406
    :cond_2
    new-array v2, v0, [Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;

    .line 407
    .local v2, "brs":[Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 409
    iget-object v3, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mPendingBroadcasts:Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    .line 410
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-direct {p0, v2}, Lcom/facebook/common/android/FbLocalBroadcastManager;->callBroadcastsRecords([Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;)V

    goto :goto_0
.end method

.method private getEntriesThreadId(Landroid/content/Intent;Lcom/google/common/collect/Multimap;)Ljava/util/Set;
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    .local p2, "retPendingBroadcasts":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 277
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 280
    .local v6, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 282
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .line 283
    .local v9, "debug":Z
    :goto_0
    if-eqz v9, :cond_0

    .line 284
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "Resolving type %s scheme %s of intent %s"

    move-object/from16 v0, p1

    invoke-static {v2, v8, v4, v5, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    :cond_0
    const/16 v17, 0x0

    .line 288
    .local v17, "threadToReceivers":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 289
    .local v10, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v10, :cond_9

    .line 290
    if-eqz v9, :cond_1

    .line 291
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "Action list: %s"

    invoke-static {v2, v8, v10}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    :cond_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    .line 294
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    .line 295
    .local v14, "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    if-eqz v9, :cond_2

    .line 296
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "Matching against filter %s"

    iget-object v0, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v2, v8, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    :cond_2
    iget-boolean v2, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v2, :cond_5

    .line 299
    if-eqz v9, :cond_3

    .line 300
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "  Filter\'s target already added"

    invoke-static {v2, v8}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 282
    .end local v9    # "debug":Z
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    .end local v11    # "i":I
    .end local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    .end local v17    # "threadToReceivers":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 305
    .restart local v9    # "debug":Z
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    .restart local v11    # "i":I
    .restart local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    .restart local v17    # "threadToReceivers":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_5
    iget-object v2, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v8, "LocalBroadcastManager"

    .line 306
    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v12

    .line 309
    .local v12, "match":I
    if-ltz v12, :cond_8

    .line 310
    if-eqz v9, :cond_6

    .line 311
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "  Filter matched!  match=%d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v8, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_6
    if-nez v17, :cond_7

    .line 315
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v17

    .line 318
    :cond_7
    iget-wide v0, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->looperId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v14}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_2

    .line 361
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "data":Landroid/net/Uri;
    .end local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "debug":Z
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    .end local v11    # "i":I
    .end local v12    # "match":I
    .end local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    .end local v17    # "threadToReceivers":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 322
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "scheme":Ljava/lang/String;
    .restart local v6    # "data":Landroid/net/Uri;
    .restart local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "debug":Z
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    .restart local v11    # "i":I
    .restart local v12    # "match":I
    .restart local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    .restart local v17    # "threadToReceivers":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_8
    if-eqz v9, :cond_3

    .line 324
    packed-switch v12, :pswitch_data_0

    .line 338
    :try_start_1
    const-string v13, "unknown reason"

    .line 341
    .local v13, "reason":Ljava/lang/String;
    :goto_3
    const-string v2, "FbLocalBroadcastManager"

    const-string v8, "  Filter did not match: %s"

    invoke-static {v2, v8, v13}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 326
    .end local v13    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string v13, "action"

    .line 327
    .restart local v13    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 329
    .end local v13    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v13, "category"

    .line 330
    .restart local v13    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 332
    .end local v13    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v13, "data"

    .line 333
    .restart local v13    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 335
    .end local v13    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v13, "type"

    .line 336
    .restart local v13    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 347
    .end local v11    # "i":I
    .end local v12    # "match":I
    .end local v13    # "reason":Ljava/lang/String;
    .end local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    :cond_9
    if-eqz v17, :cond_c

    .line 348
    invoke-interface/range {v17 .. v17}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    .line 349
    .restart local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    const/4 v8, 0x0

    iput-boolean v8, v14, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_4

    .line 352
    .end local v14    # "receiver":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    :cond_a
    invoke-interface/range {v17 .. v17}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 353
    .local v15, "threadId":Ljava/lang/Long;
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v16

    .line 354
    .local v16, "threadReceivers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    new-instance v8, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1}, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/Collection;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v8}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 357
    .end local v15    # "threadId":Ljava/lang/Long;
    .end local v16    # "threadReceivers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_b
    invoke-interface/range {v17 .. v17}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    monitor-exit v18

    .line 360
    :goto_6
    return-object v2

    :cond_c
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 324
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getIdFor(Landroid/os/Looper;)J
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/facebook/common/android/FbLocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-object v1, Lcom/facebook/common/android/FbLocalBroadcastManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->sInstance:Lcom/facebook/common/android/FbLocalBroadcastManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/facebook/common/android/FbLocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/common/android/FbLocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->sInstance:Lcom/facebook/common/android/FbLocalBroadcastManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/facebook/common/android/FbLocalBroadcastManager;->sInstance:Lcom/facebook/common/android/FbLocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendScheduledBroadcast(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v4, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v4

    .line 255
    :try_start_0
    iget-object v5, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mPendingBroadcasts:Lcom/google/common/collect/Multimap;

    invoke-direct {p0, p1, v5}, Lcom/facebook/common/android/FbLocalBroadcastManager;->getEntriesThreadId(Landroid/content/Intent;Lcom/google/common/collect/Multimap;)Ljava/util/Set;

    move-result-object v2

    .line 256
    .local v2, "threadIdsToCall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    .line 257
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 258
    .local v1, "threadId":Ljava/lang/Long;
    iget-object v6, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 259
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 263
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 270
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "threadId":Ljava/lang/Long;
    .end local v2    # "threadIdsToCall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 268
    .restart local v2    # "threadIdsToCall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    monitor-exit v4

    .line 271
    :goto_1
    return v3

    .line 270
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method getRegisteredNonMainHandlerThreads()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 142
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/common/android/FbLocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Looper;)V

    .line 143
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/common/android/FbLocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Looper;)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Looper;)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "looper"    # Landroid/os/Looper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    if-nez p3, :cond_0

    .line 161
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 192
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v10, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v10

    .line 166
    :try_start_0
    invoke-static {p3}, Lcom/facebook/common/android/FbLocalBroadcastManager;->getIdFor(Landroid/os/Looper;)J

    move-result-wide v4

    .line 167
    .local v4, "looperId":J
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    .line 168
    .local v6, "handler":Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;
    if-nez v6, :cond_1

    .line 169
    new-instance v6, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    .end local v6    # "handler":Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;
    invoke-direct {v6, p0, p3, v4, v5}, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;-><init>(Lcom/facebook/common/android/FbLocalBroadcastManager;Landroid/os/Looper;J)V

    .line 170
    .restart local v6    # "handler":Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->incrementRefCount()V

    .line 174
    new-instance v1, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;JLcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;)V

    .line 176
    .local v1, "entry":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 177
    .local v8, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v8, :cond_2

    .line 178
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 179
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v2, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v9, v2, :cond_4

    .line 183
    invoke-virtual {p2, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 185
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    if-nez v7, :cond_3

    .line 186
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 187
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_3
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "action":Ljava/lang/String;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    monitor-exit v10

    goto :goto_0

    .end local v1    # "entry":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    .end local v4    # "looperId":J
    .end local v6    # "handler":Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;
    .end local v8    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v9    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    .line 247
    .local v0, "success":Z
    invoke-direct {p0, p1}, Lcom/facebook/common/android/FbLocalBroadcastManager;->sendScheduledBroadcast(Landroid/content/Intent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 249
    monitor-exit v2

    return v0

    .line 250
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 380
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    .line 381
    .local v0, "syncPendingBroadcasts":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Long;Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;>;"
    invoke-direct {p0, p1, v0}, Lcom/facebook/common/android/FbLocalBroadcastManager;->getEntriesThreadId(Landroid/content/Intent;Lcom/google/common/collect/Multimap;)Ljava/util/Set;

    move-result-object v1

    .line 382
    .local v1, "threadIdsToCall":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, v0}, Lcom/facebook/common/android/FbLocalBroadcastManager;->executePendingBroadcasts(Lcom/google/common/collect/Multimap;)V

    .line 385
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 202
    iget-object v9, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    monitor-enter v9

    .line 203
    :try_start_0
    iget-object v8, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v8, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    iget-object v8, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mReceivers:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 206
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-nez v2, :cond_0

    .line 207
    monitor-exit v9

    .line 233
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 210
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 211
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 212
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 214
    .local v7, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_4

    .line 215
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 216
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    iget-object v8, v8, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v8, p1, :cond_2

    .line 217
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;

    .line 219
    .local v6, "receiverRecord":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    iget-object v8, v6, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->handler:Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    invoke-virtual {v8}, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->decrementRefCount()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    iget-object v8, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mHandlers:Ljava/util/Map;

    iget-object v10, v6, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->handler:Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    iget-wide v10, v10, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->looperId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 215
    .end local v6    # "receiverRecord":Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 226
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 227
    iget-object v8, p0, Lcom/facebook/common/android/FbLocalBroadcastManager;->mActions:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v5    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    .end local v0    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_6
    monitor-exit v9

    goto :goto_0

    .end local v2    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method
