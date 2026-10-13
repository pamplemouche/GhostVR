.class public Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;
.super Ljava/lang/Object;
.source "AddressEntries.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMaxEntries:I

.field private final mPrefKey:Ljava/lang/String;

.field mSerializableAddressEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

.field private final mSortedAddressEntries:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mMaxEntries:I

    .line 38
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    .line 39
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mPrefKey:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;

    invoke-direct {v1, p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries$1;-><init>(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSerializableAddressEntries:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized addEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mMaxEntries:I

    if-lt v0, v1, :cond_0

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 78
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->getAddressEntries()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 88
    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAddressEntries()Ljava/util/TreeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mPrefKey:Ljava/lang/String;

    .line 54
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mPrefKey:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v0, "address_entries"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->isValidAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->addEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create JSONObject from rawJson"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized populateSerializableList()V
    .locals 3
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSerializableAddressEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->getAddressEntries()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 127
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSerializableAddressEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized replace(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSortedAddressEntries:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0, p2}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->addEntry(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save()V
    .locals 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->populateSerializableList()V

    .line 102
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    sget-object v1, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save addressEntries"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSerializableAddressEntries:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 114
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntries;->mSerializableAddressEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    .line 116
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "address_entries"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
