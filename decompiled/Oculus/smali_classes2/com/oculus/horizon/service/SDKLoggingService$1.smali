.class Lcom/oculus/horizon/service/SDKLoggingService$1;
.super Lcom/oculus/logging/sdk_logging/SDKLoggingInterface$Stub;
.source "SDKLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/SDKLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service/SDKLoggingService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service/SDKLoggingService;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-direct {p0}, Lcom/oculus/logging/sdk_logging/SDKLoggingInterface$Stub;-><init>()V

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 66
    invoke-direct {p0}, Lcom/oculus/horizon/service/SDKLoggingService$1;->isStandaloneDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 67
    const-string v0, "com.oculus.telemetry"

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-virtual {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 72
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 73
    const-string v5, "com.oculus.home"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 78
    :cond_2
    aget-object v0, v3, v2

    goto :goto_0
.end method

.method private final isStandaloneDevice()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/SDKLoggingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oculus/horizon/service/SDKLoggingService$1;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 85
    const/4 v0, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$000(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 90
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v3, "num_seconds"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 92
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 94
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$100(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/libraryapi/OVRLibrary;->getAppById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    iget-object v3, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v3}, Lcom/oculus/horizon/service/SDKLoggingService;->access$100(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v3

    new-instance v8, Lcom/oculus/library/model/App$Builder;

    invoke-direct {v8, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/oculus/library/model/App$Builder;->withIncrementedActivityMs(J)Lcom/oculus/library/model/App$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v1

    .line 96
    invoke-virtual {v3, v1}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 103
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$300(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p1}, Lcom/oculus/horizon/service/ServiceLogger;->reportSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$400(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/platform/PresenceManager;->logWasCalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 101
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/oculus/horizon/service/SDKLoggingService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to update activity ms %s, not in library."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    :try_start_3
    invoke-static {}, Lcom/oculus/horizon/service/SDKLoggingService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to parse json content (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v1, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 108
    :catch_1
    move-exception v1

    .line 111
    :goto_2
    invoke-static {}, Lcom/oculus/horizon/service/SDKLoggingService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Unable to find AppId for package (%s)"

    invoke-static {v1, v3, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 108
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/oculus/horizon/service/SDKLoggingService$1;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v2}, Lcom/oculus/horizon/service/SDKLoggingService;->access$000(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v2}, Lcom/oculus/horizon/service/SDKLoggingService;->access$300(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/oculus/horizon/service/ServiceLogger;->reportSDKEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v2}, Lcom/oculus/horizon/service/SDKLoggingService;->access$400(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/oculus/horizon/platform/PresenceManager;->logWasCalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 124
    :catch_0
    move-exception v2

    .line 125
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/service/SDKLoggingService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to find AppId for package (%s)"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public reportLowLatencyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/oculus/horizon/service/SDKLoggingService$1;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 135
    const/4 v1, 0x0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v0}, Lcom/oculus/horizon/service/SDKLoggingService;->access$000(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$300(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/oculus/horizon/service/ServiceLogger;->reportLowLatencySDKEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/oculus/horizon/service/SDKLoggingService$1;->this$0:Lcom/oculus/horizon/service/SDKLoggingService;

    invoke-static {v1}, Lcom/oculus/horizon/service/SDKLoggingService;->access$400(Lcom/oculus/horizon/service/SDKLoggingService;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/platform/PresenceManager;->logWasCalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/service/SDKLoggingService;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to find AppId for package (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    goto :goto_1
.end method
