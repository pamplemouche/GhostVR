.class public Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;
.super Lcom/facebook/secure/receiver/SecureBroadcastReceiver;
.source "DynamicSecureBroadcastReceiver.java"


# instance fields
.field private final mActionMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/secure/receiver/ActionReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRemoved:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCachedIntentFilter:Landroid/content/IntentFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 54
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 55
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 56
    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    invoke-static {p2}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 67
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 68
    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    invoke-static {p2}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 71
    invoke-static {p3}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    invoke-static {p4}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 82
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 83
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 84
    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-static {p2}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 87
    invoke-static {p3}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-static {p4}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 90
    invoke-static {p5}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    invoke-static {p6}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 105
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 106
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {p3}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {p5}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p6}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-static {p7}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p8}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V
    .locals 3

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 121
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 122
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 123
    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    invoke-static {p2}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 126
    invoke-static {p3}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 127
    invoke-static {p4}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 129
    invoke-static {p5}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    invoke-static {p6}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 132
    invoke-static {p7}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    invoke-static {p8}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 135
    invoke-static {p9}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-static {p10}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/secure/receiver/ActionReceiver;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    .line 37
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    iget-object v1, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "action \'%s\' found more than once in action map"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    .line 40
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include an entry for at least one action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method protected final declared-synchronized findReceiverForIntent(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/receiver/ActionReceiver;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .line 183
    if-eqz p2, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/receiver/ActionReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mCachedIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mCachedIntentFilter:Landroid/content/IntentFilter;

    .line 143
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 144
    iget-object v3, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mCachedIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mCachedIntentFilter:Landroid/content/IntentFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isActionRemoved(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionRemoved:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;->mActionRemoved:Ljava/util/Collection;

    .line 171
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
