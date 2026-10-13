.class public abstract Lsb0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z

.field public static b:Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

.field public static c:LLa0;

.field public static d:Liw;

.field public static e:Lwb0;

.field public static f:Lpb0;

.field public static g:Lmb0;


# direct methods
.method public static a()V
    .locals 67

    .line 1
    sget-boolean v0, Lsb0;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, v2}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 4
    sput-boolean v0, Lsb0;->a:Z

    goto :goto_0

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    :goto_0
    sget-boolean v0, Lsb0;->a:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v4, 0x3

    .line 8
    invoke-static {v0, v4}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    .line 9
    new-instance v0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;-><init>()V

    sput-object v0, Lsb0;->b:Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;

    .line 10
    sget-object v5, Lqb0;->a:Luy0;

    .line 11
    iget-object v6, v0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-wide v5, v0, Lorg/chromium/chrome/browser/preferences/PrefChangeRegistrar;->b:J

    .line 13
    invoke-static {v5, v6, v0, v2}, LJ/N;->Mrf8X6ah(JLjava/lang/Object;I)V

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v5

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "abandon_restore_below_fold"

    const-string v7, "InterestFeedContentSuggestions"

    const/4 v8, 0x0

    .line 17
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 18
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "card_menu_tooltip_eligible"

    .line 19
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 20
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "consume_synthetic_tokens_bool"

    .line 21
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 22
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "consume_synthetic_tokens_while_restoring_bool"

    .line 23
    invoke-static {v7, v0, v1}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 24
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x3f480

    const-string v9, "default_action_ttl_seconds"

    .line 25
    invoke-static {v7, v9, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v10, v0

    .line 26
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "feed_action_server_endpoint"

    .line 27
    invoke-static {v7, v0}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v9, "https://www.google.com/httpservice/retry/ClankActionUploadService/ClankActionUpload"

    .line 29
    :cond_3
    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    const-string v9, "feed_action_server_max_actions_per_request"

    .line 30
    invoke-static {v7, v9, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v10, v0

    .line 31
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e8

    const-string v9, "feed_action_server_max_size_per_request"

    .line 32
    invoke-static {v7, v9, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "feed_action_server_method"

    .line 34
    invoke-static {v7, v9}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v10, "POST"

    .line 36
    :cond_4
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "feed_server_endpoint"

    .line 37
    invoke-static {v7, v9}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v10, "https://www.google.com/httpservice/noretry/DiscoverClankService/FeedQuery"

    .line 39
    :cond_5
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "feed_server_method"

    .line 40
    invoke-static {v7, v9}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 41
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v10, "GET"

    .line 42
    :cond_6
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "feed_server_response_length_prefixed"

    .line 43
    invoke-static {v7, v9, v1}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 44
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "feed_ui_enabled"

    .line 45
    invoke-static {v7, v9, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 46
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xa

    const-string v10, "initial_non_cached_page_size"

    .line 47
    invoke-static {v7, v10, v9}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    int-to-long v11, v11

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "limit_page_updates_in_head"

    .line 49
    invoke-static {v7, v10, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 50
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "logging_immediate_content_threshold_ms"

    .line 51
    invoke-static {v7, v10, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v11, v0

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "manage_interests_enabled"

    .line 53
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 54
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "maximum_gc_attempts"

    .line 55
    invoke-static {v7, v0, v9}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    int-to-long v9, v9

    .line 56
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "non_cached_min_page_size"

    const/4 v9, 0x5

    .line 57
    invoke-static {v7, v0, v9}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    .line 58
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x19

    const-string v10, "non_cached_page_size"

    .line 59
    invoke-static {v7, v10, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v11, v0

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x36ee80

    const-string v10, "session_lifetime_ms"

    .line 61
    invoke-static {v7, v10, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v11, v0

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "snippets_enabled"

    .line 63
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 64
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f4

    const-string v11, "spinner_delay"

    .line 65
    invoke-static {v7, v11, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v12, v0

    .line 66
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spinner_minimum_show_time"

    .line 67
    invoke-static {v7, v0, v8}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    int-to-long v11, v11

    .line 68
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x64

    const-string v11, "storage_miss_threshold"

    .line 69
    invoke-static {v7, v11, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v12, v0

    .line 70
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "trigger_immediate_pagination"

    .line 71
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v11, "trigger_immediate_pagination_bool"

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "undoable_actions_enabled"

    .line 73
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 74
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_timeout_scheduler"

    .line 75
    invoke-static {v7, v0, v1}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 76
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_secondary_page_request"

    .line 77
    invoke-static {v7, v0, v8}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 78
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v11, 0x3fe51eb851eb851fL    # 0.66

    const-string v0, "view_log_threshold"

    .line 79
    invoke-static {v7, v0, v11, v12}, LJ/N;->Mj2Twnnu(Ljava/lang/String;Ljava/lang/String;D)D

    move-result-wide v11

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v7, Lpw;

    invoke-direct {v7, v6, v3}, Lpw;-><init>(Ljava/util/HashMap;Low;)V

    .line 82
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v12, 0x2

    const/4 v14, 0x4

    .line 83
    sget-object v3, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 84
    iget-object v3, v3, Lorg/chromium/base/BuildInfo;->h:Ljava/lang/String;

    const-string v6, "64"

    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v11, "mips"

    .line 86
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v6, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v4, "arm"

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v6, :cond_b

    const/4 v1, 0x2

    goto :goto_1

    :cond_9
    const-string v1, "x86"

    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v6, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_a
    const/4 v1, 0x5

    :cond_b
    :goto_1
    move v13, v1

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    .line 89
    :goto_2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 90
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v15, 0x5

    const/16 v19, 0x0

    const-string v16, "Builder"

    const-string v18, "Cannot find package name."

    move-object/from16 v20, v0

    .line 91
    invoke-static/range {v15 .. v20}, Lhy;->a(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_3
    move-object v15, v0

    .line 92
    new-instance v0, Lnw;

    move-object/from16 v46, v0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lnw;-><init>(IIILjava/lang/String;Lmw;)V

    .line 93
    new-instance v1, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;

    invoke-direct {v1, v5}, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 94
    sput-object v1, Lsb0;->e:Lwb0;

    .line 95
    new-instance v15, LYa0;

    new-instance v2, LTa0;

    invoke-direct {v2, v5}, LTa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-direct {v15, v2}, LYa0;-><init>(LGw;)V

    .line 96
    new-instance v2, Llb0;

    new-instance v3, Lgb0;

    invoke-direct {v3, v5}, Lgb0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    invoke-direct {v2, v3}, Llb0;-><init>(LPw;)V

    .line 97
    new-instance v3, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;

    invoke-direct {v3, v5}, Lorg/chromium/chrome/browser/feed/FeedNetworkBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    .line 98
    new-instance v4, Lmb0;

    invoke-direct {v4, v5}, Lmb0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    sput-object v4, Lsb0;->g:Lmb0;

    .line 99
    sget-object v4, LFW;->l:LFW;

    .line 100
    invoke-static {v4}, Lorg/chromium/base/task/PostTask;->a(LFW;)LuW;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    new-instance v6, Lrb0;

    invoke-direct {v6, v4}, Lrb0;-><init>(LuW;)V

    .line 103
    sget-object v4, Lsb0;->g:Lmb0;

    move-object/from16 v27, v4

    sget-object v39, Lqw;->a:Lqw;

    .line 104
    sget-object v9, LzT;->a:Landroid/content/Context;

    .line 105
    new-instance v25, Lzb0;

    move-object/from16 v45, v25

    invoke-direct/range {v25 .. v25}, Lzb0;-><init>()V

    .line 106
    new-instance v14, Lxx;

    move-object/from16 v36, v14

    invoke-direct {v14}, Lxx;-><init>()V

    .line 107
    new-instance v13, LYw;

    move-object/from16 v34, v13

    invoke-direct {v13}, LYw;-><init>()V

    const-string v11, "use_direct_storage"

    .line 108
    invoke-virtual {v7, v11, v8}, Lpw;->a(Ljava/lang/String;Z)Z

    .line 109
    new-instance v8, LBA;

    move-object/from16 v28, v8

    invoke-direct {v8, v3, v13, v14}, LBA;-><init>(Ltw;LYw;Lxx;)V

    .line 110
    new-instance v3, LEA;

    invoke-direct {v3, v1, v13, v14}, LEA;-><init>(Lww;LYw;Lxx;)V

    .line 111
    sget-object v11, Ljw;->a:Lvw;

    .line 112
    new-instance v12, Ljy;

    move-object/from16 v43, v12

    invoke-direct {v12, v11}, Ljy;-><init>(Lvw;)V

    .line 113
    new-instance v11, Lly;

    move-object/from16 v38, v11

    invoke-direct {v11}, Lly;-><init>()V

    move-object/from16 v47, v5

    .line 114
    new-instance v5, Lry;

    move-object/from16 v33, v5

    invoke-direct {v5}, Lry;-><init>()V

    move-object/from16 v48, v1

    .line 115
    new-instance v1, LFx;

    move-object/from16 v35, v1

    invoke-direct {v1, v4, v6, v14, v11}, LFx;-><init>(Lrw;Ljava/util/concurrent/Executor;Lxx;Lky;)V

    .line 116
    new-instance v6, LJz;

    move-object/from16 v32, v6

    move-object/from16 v26, v11

    move-object v11, v6

    move-object/from16 v30, v12

    move-object v12, v7

    move-object/from16 v41, v13

    move-object v13, v5

    move-object/from16 v44, v14

    move-object/from16 v14, v30

    move-object/from16 v16, v2

    move-object/from16 v17, v41

    move-object/from16 v18, v1

    move-object/from16 v19, v26

    move-object/from16 v20, v4

    move-object/from16 v21, v44

    invoke-direct/range {v11 .. v21}, LJz;-><init>(Lpw;Lry;Ljy;LHw;LQw;LYw;LFx;Lky;Lrw;Lxx;)V

    .line 117
    new-instance v2, Luy;

    move-object/from16 v37, v2

    move-object/from16 v15, v41

    invoke-direct {v2, v15}, Luy;-><init>(LYw;)V

    .line 118
    invoke-virtual {v2, v6}, LGx;->a(Ljava/lang/Object;)V

    .line 119
    new-instance v14, LCy;

    move-object/from16 v29, v14

    new-instance v11, LFA;

    invoke-direct {v11}, LFA;-><init>()V

    .line 120
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v14, v11, v5}, LCy;-><init>(Ljava/util/List;Lry;)V

    .line 121
    new-instance v20, Lty;

    move-object/from16 v11, v20

    move-object v12, v6

    move-object/from16 v13, v26

    move-object/from16 v31, v14

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lty;-><init>(Lpx;Lky;Ldx;LFx;Lpw;)V

    .line 122
    new-instance v15, LSy;

    move-object v11, v15

    move-object v12, v7

    move-object v13, v8

    move-object/from16 v40, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v41

    move-object/from16 v21, v9

    move-object/from16 v22, v0

    move-object/from16 v23, v44

    move-object/from16 v24, v4

    invoke-direct/range {v11 .. v25}, LSy;-><init>(Lpw;Ltw;Ldx;Ljy;Lww;LFx;Lry;LYw;LTw;Landroid/content/Context;Lnw;Lxx;Lrw;LRw;)V

    .line 123
    new-instance v0, LKy;

    move-object v11, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v41

    move-object/from16 v18, v6

    move-object/from16 v19, v26

    invoke-direct/range {v11 .. v19}, LKy;-><init>(Lpw;Ltw;Ldx;Ljy;LFx;LYw;Lpx;Lky;)V

    .line 124
    new-instance v8, LWy;

    move-object v11, v8

    move-object v12, v1

    move-object v13, v6

    move-object v14, v5

    move-object/from16 v15, v41

    move-object/from16 v16, v31

    move-object/from16 v17, v40

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v26

    move-object/from16 v22, v2

    invoke-direct/range {v11 .. v24}, LWy;-><init>(LFx;Lpx;Lry;LYw;Ldx;Lgx;Lfx;Lww;Lpw;Lky;LGx;Lxx;Lrw;)V

    .line 125
    iget-object v0, v8, LWy;->i:Lpw;

    sget-wide v3, LWy;->n:J

    .line 126
    invoke-virtual {v0, v10, v3, v4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide v15

    .line 127
    new-instance v0, Ltz;

    move-object/from16 v51, v0

    iget-object v10, v8, LWy;->b:Lpx;

    iget-object v11, v8, LWy;->a:LFx;

    iget-object v12, v8, LWy;->c:Lry;

    iget-object v13, v8, LWy;->d:LYw;

    iget-object v14, v8, LWy;->i:Lpw;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Ltz;-><init>(Lpx;LFx;Lry;LYw;Lpw;)V

    .line 128
    new-instance v57, Lrz;

    move-object/from16 v52, v57

    iget-object v12, v8, LWy;->b:Lpx;

    iget-object v13, v8, LWy;->a:LFx;

    iget-object v3, v8, LWy;->c:Lry;

    iget-object v4, v8, LWy;->d:LYw;

    iget-object v5, v8, LWy;->j:Lky;

    move-object/from16 v11, v57

    move-object v14, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Lrz;-><init>(Lpx;LFx;Ltz;JLry;LYw;Lky;)V

    .line 129
    new-instance v58, Ljz;

    move-object/from16 v54, v58

    invoke-direct/range {v58 .. v58}, Ljz;-><init>()V

    .line 130
    new-instance v55, LEz;

    move-object/from16 v53, v55

    iget-object v0, v8, LWy;->b:Lpx;

    iget-object v3, v8, LWy;->a:LFx;

    iget-object v4, v8, LWy;->h:Lww;

    iget-object v5, v8, LWy;->d:LYw;

    iget-object v9, v8, LWy;->c:Lry;

    iget-object v10, v8, LWy;->j:Lky;

    iget-object v11, v8, LWy;->l:Lxx;

    iget-object v12, v8, LWy;->m:Lrw;

    move-object/from16 v56, v0

    move-object/from16 v59, v3

    move-object/from16 v60, v4

    move-object/from16 v61, v5

    move-object/from16 v62, v9

    move-object/from16 v63, v10

    move-object/from16 v64, v11

    move-object/from16 v65, v12

    invoke-direct/range {v55 .. v65}, LEz;-><init>(Lpx;Lrz;Ljz;LFx;Lww;LYw;Lry;Lky;Lxx;Lrw;)V

    .line 131
    new-instance v0, Liz;

    move-object/from16 v31, v0

    move-object/from16 v49, v0

    iget-object v3, v8, LWy;->a:LFx;

    move-object/from16 v50, v3

    iget-object v3, v8, LWy;->b:Lpx;

    move-object/from16 v55, v3

    iget-object v3, v8, LWy;->c:Lry;

    move-object/from16 v56, v3

    iget-object v3, v8, LWy;->d:LYw;

    move-object/from16 v57, v3

    iget-object v3, v8, LWy;->e:Ldx;

    move-object/from16 v58, v3

    iget-object v3, v8, LWy;->f:Lgx;

    move-object/from16 v59, v3

    iget-object v3, v8, LWy;->g:Lfx;

    move-object/from16 v60, v3

    iget-object v3, v8, LWy;->h:Lww;

    move-object/from16 v61, v3

    iget-object v3, v8, LWy;->i:Lpw;

    move-object/from16 v62, v3

    iget-object v3, v8, LWy;->j:Lky;

    move-object/from16 v63, v3

    iget-object v3, v8, LWy;->k:LGx;

    move-object/from16 v64, v3

    iget-object v3, v8, LWy;->l:Lxx;

    move-object/from16 v65, v3

    iget-object v3, v8, LWy;->m:Lrw;

    move-object/from16 v66, v3

    invoke-direct/range {v49 .. v66}, Liz;-><init>(LFx;Ltz;Lrz;LEz;Ljz;Lpx;Lry;LYw;Ldx;Lgx;Lfx;Lww;Lpw;Lky;LGx;Lxx;Lrw;)V

    .line 132
    new-instance v3, LUy;

    move-object/from16 v30, v3

    move-object/from16 v4, v40

    invoke-direct {v3, v4, v0}, LUy;-><init>(Lgx;Llx;)V

    .line 133
    new-instance v16, Lsy;

    move-object/from16 v40, v16

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v41

    move-object/from16 v20, v1

    move-object/from16 v21, v44

    move-object/from16 v22, v26

    invoke-direct/range {v16 .. v22}, Lsy;-><init>(Llx;Lpx;LYw;LFx;Lxx;Lky;)V

    .line 134
    new-instance v3, LBy;

    move-object/from16 v42, v3

    move-object/from16 v5, v41

    move-object/from16 v4, v44

    invoke-direct {v3, v0, v4, v5}, LBy;-><init>(Llx;Lxx;LYw;)V

    .line 135
    new-instance v16, Ljx;

    move-object/from16 v44, v16

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Ljx;-><init>(LFx;Llx;Lax;LYw;LGx;)V

    .line 136
    new-instance v0, Lkx;

    move-object/from16 v26, v0

    move-object/from16 v41, v7

    .line 137
    invoke-direct/range {v26 .. v46}, Lkx;-><init>(Lrw;Ltw;Ldx;Lhw;Llx;Lpx;Lry;LYw;LFx;Lxx;Lgw;Lky;Lqw;LSw;Lpw;LZw;Ljy;Ljx;LRw;Lnw;)V

    .line 138
    sput-object v0, Lsb0;->d:Liw;

    .line 139
    iget-object v1, v0, Lkx;->c:Lhw;

    move-object/from16 v2, v48

    .line 140
    iput-object v1, v2, Lorg/chromium/chrome/browser/feed/FeedSchedulerBridge;->b:Lhw;

    .line 141
    new-instance v1, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;

    .line 142
    iget-object v0, v0, Lkx;->i:LZw;

    move-object/from16 v2, v47

    .line 143
    invoke-direct {v1, v2, v0}, Lorg/chromium/chrome/browser/feed/FeedOfflineBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;Lfw;)V

    sput-object v1, Lsb0;->f:Lpb0;

    .line 144
    new-instance v0, LLa0;

    sget-object v1, Lsb0;->d:Liw;

    check-cast v1, Lkx;

    .line 145
    iget-object v1, v1, Lkx;->h:Lgw;

    .line 146
    new-instance v3, Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

    invoke-direct {v3, v2}, Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    sget-object v2, Lsb0;->e:Lwb0;

    invoke-direct {v0, v1, v3, v2}, LLa0;-><init>(Lgw;Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;Lwb0;)V

    sput-object v0, Lsb0;->c:LLa0;

    return-void

    .line 147
    :cond_d
    throw v3
.end method
