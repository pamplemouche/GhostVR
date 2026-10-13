.class public Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;
.super Lcom/facebook/rti/mqtt/manager/NotificationItem;
.source "NotificationDeliveryStoreSharedPreferences.java"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationItemSharedPreferences"
.end annotation


# instance fields
.field protected timestampLastRetried:J

.field protected final timestampReceived:J


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/NotificationItem;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 168
    iput-wide p3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    .line 169
    iput-wide p5, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    .line 170
    return-void
.end method

.method protected static deserialize(Ljava/lang/Object;)Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 189
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "key_intent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 192
    const-string v1, "key_notifid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    const-string v1, "key_timestamp_received"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 194
    const-string v1, "key_timestamp_last_retried"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 196
    new-instance v1, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;-><init>(Landroid/content/Intent;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected serialize()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 174
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    const-string v1, "key_intent"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "key_notifid"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->notifId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v1, "key_timestamp_received"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "key_timestamp_last_retried"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method
