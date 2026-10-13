.class public Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;
.super Ljava/lang/Object;
.source "EventMigrationHelperImpl.java"

# interfaces
.implements Lcom/oculus/logging/utils/Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/utils/EventMigrationHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventImpl"
.end annotation


# instance fields
.field private final mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLowLatency:Z

.field private final mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;


# direct methods
.method private constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Lcom/oculus/logging/utils/EventMigrationHelperImpl$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object p1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p5, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mLowLatency:Z

    .line 78
    invoke-static {p1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$300(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-direct {v0, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 84
    :goto_0
    if-eqz p4, :cond_0

    .line 85
    invoke-direct {p0, p4}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->parseJson(Ljava/lang/String;)V

    .line 87
    :cond_0
    iput-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    .line 100
    :goto_1
    return-void

    .line 82
    :cond_1
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-direct {v0, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$300(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-direct {v0, p3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 91
    if-eqz p4, :cond_3

    .line 92
    invoke-direct {p0, p4}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->parseJson(Ljava/lang/String;)V

    .line 98
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$400(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/logging/EventFactory;

    move-result-object v0

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/oculus/logging/EventFactory;->newEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    goto :goto_1

    .line 95
    :cond_4
    iput-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_2
.end method

.method private constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/logging/utils/EventMigrationHelperImpl$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;-><init>(Lcom/oculus/logging/utils/EventMigrationHelperImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private parseJson(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 104
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 106
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to parse json string content"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_1
    return-void

    .line 111
    :cond_2
    :try_start_1
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 112
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    goto :goto_0

    .line 113
    :cond_3
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 114
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/utils/Event;

    goto :goto_0

    .line 115
    :cond_4
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 116
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/Event;

    goto :goto_0

    .line 117
    :cond_5
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 118
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;D)Lcom/oculus/logging/utils/Event;

    goto :goto_0

    .line 119
    :cond_6
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 120
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;D)Lcom/oculus/logging/utils/Event;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;D)Lcom/oculus/logging/OculusLoggingEvent;

    .line 187
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;I)Lcom/oculus/logging/utils/Event;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/OculusLoggingEvent;

    .line 165
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/Event;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/OculusLoggingEvent;

    .line 176
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;

    .line 154
    :cond_1
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2}, Lcom/oculus/logging/OculusLoggingEvent;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;

    .line 198
    :cond_1
    return-object p0
.end method

.method public appendStorageInformation()Lcom/oculus/logging/utils/Event;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-static {v0}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$600(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/logging/utils/StorageLoggingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/logging/utils/StorageLoggingUtils;->getInternalFreeSpace()Ljava/lang/Long;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const-string v2, "free_space_internal"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-static {v0}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$600(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/logging/utils/StorageLoggingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/logging/utils/StorageLoggingUtils;->getSDFreeSpace()Ljava/lang/Long;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const-string v2, "free_space_sd"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-static {v0}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$600(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/logging/utils/StorageLoggingUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-virtual {v0, v1}, Lcom/oculus/logging/utils/StorageLoggingUtils;->appendStorageInformation(Lcom/oculus/logging/OculusLoggingEvent;)Lcom/oculus/logging/OculusLoggingEvent;

    .line 143
    :cond_2
    return-object p0
.end method

.method public logAndRelease()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->this$0:Lcom/oculus/logging/utils/EventMigrationHelperImpl;

    invoke-static {v0}, Lcom/oculus/logging/utils/EventMigrationHelperImpl;->access$300(Lcom/oculus/logging/utils/EventMigrationHelperImpl;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    iget-boolean v2, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mLowLatency:Z

    invoke-virtual {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0}, Lcom/oculus/logging/OculusLoggingEvent;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0}, Lcom/oculus/logging/OculusLoggingEvent;->logAndRelease()V

    .line 291
    :cond_1
    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setTime(J)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0, p1, p2}, Lcom/oculus/logging/OculusLoggingEvent;->setTime(J)Lcom/oculus/logging/OculusLoggingEvent;

    .line 209
    :cond_1
    return-void
.end method

.method public setXplatTagForInternalUse()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mAnalyticsEvent:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setXplatTag()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/oculus/logging/utils/EventMigrationHelperImpl$EventImpl;->mOculusLoggingEvent:Lcom/oculus/logging/OculusLoggingEvent;

    invoke-interface {v0}, Lcom/oculus/logging/OculusLoggingEvent;->setXplatTagForInternalUse()V

    .line 249
    :cond_1
    return-void
.end method
