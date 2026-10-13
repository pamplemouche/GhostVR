.class public Lcom/facebook/rti/push/service/FbnsRegistrarRetry;
.super Ljava/lang/Object;
.source "FbnsRegistrarRetry.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mMonotoicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

.field private mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

.field private mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field private savedPendingIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    sget-object v0, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->RETRY:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-interface {p6, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    .line 64
    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mMonotoicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 65
    iput-object p4, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 66
    iput-object p5, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->savedPendingIntents:Ljava/util/Map;

    .line 68
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot acquire Alarm service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetRetry(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    const-string v0, "FbnsRegistrarRetry"

    const-string v1, "Registration reset retry."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    invoke-interface {v0, p1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 118
    return-void
.end method


# virtual methods
.method public cancelAndReset(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    const-string v0, "FbnsRegistrarRetry"

    const-string v1, "Registration alarmManager retry cancelled."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->savedPendingIntents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->resetRetry(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public schedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v3, 0x2

    .line 72
    invoke-static {}, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.rti.fbns.intent.REGISTER_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "appid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSignatureAuthSecureIntent:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->appendAuthBundleToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    .line 83
    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 84
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->savedPendingIntents:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    const-wide/32 v4, 0x1d4c0

    invoke-interface {v0, p1, v4, v5}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 87
    const-string v0, "FbnsRegistrarRetry"

    const-string/jumbo v1, "scheduleRetry %s"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mMonotoicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    add-long v4, v0, v10

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 101
    :goto_1
    const-wide/16 v0, 0x2

    mul-long/2addr v0, v10

    .line 102
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    move-wide v0, v8

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mSharedPreferences:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    goto :goto_0

    .line 94
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegistrarRetry;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method
