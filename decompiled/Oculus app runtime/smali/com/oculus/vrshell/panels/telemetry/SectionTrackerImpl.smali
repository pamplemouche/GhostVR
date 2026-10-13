.class public Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;
.super Ljava/lang/Object;
.source "SectionTrackerImpl.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/telemetry/SectionTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;,
        Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mForeground:Z

.field private mSection:Ljava/lang/String;

.field private mSectionEnterTime:J

.field private mSectionListener:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;

.field private mSubSection:Ljava/lang/String;

.field private final mTimeService:Lcom/oculus/vrshell/timer/TimeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/timer/TimeService;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 140
    iput-wide v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionEnterTime:J

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    .line 35
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addSectionData(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding section data when there is no current section for eventName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    array-length p1, p2

    add-int/lit8 p1, p1, 0x6

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 54
    array-length v0, p2

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->section_name:Lcom/oculus/vrshell/panels/telemetry/ExtraKey;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 55
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    aput-object v1, p1, v0

    .line 56
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->sub_section_name:Lcom/oculus/vrshell/panels/telemetry/ExtraKey;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 57
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    aput-object v1, p1, v0

    .line 58
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->active_duration_ms:Lcom/oculus/vrshell/panels/telemetry/ExtraKey;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/telemetry/ExtraKey;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 59
    array-length p2, p2

    add-int/lit8 p2, p2, 0x5

    iget-wide v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionEnterTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    .line 61
    invoke-interface {v0}, Lcom/oculus/vrshell/timer/TimeService;->getCurrentMs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionEnterTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 60
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    return-object p1
.end method

.method public onAppBackground()V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    .line 133
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->subSectionExit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "App background called when already in background state!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAppForeground()V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "App foreground called when already in foreground state!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSectionListener(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionListener:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;

    return-void
.end method

.method public subSectionEnter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;

    const-string v1, "Entering a subSection while still in a subSection!"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;-><init>(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionListener:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;

    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;->onSectionEntryCallback()V

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    invoke-interface {p1}, Lcom/oculus/vrshell/timer/TimeService;->getCurrentMs()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionEnterTime:J

    return-void
.end method

.method public subSectionExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionListener:Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SectionListener;->onSectionExitCallback()V

    :cond_0
    const-wide/16 p1, -0x1

    .line 102
    iput-wide p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSectionEnterTime:J

    .line 106
    iget-boolean p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mForeground:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSection:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;->mSubSection:Ljava/lang/String;

    :cond_1
    return-void

    .line 95
    :cond_2
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;

    const-string v1, "SubSection exit mismatch error!"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;-><init>(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;

    const-string v1, "Exiting a subSection while not in a subSection!"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl$SubSectionException;-><init>(Lcom/oculus/vrshell/panels/telemetry/SectionTrackerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
