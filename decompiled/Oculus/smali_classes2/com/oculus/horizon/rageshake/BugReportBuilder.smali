.class public Lcom/oculus/horizon/rageshake/BugReportBuilder;
.super Ljava/lang/Object;
.source "BugReportBuilder.java"


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mBuildNumber:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDeviceID:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mGearVrPtc:Ljava/lang/String;

.field private mLogcatUri:Landroid/net/Uri;

.field private mNetworkSubtype:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private mReportDirectoryUri:Landroid/net/Uri;

.field private mScreenshotUri:Landroid/net/Uri;

.field private mStackDumpUri:Landroid/net/Uri;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/rageshake/BugReport;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/oculus/horizon/rageshake/BugReport;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/rageshake/BugReport;-><init>(Lcom/oculus/horizon/rageshake/BugReportBuilder;)V

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGearVrPtc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mGearVrPtc:Ljava/lang/String;

    return-object v0
.end method

.method public getLogcatUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mLogcatUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNetworkSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mNetworkSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getReportDirectoryUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mReportDirectoryUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getScreenshotUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mScreenshotUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStackDumpUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mStackDumpUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 1

    .prologue
    .line 78
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setBuildNumber(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 79
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setAppVersion(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 80
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setDeviceID(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 81
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mAppVersion:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setBuildNumber(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mBuildNumber:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mDescription:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setDeviceID(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mDeviceID:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mEmail:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setFrom(Lcom/oculus/horizon/rageshake/BugReport;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->email:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setEmail(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 41
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->username:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setUsername(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 42
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->deviceID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setDeviceID(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 43
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setAppVersion(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 44
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->buildNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setBuildNumber(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 45
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setDescription(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 46
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkType(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 47
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->networkSubtype:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkSubtype(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 48
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->gearVrPtc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setGearVrPtc(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 49
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->logcatUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setLogcatUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 50
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->stackDumpUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setStackDumpUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 51
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->screenshotUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setScreenshotUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 52
    iget-object v0, p1, Lcom/oculus/horizon/rageshake/BugReport;->reportDirectoryUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setReportDirectoryUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 53
    return-object p0
.end method

.method public setGearVrPtc(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mGearVrPtc:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setLogcatUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mLogcatUri:Landroid/net/Uri;

    .line 185
    return-object p0
.end method

.method public setNetworkInfo(Landroid/app/Activity;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 2

    .prologue
    .line 62
    const-string v0, "connectivity"

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkType(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 68
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkSubtype(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 73
    :goto_0
    return-object p0

    .line 70
    :cond_0
    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkType(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    .line 71
    const-string v0, "NONE"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->setNetworkSubtype(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;

    goto :goto_0
.end method

.method public setNetworkSubtype(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mNetworkSubtype:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mNetworkType:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setReportDirectoryUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mReportDirectoryUri:Landroid/net/Uri;

    .line 224
    return-object p0
.end method

.method public setScreenshotUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mScreenshotUri:Landroid/net/Uri;

    .line 207
    return-object p0
.end method

.method public setStackDumpUri(Landroid/net/Uri;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mStackDumpUri:Landroid/net/Uri;

    .line 196
    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/oculus/horizon/rageshake/BugReportBuilder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/BugReportBuilder;->mUsername:Ljava/lang/String;

    .line 246
    return-object p0
.end method
