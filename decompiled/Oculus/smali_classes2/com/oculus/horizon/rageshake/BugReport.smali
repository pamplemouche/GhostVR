.class public Lcom/oculus/horizon/rageshake/BugReport;
.super Ljava/lang/Object;
.source "BugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/rageshake/BugReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appVersion:Ljava/lang/String;

.field public final buildNumber:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final deviceID:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final gearVrPtc:Ljava/lang/String;

.field public final logcatUri:Landroid/net/Uri;

.field public final networkSubtype:Ljava/lang/String;

.field public final networkType:Ljava/lang/String;

.field public final reportDirectoryUri:Landroid/net/Uri;

.field public final screenshotUri:Landroid/net/Uri;

.field public final stackDumpUri:Landroid/net/Uri;

.field public final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/oculus/horizon/rageshake/BugReport$1;

    invoke-direct {v0}, Lcom/oculus/horizon/rageshake/BugReport$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/rageshake/BugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->email:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->username:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->deviceID:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->appVersion:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->buildNumber:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->description:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkType:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkSubtype:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->gearVrPtc:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->logcatUri:Landroid/net/Uri;

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->stackDumpUri:Landroid/net/Uri;

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->screenshotUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->reportDirectoryUri:Landroid/net/Uri;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oculus/horizon/rageshake/BugReport$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oculus/horizon/rageshake/BugReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/rageshake/BugReportBuilder;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->email:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->username:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->deviceID:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->appVersion:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getBuildNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->buildNumber:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->description:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getNetworkSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkSubtype:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getGearVrPtc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->gearVrPtc:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getLogcatUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->logcatUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getStackDumpUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->stackDumpUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getScreenshotUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->screenshotUri:Landroid/net/Uri;

    .line 77
    invoke-virtual {p1}, Lcom/oculus/horizon/rageshake/BugReportBuilder;->getReportDirectoryUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->reportDirectoryUri:Landroid/net/Uri;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->deviceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->buildNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->networkSubtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->gearVrPtc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->logcatUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->stackDumpUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->screenshotUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/rageshake/BugReport;->reportDirectoryUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
