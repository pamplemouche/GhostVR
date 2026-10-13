.class public Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;
.super Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.source "InterceptingAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogAllowedCallback;,
        Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogUploadListener;,
        Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;
    }
.end annotation


# instance fields
.field private final mLogEventInterceptor:Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/AnalyticsUploader;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "buildNumber"    # Ljava/lang/String;
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "uploader"    # Llibraries/marauder/analytics/AnalyticsUploader;
    .param p7, "userId"    # Ljava/lang/String;
    .param p8, "facebookUserId"    # Ljava/lang/String;
    .param p9, "logEventInterceptor"    # Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p8}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/AnalyticsUploader;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p9, p0, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->mLogEventInterceptor:Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;

    .line 40
    return-void
.end method


# virtual methods
.method protected afterUpload(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->afterUpload(Z)V

    .line 71
    if-nez p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llibraries/marauder/analytics/AnalyticsUtil;->getAnalyticsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/logging/legacy/LogSizeController;->cleanUpLogFiles(Ljava/io/File;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected beforeUpload()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->beforeUpload()V

    .line 63
    return-void
.end method

.method protected maybeStoreCurrentBatch()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    .line 55
    iget-object v0, p0, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Llibraries/marauder/analytics/AnalyticsUtil;->getAnalyticsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/logging/legacy/LogSizeController;->isLogStorageNearlyFull(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->queueUpload()V

    .line 58
    :cond_0
    return-void
.end method

.method public reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 1
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->mLogEventInterceptor:Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;->mLogEventInterceptor:Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;

    invoke-interface {v0, p1}, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;->intercept(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 48
    return-void
.end method
