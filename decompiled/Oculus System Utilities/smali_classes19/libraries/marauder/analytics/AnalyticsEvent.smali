.class public Llibraries/marauder/analytics/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"

# interfaces
.implements Llibraries/marauder/analytics/IAnalyticsEvent;


# instance fields
.field protected final mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

.field protected mModuleName:Ljava/lang/String;

.field protected final mName:Ljava/lang/String;

.field protected mTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-direct {v0}, Llibraries/marauder/analytics/utils/json/JsonMap;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mTime:J

    .line 21
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Llibraries/marauder/analytics/AnalyticsModule;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "module"    # Llibraries/marauder/analytics/AnalyticsModule;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 26
    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p2}, Llibraries/marauder/analytics/AnalyticsModule;->getModuleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 58
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-virtual {v0, p1, p2, p3}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;D)V

    .line 59
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 76
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;J)V

    .line 77
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 64
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-virtual {v0, p1, p2, p3}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;J)V

    .line 65
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-virtual {v0, p1, p2}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-virtual {v0, p1, p2}, Llibraries/marauder/analytics/utils/json/JsonMap;->addEntry(Ljava/lang/String;Z)V

    .line 71
    return-object p0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Llibraries/marauder/analytics/utils/json/JsonMap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mTime:J

    return-wide v0
.end method

.method public log()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Llibraries/marauder/analytics/Analytics;->getLogger()Llibraries/marauder/analytics/AnalyticsLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Llibraries/marauder/analytics/AnalyticsLogger;->reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 43
    return-void
.end method

.method public setTime(J)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mTime:J

    .line 109
    return-object p0
.end method

.method public bridge synthetic setTime(J)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEvent;->setTime(J)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEvent;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "pk"

    invoke-virtual {p0, v0, p1}, Llibraries/marauder/analytics/AnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Llibraries/marauder/analytics/AnalyticsEvent;->setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"name\":\""

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"module\":\""

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"extras\":"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mExtras:Llibraries/marauder/analytics/utils/json/JsonMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"time\":"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Llibraries/marauder/analytics/AnalyticsEvent;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
