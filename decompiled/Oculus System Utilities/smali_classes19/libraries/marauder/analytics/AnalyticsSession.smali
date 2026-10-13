.class Llibraries/marauder/analytics/AnalyticsSession;
.super Ljava/lang/Object;
.source "AnalyticsSession.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mBuildNumber:Ljava/lang/String;

.field private mCurrentBatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibraries/marauder/analytics/IAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomUserId:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mFacebookUserId:Ljava/lang/String;

.field private mSequence:I

.field private mSessionId:Ljava/util/UUID;

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSequence:I

    .line 36
    return-void
.end method


# virtual methods
.method public addEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 1
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 48
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBatch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llibraries/marauder/analytics/IAnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    return-object v0
.end method

.method public getCustomUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCustomUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mFacebookUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSequence:I

    return v0
.end method

.method public declared-synchronized getSessionId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSessionId:Ljava/util/UUID;

    .line 59
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSessionId:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mTime:J

    return-wide v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mAppId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mAppVersion:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildNumber"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mBuildNumber:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCustomUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "customUserId"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCustomUserId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mDeviceId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setFacebookUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mFacebookUserId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mTime:J

    .line 72
    return-void
.end method

.method public startNewBatch()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSequence:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Llibraries/marauder/analytics/AnalyticsSession;->getSessionId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Sequence: "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCurrentBatch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " events)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Device ID: "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FB: "

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mFacebookUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Custom ID: "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mCustomUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Build Number: "

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsSession;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
