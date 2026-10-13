.class public Lcom/facebook/acra/reporter/BaseCrashReporter;
.super Ljava/lang/Object;
.source "BaseCrashReporter.java"

# interfaces
.implements Lcom/facebook/acra/reporter/ReportsCrashes;


# instance fields
.field protected checkSSLcerts:Z

.field protected mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public checkSSLCertsOnCrashReport(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    return-void
.end method

.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->checkSSLcerts:Z

    return v0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public formPostFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/facebook/acra/reporter/BaseCrashReporter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 4

    const-string v0, "-t"

    const-string v1, "200"

    const-string v2, "-v"

    const-string v3, "time"

    .line 47
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public socketTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method
