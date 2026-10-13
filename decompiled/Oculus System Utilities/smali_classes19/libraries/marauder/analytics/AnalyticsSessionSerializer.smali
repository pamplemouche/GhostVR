.class Llibraries/marauder/analytics/AnalyticsSessionSerializer;
.super Ljava/lang/Object;
.source "AnalyticsSessionSerializer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Llibraries/marauder/analytics/AnalyticsSession;)Llibraries/marauder/analytics/utils/json/JsonMap;
    .locals 6
    .param p0, "value"    # Llibraries/marauder/analytics/AnalyticsSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v2, Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-direct {v2}, Llibraries/marauder/analytics/utils/json/JsonMap;-><init>()V

    .line 14
    .local v2, "session":Llibraries/marauder/analytics/utils/json/JsonMap;
    const-string v3, "seq"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getSequence()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;J)V

    .line 15
    const-string v3, "time"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Llibraries/marauder/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v3, "app_id"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "app_ver"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v3, "build_num"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getBuildNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v3, "device_id"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v3, "session_id"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getSessionId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v3, "uid"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getFacebookUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v3, "cuid"

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getCustomUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Llibraries/marauder/analytics/utils/json/JsonArray;

    invoke-direct {v1}, Llibraries/marauder/analytics/utils/json/JsonArray;-><init>()V

    .line 25
    .local v1, "events":Llibraries/marauder/analytics/utils/json/JsonArray;
    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getCurrentBatch()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 26
    .local v0, "event":Llibraries/marauder/analytics/IAnalyticsEvent;
    invoke-interface {v0}, Llibraries/marauder/analytics/IAnalyticsEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Llibraries/marauder/analytics/utils/json/JsonArray;->addEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    .end local v0    # "event":Llibraries/marauder/analytics/IAnalyticsEvent;
    :cond_0
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Llibraries/marauder/analytics/utils/json/JsonType;)V

    .line 30
    const-string v3, "log_type"

    const-string v4, "client_event"

    invoke-virtual {v2, v3, v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-object v2
.end method
