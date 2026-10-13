.class public abstract Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;
.super Ljava/lang/Object;
.source "AsyncBroadcastReceiverObserver.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation


# static fields
.field static final ACTIVE_RECEIVERS:Ljava/lang/String; = "active_receivers"

.field static final ACTIVE_RECEIVERS_COUNT:Ljava/lang/String; = "active_receivers_count"

.field static final BROADCAST_UPTIME_MS:Ljava/lang/String; = "broadcast_uptime_ms"

.field static final CURRENT_UPTIME_MS:Ljava/lang/String; = "current_uptime_ms"

.field static final PENDING_RESULT:Ljava/lang/String; = "pending_result"

.field static final RECEIVER:Ljava/lang/String; = "receiver"

.field static final RECEIVER_CLASS:Ljava/lang/String; = "receiver_class"

.field private static final sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blame(Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    .line 79
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "broadcast_uptime_ms"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    const-string v3, "receiver_class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v3, "receiver"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v3, "pending_result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, "je":Lorg/json/JSONException;
    :try_start_1
    const-string v3, "error"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "impossible":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blameActiveReceivers()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    sget-object v4, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/4 v4, 0x0

    .line 69
    .local v3, "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 56
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "current_uptime_ms"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v4, "active_receivers_count"

    sget-object v5, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 61
    .local v0, "activeReceivers":Lorg/json/JSONArray;
    sget-object v4, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 62
    .local v1, "blame":Lorg/json/JSONObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    .end local v0    # "activeReceivers":Lorg/json/JSONArray;
    .end local v1    # "blame":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "je":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 64
    .end local v2    # "je":Lorg/json/JSONException;
    .restart local v0    # "activeReceivers":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string v4, "active_receivers"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static clear()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    return-void
.end method

.method public static finish(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1
    .param p0, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public static goAsync(Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "result"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->sActiveReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->blame(Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver$PendingResult;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
