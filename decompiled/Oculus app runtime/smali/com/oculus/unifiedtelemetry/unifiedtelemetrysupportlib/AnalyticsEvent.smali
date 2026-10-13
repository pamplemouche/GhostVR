.class public Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;
    }
.end annotation


# static fields
.field private static final API_21_BOOLEAN_PREFIX:Ljava/lang/String; = "utl_bool_"

.field private static final EVENT_TAG:Ljava/lang/String; = "utl_eventTag"

.field static final LOGGING_PACKAGE:Ljava/lang/String; = "utl_logging_package"

.field private static final OVERRIDE_EVENT_TIME:Ljava/lang/String; = "utl_override_event_time"

.field private static final TAG:Ljava/lang/String; = "AnalyticsEvent"

.field private static final UPTIME_MS:Ljava/lang/String; = "utl_uptime_ms"


# instance fields
.field private final mExtras:Landroid/os/PersistableBundle;

.field private final mInternalUseParams:Landroid/os/PersistableBundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mModuleName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mName:Ljava/lang/String;

    .line 55
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    .line 56
    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    invoke-virtual {p3, p2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 63
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 64
    invoke-virtual {p4, p2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "utl_uptime_ms"

    invoke-virtual {p0, p2, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method private setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;"
        }
    .end annotation

    .line 89
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 92
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    :cond_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 94
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 95
    :cond_2
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 96
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 97
    :cond_3
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utl_bool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :cond_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 105
    :cond_5
    sget-object p1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not set key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getInternalUseParams()Landroid/os/PersistableBundle;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEventInSamplingConfigTag()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object p1

    return-object p1
.end method

.method public setHasDownloadedSamplingConfigTag()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object p1

    return-object p1
.end method

.method public setLocalProfilingTag()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setNtTag()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->NT_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setReactNativeTag()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "utl_override_event_time"

    invoke-direct {p0, v0, p2, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setUslTag()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method

.method public setXplatTag()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utl_eventTag"

    invoke-direct {p0, v0, v2, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    return-void
.end method
