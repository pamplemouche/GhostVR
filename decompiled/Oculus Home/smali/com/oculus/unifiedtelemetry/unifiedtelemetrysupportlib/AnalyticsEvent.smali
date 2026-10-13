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

.field private static final TAG:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/PersistableBundle;
    .param p4, "internalUseParams"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mName:Ljava/lang/String;

    .line 55
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    .line 56
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    .line 57
    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_0

    .line 62
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    .line 63
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p4, v0}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_1

    .line 68
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string v1, "utl_uptime_ms"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 69
    return-void
.end method

.method private setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .param p2, "key"    # Ljava/lang/String;
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

    .prologue
    .line 89
    .local p3, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2, p3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object p0

    .line 91
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 92
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 93
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 94
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 95
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 96
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 97
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utl_bool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 105
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not set key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getInternalUseParams()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEventInSamplingConfigTag()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->EVENT_IN_SAMPLING_CONFIG:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 160
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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

    .prologue
    .line 113
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setHasDownloadedSamplingConfigTag()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->HAS_DOWNLOADED_SAMPLING_POLICY:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 155
    return-void
.end method

.method public setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
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

    .prologue
    .line 120
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mInternalUseParams:Landroid/os/PersistableBundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public setLocalProfilingTag()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOCAL_PROFILING_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 150
    return-void
.end method

.method public setNtTag()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->NT_EVENT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 139
    return-void
.end method

.method public setReactNativeTag()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_REACT_NATIVE:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 134
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_override_event_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 125
    return-void
.end method

.method public setUslTag()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->USL_ENABLED:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 130
    return-void
.end method

.method public setXplatTag()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "utl_eventTag"

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->LOGGED_THROUGH_XPLAT:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent$TagType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setContentValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 144
    return-void
.end method
