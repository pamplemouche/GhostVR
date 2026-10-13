.class Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;
.super Ljava/lang/Object;
.source "FunnelLoggerManager.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/EventSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/funnel/FunnelLoggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OculusFunnelEventSender"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEventFactory:Lcom/oculus/logging/EventFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/logging/EventFactory;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->mEventFactory:Lcom/oculus/logging/EventFactory;

    .line 89
    return-void
.end method

.method private static actionObjectFromAction(Lcom/facebook/funnellogger/core/Funnel$Action;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel$Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "relative_time"

    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel$Action;->getRelativeTimeStamp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v1, "tag"

    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    return-object v0
.end method

.method private static actionsArrayFromFunnel(Lcom/facebook/funnellogger/core/Funnel;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    .line 165
    invoke-static {v0}, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->actionObjectFromAction(Lcom/facebook/funnellogger/core/Funnel$Action;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 167
    :cond_0
    return-object v1
.end method

.method private addFunnelAsJson(Lcom/oculus/logging/OculusLoggingEvent;Lcom/facebook/funnellogger/core/Funnel;)V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    const-string v0, "actions"

    invoke-static {p2}, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->actionsArrayFromFunnel(Lcom/facebook/funnellogger/core/Funnel;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/oculus/logging/OculusLoggingEvent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "tags"

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/oculus/logging/OculusLoggingEvent;

    .line 160
    :cond_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->TAG:Ljava/lang/String;

    const-string v2, "Exception while appending actions"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private addFunnelAsParams(Lcom/oculus/logging/OculusLoggingEvent;Lcom/facebook/funnellogger/core/Funnel;)V
    .locals 7

    .prologue
    .line 116
    invoke-interface {p1}, Lcom/oculus/logging/OculusLoggingEvent;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v2

    .line 117
    if-nez v2, :cond_1

    .line 148
    :cond_0
    return-void

    .line 123
    :cond_1
    const-string v0, "actions"

    .line 124
    invoke-virtual {v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireArrayThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v3

    .line 125
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    .line 126
    invoke-virtual {v3}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->acquireMapThenAdd()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    .line 127
    const-string v5, "name"

    iget-object v6, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "relative_time"

    iget v6, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 129
    const-string v5, "tag"

    iget-object v6, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v5, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    if-eqz v5, :cond_2

    .line 131
    iget-object v0, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-virtual {v0}, Lcom/facebook/funnellogger/core/PayloadBundle;->getDataForInternalUse()Ljava/util/Map;

    move-result-object v0

    .line 132
    const-string v5, "payload"

    .line 133
    invoke-virtual {v1, v5}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireMapThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v5

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    :goto_1
    invoke-virtual {v5, v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "tags"

    invoke-virtual {v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->acquireArrayThenAdd(Ljava/lang/String;)Lcom/facebook/crudolib/params/ParamsCollectionArray;

    move-result-object v1

    .line 144
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-virtual {v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionArray;->add(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendInternal(Lcom/facebook/funnellogger/core/Funnel;Lcom/oculus/logging/OculusLoggingEvent;)V
    .locals 4

    .prologue
    .line 99
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;

    .line 100
    const-string v0, "funnel_id"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getId()S

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/OculusLoggingEvent;

    .line 101
    const-string v0, "instance_id"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getInstanceId()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/OculusLoggingEvent;

    .line 102
    const-string v0, "sampling_rate"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getSamplingRate()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/OculusLoggingEvent;

    .line 103
    const-string v0, "start_time"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getCreatedTimeStamp()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/OculusLoggingEvent;

    .line 106
    invoke-interface {p2}, Lcom/oculus/logging/OculusLoggingEvent;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p2, p1}, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->addFunnelAsParams(Lcom/oculus/logging/OculusLoggingEvent;Lcom/facebook/funnellogger/core/Funnel;)V

    .line 112
    :goto_0
    invoke-interface {p2}, Lcom/oculus/logging/OculusLoggingEvent;->logAndRelease()V

    .line 113
    return-void

    .line 109
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->addFunnelAsJson(Lcom/oculus/logging/OculusLoggingEvent;Lcom/facebook/funnellogger/core/Funnel;)V

    goto :goto_0
.end method


# virtual methods
.method public send(Lcom/facebook/funnellogger/core/Funnel;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->mEventFactory:Lcom/oculus/logging/EventFactory;

    const-string v1, "funnel_analytics"

    invoke-interface {v0, v1}, Lcom/oculus/logging/EventFactory;->newEvent(Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/oculus/logging/funnel/FunnelLoggerManager$OculusFunnelEventSender;->sendInternal(Lcom/facebook/funnellogger/core/Funnel;Lcom/oculus/logging/OculusLoggingEvent;)V

    .line 96
    return-void
.end method
