.class public Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;
.super Ljava/lang/Object;
.source "PartyCallsManagerModule.java"


# static fields
.field public static final CALLER_ID_COLUMN:Ljava/lang/String; = "caller_id"

.field public static final CALLER_NAME_COLUMN:Ljava/lang/String; = "caller_name"

.field public static final CALLER_PHOTO_COLUMN:Ljava/lang/String; = "caller_photo"

.field public static final CALL_ID_COLUMN:Ljava/lang/String; = "call_id"

.field public static CONTENT_URI:Ljava/lang/String; = null

.field public static final CURRENT_PARTY_ID_COLUMN:Ljava/lang/String; = "current_party_id"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field public static final PARTY_CREATE_URI:Ljava/lang/String; = "content://com.oculus.horizon.friendlist/party_create"

.field public static final PARTY_JOIN_URI:Ljava/lang/String; = "content://com.oculus.horizon.friendlist/party_join"

.field public static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

.field private static final mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field public RVRCtxTag:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->MODULE_NAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 32
    const-string v0, "content://com.oculus.horizon.livestreaming/incoming_calls"

    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->CONTENT_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    .line 45
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 47
    :try_start_0
    sput-object p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getIncomingPartyCalls"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markIncomingPartyCallHandled"

    const-string v3, "si"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markIncomingPartyCallSeen"

    const-string v3, "si"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Landroid/util/Pair;

    const-string v2, "joinParty"

    const-string v3, "si"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Landroid/util/Pair;

    const-string v2, "createParty"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-object v0
.end method

.method private internalNotifyIncomingCallsChanged()V
    .locals 4

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->RVRCtxTag:J

    const-string v2, "onIncomingPartyCallsUpdated"

    const-string v3, "\"\""

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method public static notifyIncomingCallsChanged()V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 201
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;

    invoke-direct {v0}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->internalNotifyIncomingCallsChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public createParty(I)V
    .locals 12
    .param p1, "callbackID"    # I

    .prologue
    .line 74
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v6, "createPartyResult":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 76
    .local v8, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    const-string v1, "Querying Horizon content provider with uri: content://com.oculus.horizon.friendlist/party_create to create a party"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oculus.horizon.friendlist/party_create"

    .line 79
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const-string v0, "current_party_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "currentPartyIdIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "partyID":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created party with party id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v10, "partyData":Lorg/json/JSONObject;
    const-string v0, "party_id"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v7    # "currentPartyIdIndex":I
    .end local v10    # "partyData":Lorg/json/JSONObject;
    .end local v11    # "partyID":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    :goto_1
    return-void

    .line 97
    .restart local v7    # "currentPartyIdIndex":I
    .restart local v11    # "partyID":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 98
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to create a party but could not parse JSON in response."

    invoke-static {v0, v9, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 99
    const-string v0, "Could not create party successfully."

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    .end local v7    # "currentPartyIdIndex":I
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "partyID":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 109
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    const-string v1, "An error occured when attempting to create a party."

    invoke-static {v0, v9, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 110
    const-string v0, "Could not create party successfully."

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz v8, :cond_1

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 104
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to create a party but the party ID is missing."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "Could not create party successfully."

    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getIncomingPartyCalls(I)V
    .locals 17
    .param p1, "callbackId"    # I

    .prologue
    .line 120
    const/4 v15, 0x0

    .line 122
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->CONTENT_URI:Ljava/lang/String;

    .line 123
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 122
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 129
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 130
    .local v13, "calls":Lorg/json/JSONArray;
    if-eqz v15, :cond_1

    .line 131
    const-string v2, "call_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 132
    .local v9, "callIdIndex":I
    const-string v2, "caller_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 133
    .local v10, "callerIdIndex":I
    const-string v2, "caller_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 134
    .local v11, "callerNameIndex":I
    const-string v2, "caller_photo"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 135
    .local v12, "callerPhotoIndex":I
    const-string v2, "current_party_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 137
    .local v14, "currentPartyIdIndex":I
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v8, "call":Lorg/json/JSONObject;
    const-string v2, "request_id"

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "caller_id"

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "caller_name"

    invoke-interface {v15, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "caller_photo"

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-interface {v15, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v2, "current_party_id"

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_0
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v8    # "call":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 156
    .end local v9    # "callIdIndex":I
    .end local v10    # "callerIdIndex":I
    .end local v11    # "callerNameIndex":I
    .end local v12    # "callerPhotoIndex":I
    .end local v14    # "currentPartyIdIndex":I
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[{\"calls\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-eqz v15, :cond_2

    .line 163
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v13    # "calls":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    return-void

    .line 158
    :catch_1
    move-exception v16

    .line 159
    .local v16, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "[{\"calls\":[]}]"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    if-eqz v15, :cond_2

    .line 163
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 162
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    .line 163
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public invokeCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callbackID"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->RVRCtxTag:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public joinParty(Ljava/lang/String;I)V
    .locals 6
    .param p1, "partyID"    # Ljava/lang/String;
    .param p2, "callbackID"    # I

    .prologue
    const/4 v5, 0x0

    .line 58
    sget-object v2, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contacting Horizon content provider with uri: content://com.oculus.horizon.friendlist/party_join to join party with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "party_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.oculus.horizon.friendlist/party_join"

    .line 64
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 63
    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "updated":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public markIncomingPartyCallHandled(Ljava/lang/String;I)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callbackId"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->CONTENT_URI:Ljava/lang/String;

    .line 170
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 169
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "deleted":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V

    .line 175
    return-void
.end method

.method public markIncomingPartyCallSeen(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callbackId"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->CONTENT_URI:Ljava/lang/String;

    .line 179
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 178
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "updated":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->invokeCallback(ILjava/lang/String;)V

    .line 185
    return-void
.end method

.method public shutdownModule()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 216
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstance:Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-object v0, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/PartyCallsManagerModule;->mInstanceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
