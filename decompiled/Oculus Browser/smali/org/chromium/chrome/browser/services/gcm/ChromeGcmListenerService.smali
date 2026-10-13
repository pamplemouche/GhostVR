.class public Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;
.super Lzq;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzq;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;LzT0;)V
    .locals 0

    .line 80
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 81
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p0

    invoke-virtual {p0}, LUg0;->b()V

    .line 82
    invoke-static {p1}, Lorg/chromium/components/gcm_driver/GCMDriver;->a(LzT0;)V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 14

    const-string v0, "ChromeGcmListener"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    new-instance v3, LzT0;

    invoke-direct {v3, p0, p1}, LzT0;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object p0, v3, LzT0;->b:Ljava/lang/String;

    const-string p1, "wp:"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eqz p0, :cond_4

    .line 5
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v5, "power"

    .line 7
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 8
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    .line 9
    :goto_0
    invoke-virtual {v3}, LzT0;->a()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz p0, :cond_3

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    .line 10
    :cond_3
    :goto_2
    new-instance p0, LaV;

    const-string v6, "GCM.WebPushReceived.DeviceState"

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, LaV;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0, v5}, LaV;->a(I)V

    .line 12
    :cond_4
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 13
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p0

    .line 14
    iget-boolean p0, p0, LUg0;->f:Z

    const/4 v5, 0x0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    goto/16 :goto_7

    .line 15
    :cond_5
    iget-object p0, v3, LzT0;->b:Ljava/lang/String;

    .line 16
    iget-object v6, v3, LzT0;->a:Ljava/lang/String;

    .line 17
    invoke-static {p0, v6}, LDT0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 19
    invoke-static {p0}, LDT0;->b(Ljava/lang/String;)Z

    move-result v8

    .line 20
    invoke-virtual {v3}, LzT0;->a()I

    move-result v9

    if-ne v9, p1, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_b

    const-string v9, "LazySubscriptions"

    .line 21
    sget-object v10, LzT;->a:Landroid/content/Context;

    const-string v11, "org.chromium.components.gcm_driver.lazy_subscriptions"

    .line 22
    invoke-virtual {v10, v11, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "[]"

    .line 23
    invoke-interface {v10, p0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 24
    :try_start_1
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v11, v3, LzT0;->d:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 26
    iget-object v11, v3, LzT0;->d:Ljava/lang/String;

    .line 27
    invoke-static {v12, v11}, LDT0;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 28
    :cond_8
    new-instance v11, LXU;

    const-string v13, "PushMessaging.QueuedMessagesCount"

    invoke-direct {v11, v13}, LXU;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v11, v13}, LZU;->a(I)V

    .line 30
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ne v11, v4, :cond_9

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping GCM Message due queue size limit. Sender id:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, LzT0;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v13, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {v9, v11, v13}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x1

    :goto_5
    if-ge v13, v4, :cond_a

    .line 35
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x3

    goto :goto_5

    :cond_9
    move-object v11, v12

    .line 36
    :cond_a
    new-instance v4, LwT0;

    invoke-direct {v4, v3, v5}, LwT0;-><init>(LzT0;LsT0;)V

    invoke-virtual {v3, v4}, LzT0;->a(LyT0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, p0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    invoke-static {p0, v2}, LDT0;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    const-string v10, "Error when parsing the persisted message queue for subscriber:"

    const-string v11, ":"

    .line 40
    invoke-static {v10, p0, v11}, LZi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 41
    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {v9, p0, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_b
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    .line 44
    new-instance p0, LdV;

    const-string v4, "PushMessaging.TimeToCheckIfSubscriptionLazy"

    invoke-direct {p0, v4}, LdV;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v9, v10}, LdV;->a(J)V

    move p0, v8

    :goto_7
    if-eqz p0, :cond_c

    goto/16 :goto_a

    .line 46
    :cond_c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge p0, v4, :cond_d

    .line 47
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 48
    invoke-static {p0, v3}, Lorg/chromium/chrome/browser/services/gcm/ChromeGcmListenerService;->a(Landroid/content/Context;LzT0;)V

    goto/16 :goto_a

    .line 49
    :cond_d
    invoke-virtual {v3}, LzT0;->a()I

    move-result p0

    if-eq p0, p1, :cond_e

    goto :goto_9

    .line 50
    :cond_e
    iget-object p0, v3, LzT0;->b:Ljava/lang/String;

    .line 51
    iget-object v4, v3, LzT0;->a:Ljava/lang/String;

    .line 52
    invoke-static {p0, v4}, LET0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {}, LqU;->a()LqU;

    move-result-object v4

    .line 54
    :try_start_2
    sget-object v6, LzT;->a:Landroid/content/Context;

    const-string v7, "org.chromium.components.gcm_driver.subscription_flags"

    .line 55
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 56
    invoke-interface {v6, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_8

    :cond_f
    const/4 p0, 0x0

    .line 57
    :goto_8
    invoke-virtual {v4}, LqU;->close()V

    if-nez p0, :cond_10

    goto :goto_9

    .line 58
    :cond_10
    :try_start_3
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-class v4, Lorg/chromium/chrome/browser/services/gcm/GCMBackgroundService;

    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v4, LuT0;

    invoke-direct {v4, v3, v5}, LuT0;-><init>(LzT0;LsT0;)V

    invoke-virtual {v3, v4}, LzT0;->a(LyT0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 61
    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x1

    goto :goto_9

    :catch_1
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Could not start background service"

    .line 63
    invoke-static {v0, p0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    if-nez v1, :cond_11

    .line 64
    new-instance p0, LIS0;

    invoke-direct {p0}, LIS0;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, LIS0;->b:J

    .line 66
    invoke-virtual {p0}, LIS0;->a()LJS0;

    move-result-object p0

    .line 67
    new-instance p1, LHS0;

    invoke-direct {p1, v2}, LHS0;-><init>(I)V

    .line 68
    iput-object p0, p1, LHS0;->g:LMS0;

    .line 69
    new-instance p0, LuT0;

    invoke-direct {p0, v3, v5}, LuT0;-><init>(LzT0;LsT0;)V

    invoke-virtual {v3, p0}, LzT0;->a(LyT0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 70
    iput-object p0, p1, LHS0;->b:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1}, LHS0;->a()LOS0;

    move-result-object p0

    .line 72
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object p1

    .line 73
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 74
    check-cast p1, LjS0;

    invoke-virtual {p1, v0, p0}, LjS0;->a(Landroid/content/Context;LOS0;)Z

    :cond_11
    :goto_a
    return-void

    :catchall_0
    move-exception p0

    .line 75
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 76
    :try_start_5
    invoke-virtual {v4}, LqU;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    .line 77
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, p0, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 78
    :goto_b
    throw p1

    :catch_2
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "Received an invalid GCM Message"

    .line 79
    invoke-static {v0, p0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 1
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
