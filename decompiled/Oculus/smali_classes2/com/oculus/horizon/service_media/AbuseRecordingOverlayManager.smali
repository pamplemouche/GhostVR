.class public Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;
.super Ljava/lang/Object;
.source "AbuseRecordingOverlayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFromPkg:Ljava/lang/String;

.field private mOverlayStartTime:J

.field private mRecordingUUID:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mUseSoftwareBackButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v6, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mRecordingUUID:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mFromPkg:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mSource:Ljava/lang/String;

    .line 27
    iput-boolean v5, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mUseSoftwareBackButton:Z

    .line 30
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_0
    const-string v0, "recording_uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mRecordingUUID:Ljava/lang/String;

    .line 35
    const-string v0, "from_pkg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mFromPkg:Ljava/lang/String;

    .line 36
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mSource:Ljava/lang/String;

    .line 37
    const-string v0, "use_software_back_button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "use_software_back_button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mUseSoftwareBackButton:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_1
    :goto_1
    iput-wide v6, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "Cannot parse overlay params from JSONObject input: [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 41
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getStartRenderingRecordingOverlayIntent()Landroid/content/Intent;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.home.START_RENDERING_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v1, "overlays_type"

    const-string v2, "abuse_recording"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "recording_uuid"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mRecordingUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "from_pkg"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mFromPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "source"

    iget-object v2, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-boolean v1, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mUseSoftwareBackButton:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "use_software_back_button"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "needs_inputs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    iget-wide v4, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    sub-long/2addr v2, v4

    .line 116
    const-wide/32 v4, 0x249f0

    sub-long v2, v4, v2

    .line 117
    const-string v1, "recording_remaining_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    return-object v0
.end method


# virtual methods
.method public hideRecordingOverlay(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.home.START_RENDERING_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v1, "overlays_type"

    const-string v2, "empty"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mRecordingUUID:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "Sent intent to the overlay service to start rendering empty overlay"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public showRecordingOverlay(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->mOverlayStartTime:J

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->getStartRenderingRecordingOverlayIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    sget-object v0, Lcom/oculus/horizon/service_media/AbuseRecordingOverlayManager;->TAG:Ljava/lang/String;

    const-string v1, "Sent intent to the overlay service to render the abuse recording overlay."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
