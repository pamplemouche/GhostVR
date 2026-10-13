.class public Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;
.super Landroid/app/IntentService;
.source "VideoUploaderService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVRUtils:Lcom/oculus/util/vr/VRUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVideoUploaderServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;->$ul_$xXXcom_oculus_horizon_abuse$x5Fprevention_VideoUploaderServiceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mVideoUploaderServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/util/inject/UtilModule;->$ul_$xXXcom_oculus_util_vr_VRUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/vr/VRUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static assertParametersValid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string v1, "no abuse report id provided; make sure to specify in your intent"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    :cond_2
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string v1, "no recording uuid provided; make sure to specify in your intent"

    invoke-direct {v0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    const-string v0, "^\\d{1,20}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string/jumbo v1, "report ID \'%s\' is not a valid id"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_4
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 99
    new-instance v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string/jumbo v2, "recording UUID \'%s\' does not match parsed \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 100
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string/jumbo v2, "recording UUID \'%s\' is not a valid uuid"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 102
    :cond_5
    return-void
.end method

.method private onHandleInternalIntent(Landroid/content/Intent;Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)V
    .locals 10
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xfd

    const/4 v8, 0x1

    .line 109
    const-string/jumbo v0, "report_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string/jumbo v0, "recording_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->TAG:Ljava/lang/String;

    const-string v1, "%s=%s, %s=%s"

    const-string/jumbo v2, "report_id"

    const-string/jumbo v4, "recording_uuid"

    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    sget v0, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_in_progress_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget v1, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_in_progress_message:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 119
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$drawable;->status_icon:I

    .line 120
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v9, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->startForeground(ILandroid/app/Notification;)V

    .line 126
    const-string v0, "notification"

    .line 127
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mVRUtils:Lcom/oculus/util/vr/VRUtils;

    invoke-virtual {v1}, Lcom/oculus/util/vr/VRUtils;->isStandaloneDevice()Z

    move-result v4

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mVideoUploaderServiceManager:Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;

    invoke-virtual {v1, p0, v3, v5, p2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderServiceManager;->uploadVideoToAbuseReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)V
    :try_end_0
    .catch Lcom/oculus/horizon/abuse_prevention/VideoUploaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    sget v1, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_succeeded_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    sget v2, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_succeeded_message:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 177
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 178
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v5, Lcom/oculus/horizon/R$drawable;->status_icon:I

    .line 179
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 182
    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 187
    :cond_0
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v3, v9, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 190
    invoke-virtual {p2}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportVideoUploadSuccess()V

    .line 191
    return-void

    .line 132
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v1, v5

    .line 139
    const/4 v5, 0x0

    invoke-static {p0, v1, p1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 141
    sget v5, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_failed_title:I

    invoke-virtual {p0, v5}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v7, Lcom/oculus/horizon/R$drawable;->status_icon:I

    .line 145
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 146
    invoke-virtual {v6, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 148
    if-eqz v4, :cond_1

    .line 153
    invoke-virtual {v1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget v4, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_failed_message_no_retry:I

    .line 155
    invoke-virtual {p0, v4}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 163
    :goto_0
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v3, v9, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 168
    throw v2

    .line 157
    :cond_1
    sget v4, Lcom/oculus/horizon/R$string;->abuse_prevention_upload_failed_message:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 161
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 32
    invoke-static {p0, p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;)V

    .line 50
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, "report_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "recording_uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 59
    invoke-virtual {v2, v1, v0}, Lcom/oculus/horizon/logging/OculusLogger;->newAbusePreventionLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportVideoUploadStart()V

    .line 63
    :try_start_0
    invoke-static {v0, v1}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->assertParametersValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 67
    const-string/jumbo v4, "report_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v0, "recording_uuid"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    invoke-direct {p0, v3, v2}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->onHandleInternalIntent(Landroid/content/Intent;Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)V
    :try_end_0
    .catch Lcom/oculus/horizon/abuse_prevention/VideoUploaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderService;->TAG:Ljava/lang/String;

    const-string v3, "Video uploading failed"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportVideoUploadFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method
