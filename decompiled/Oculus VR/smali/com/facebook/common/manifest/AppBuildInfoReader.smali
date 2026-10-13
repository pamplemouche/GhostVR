.class public Lcom/facebook/common/manifest/AppBuildInfoReader;
.super Ljava/lang/Object;
.source "AppBuildInfoReader.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final BUILD_TIME_FORMAT:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentPackageName:Ljava/lang/String;

.field private final mManifestReader:Lcom/facebook/common/manifest/ManifestReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "^[0-9]+L$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/manifest/AppBuildInfoReader;->BUILD_TIME_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/manifest/ManifestReader;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mContext:Landroid/content/Context;

    .line 29
    if-nez p2, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mManifestReader:Lcom/facebook/common/manifest/ManifestReader;

    .line 33
    iget-object v0, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mCurrentPackageName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static convertUTCTimestampToPacificTimeString(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 78
    const-string v1, "PST8PDT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueForKeyFromManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mManifestReader:Lcom/facebook/common/manifest/ManifestReader;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/manifest/ManifestReader;->getMetaDataValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static parseTimeStampString(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static timeStampMatchesCurrentFormat(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/common/manifest/AppBuildInfoReader;->BUILD_TIME_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppBuildInfo()Lcom/facebook/common/manifest/AppBuildInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/common/manifest/AppBuildInfoReader;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/common/manifest/AppBuildInfoReader;->getAppBuildInfo(Ljava/lang/String;)Lcom/facebook/common/manifest/AppBuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppBuildInfo(Ljava/lang/String;)Lcom/facebook/common/manifest/AppBuildInfo;
    .locals 7

    .prologue
    .line 48
    const-string v0, "com.facebook.versioncontrol.revision"

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/facebook/common/manifest/AppBuildInfoReader;->getValueForKeyFromManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v0, "com.facebook.versioncontrol.branch"

    .line 52
    invoke-direct {p0, v0, p1}, Lcom/facebook/common/manifest/AppBuildInfoReader;->getValueForKeyFromManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v0, "com.facebook.build_time"

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/facebook/common/manifest/AppBuildInfoReader;->getValueForKeyFromManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-wide/16 v4, 0x0

    .line 61
    const-string v6, ""

    .line 65
    invoke-static {v0}, Lcom/facebook/common/manifest/AppBuildInfoReader;->timeStampMatchesCurrentFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {v0}, Lcom/facebook/common/manifest/AppBuildInfoReader;->parseTimeStampString(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    invoke-static {v4, v5}, Lcom/facebook/common/manifest/AppBuildInfoReader;->convertUTCTimestampToPacificTimeString(J)Ljava/lang/String;

    move-result-object v6

    .line 70
    :cond_0
    new-instance v1, Lcom/facebook/common/manifest/AppBuildInfo;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/common/manifest/AppBuildInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v1
.end method
