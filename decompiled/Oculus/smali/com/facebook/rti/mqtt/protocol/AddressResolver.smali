.class public Lcom/facebook/rti/mqtt/protocol/AddressResolver;
.super Ljava/lang/Object;
.source "AddressResolver.java"


# instance fields
.field private final mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mDNSResolver:Lcom/facebook/rti/mqtt/protocol/DNSResolver;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/protocol/DNSResolver;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mDNSResolver:Lcom/facebook/rti/mqtt/protocol/DNSResolver;

    .line 45
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ADDRESSES:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 47
    invoke-interface {p3, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    const-string v3, "/settings_mqtt_address"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;-><init>(ILcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->resolveHostNameAndWait(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addOrUpdateAddressEntryInternal(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->getAddressEntries()Ljava/util/TreeSet;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v1, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->findEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v1

    .line 140
    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 142
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getAddressList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 141
    invoke-virtual {v1, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->addEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_1
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPriority()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v3, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 147
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getAddressList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getFailCount()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 144
    invoke-virtual {v2, v1, v3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->replace(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resolveAsync(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "AddressResolver"

    const-string/jumbo v1, "resolveAsync scheduled"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver$1;-><init>(Lcom/facebook/rti/mqtt/protocol/AddressResolver;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private resolveHostNameAndWait(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mDNSResolver:Lcom/facebook/rti/mqtt/protocol/DNSResolver;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/DNSResolver;->dnsLookup(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 175
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->UnknownHost:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->SecurityException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0
.end method


# virtual methods
.method declared-synchronized addOrUpdateAddressEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 1
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->addOrUpdateAddressEntryInternal(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestAddress(Ljava/lang/String;J)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->getBestAddressAsync(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->ExecutionException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->ExecutionException:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0

    .line 83
    :catch_2
    move-exception v0

    .line 84
    new-instance v0, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;

    sget-object v1, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->TimedOut:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;-><init>(Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;)V

    throw v0
.end method

.method public declared-synchronized getBestAddressAsync(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->resolveAsync(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 55
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->getAddressEntries()Ljava/util/TreeSet;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 68
    :goto_0
    monitor-exit p0

    return-object v0

    .line 59
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 60
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getFailCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;

    invoke-direct {v1, v0}, Lcom/facebook/rti/mqtt/common/executors/ImmediateFuture;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedAddressDescription()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v0, "Cache{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->getAddressEntries()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 123
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    const-string/jumbo v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7
    .param p1    # Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->findEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 97
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getAddressList()Ljava/util/List;

    move-result-object v4

    .line 99
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPriority()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    .line 100
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getFailCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->replace(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAddressSuccess(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 7
    .param p1    # Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->findEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    new-instance v2, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 113
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getAddressList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPriority()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->replace(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->mAddressEntries:Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
