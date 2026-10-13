.class public LjP0;
.super LY10;
.source "PG"


# instance fields
.field public a:LxP0;

.field public b:LdP0;


# direct methods
.method public constructor <init>(LxP0;LdP0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LY10;-><init>()V

    .line 2
    iput-object p1, p0, LjP0;->a:LxP0;

    .line 3
    iput-object p2, p0, LjP0;->b:LdP0;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IZZLfP0;Ljava/lang/String;)LjP0;
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v0, p6

    .line 1
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, v15, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_0

    return-object v3

    .line 5
    :cond_0
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 7
    :try_start_1
    invoke-virtual {v5, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v5, v15, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v14, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    const-string v5, "string"

    const-string v8, "name"

    .line 9
    invoke-static {v6, v8, v5, v15}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v9, "short_name"

    .line 10
    invoke-static {v6, v9, v5, v15}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v8, :cond_1

    .line 11
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    const-string v8, "org.chromium.webapk.shell_apk.name"

    .line 12
    invoke-static {v1, v8}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "org.chromium.webapk.shell_apk.shortName"

    .line 14
    invoke-static {v1, v5}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v9, v5

    const-string v5, "org.chromium.webapk.shell_apk.scope"

    .line 15
    invoke-static {v1, v5}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "org.chromium.webapk.shell_apk.displayMode"

    .line 16
    invoke-static {v1, v10}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "browser"

    const/16 v16, 0x2

    const/16 v17, 0x1

    if-nez v10, :cond_4

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    const-string v12, "fullscreen"

    .line 17
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v10, 0x4

    goto :goto_3

    :cond_5
    const-string v12, "standalone"

    .line 18
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v10, 0x3

    goto :goto_3

    :cond_6
    const-string v12, "minimal-ui"

    .line 19
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v10, 0x2

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    const-string v12, "org.chromium.webapk.shell_apk.orientation"

    .line 21
    invoke-static {v1, v12}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_9

    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    const-string v13, "any"

    .line 22
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x5

    goto :goto_4

    :cond_a
    const-string v13, "natural"

    .line 23
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v12, 0x8

    goto :goto_4

    :cond_b
    const-string v13, "landscape"

    .line 24
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v12, 0x6

    goto :goto_4

    :cond_c
    const-string v13, "landscape-primary"

    .line 25
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v12, 0x3

    goto :goto_4

    :cond_d
    const-string v13, "landscape-secondary"

    .line 26
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v12, 0x4

    goto :goto_4

    :cond_e
    const-string v13, "portrait"

    .line 27
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v12, 0x7

    goto :goto_4

    :cond_f
    const-string v13, "portrait-primary"

    .line 28
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v12, 0x1

    goto :goto_4

    :cond_10
    const-string v13, "portrait-secondary"

    .line 29
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x2

    :goto_4
    const-wide v2, 0x80000000L

    const-string v13, "org.chromium.webapk.shell_apk.themeColor"

    .line 30
    invoke-static {v1, v13, v2, v3}, LLf1;->a(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v20

    const-string v13, "org.chromium.webapk.shell_apk.backgroundColor"

    .line 31
    invoke-static {v1, v13, v2, v3}, LLf1;->a(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide v22

    const-string v2, "org.chromium.webapk.shell_apk.defaultBackgroundColorId"

    .line 32
    invoke-static {v1, v2, v7}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    .line 33
    invoke-static {v4}, LPf1;->a(Landroid/content/Context;)I

    move-result v2

    goto :goto_5

    .line 34
    :cond_11
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_5
    move/from16 v24, v2

    const-string v2, "org.chromium.webapk.shell_apk.shellApkVersion"

    .line 35
    invoke-static {v1, v2, v7}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v25

    const-string v2, "org.chromium.webapk.shell_apk.webManifestUrl"

    .line 36
    invoke-static {v1, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v2, "org.chromium.webapk.shell_apk.startUrl"

    .line 37
    invoke-static {v1, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 38
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v2, "org.chromium.webapk.shell_apk.iconUrlsAndIconMurmur2Hashes"

    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_12
    const-string v3, "[ ]+"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_13

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "WebApkInfo"

    const-string v4, "The icon URLs and icon murmur2 hashes don\'t come in pairs."

    .line 43
    invoke-static {v3, v4, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    .line 44
    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_14

    .line 45
    aget-object v4, v2, v3

    add-int/lit8 v28, v3, 0x1

    aget-object v7, v2, v28

    invoke-virtual {v13, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    const/4 v7, 0x0

    goto :goto_6

    :cond_14
    :goto_7
    const-string v2, "org.chromium.webapk.shell_apk.distributor"

    .line 46
    invoke-static {v1, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 48
    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v28, 0x0

    goto :goto_8

    :cond_15
    const-string v3, "device_policy"

    .line 49
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v28, 0x1

    goto :goto_8

    :cond_16
    const/16 v28, 0x2

    goto :goto_8

    :cond_17
    const-string v2, "org.chromium.webapk"

    .line 50
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v16, 0x0

    :cond_18
    move/from16 v28, v16

    :goto_8
    const-string v2, "org.chromium.webapk.shell_apk.iconId"

    const/4 v3, 0x0

    .line 51
    invoke-static {v1, v2, v3}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "org.chromium.webapk.shell_apk.maskableIconId"

    .line 52
    invoke-static {v1, v4, v3}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_19

    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->a()Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v16, 0x1

    goto :goto_9

    :cond_19
    const/16 v16, 0x0

    :goto_9
    const-string v7, "org.chromium.webapk.shell_apk.badgeIconId"

    .line 54
    invoke-static {v1, v7, v3}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v7

    const-string v11, "org.chromium.webapk.shell_apk.splashId"

    .line 55
    invoke-static {v1, v11, v3}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v11

    move/from16 v30, v2

    const-string v2, "org.chromium.webapk.shell_apk.isSplashIconMaskableBooleanId"

    .line 56
    invoke-static {v1, v2, v3}, LCO0;->a(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 57
    :try_start_2
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v31, v1

    goto :goto_a

    :catch_1
    :cond_1a
    const/16 v31, 0x0

    .line 58
    :goto_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v1, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "*/*"

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x80

    .line 62
    invoke-static {v1, v2}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 64
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1b

    goto :goto_b

    .line 65
    :cond_1b
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "org.chromium.webapk.shell_apk.shareAction"

    .line 66
    invoke-static {v3, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 68
    new-instance v1, Landroid/util/Pair;

    new-instance v2, LgP0;

    invoke-direct {v2}, LgP0;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v19, v4

    move/from16 v44, v10

    move/from16 v43, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    goto/16 :goto_15

    :cond_1c
    const-string v6, "org.chromium.webapk.shell_apk.shareParamNames"

    .line 69
    invoke-static {v3, v6}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1d

    move/from16 v19, v4

    :catch_2
    move-object/from16 v32, v13

    move/from16 v33, v14

    goto :goto_d

    :cond_1d
    move/from16 v19, v4

    .line 70
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v32, v13

    move/from16 v33, v14

    const/4 v13, 0x0

    .line 72
    :goto_c
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_1e

    .line 73
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_1e
    move-object/from16 v41, v6

    goto :goto_e

    :catch_3
    :goto_d
    const/16 v41, 0x0

    :goto_e
    const-string v4, "org.chromium.webapk.shell_apk.shareParamAccepts"

    .line 74
    invoke-static {v3, v4}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    :catch_4
    move/from16 v44, v10

    move/from16 v43, v12

    goto :goto_11

    .line 75
    :cond_1f
    :try_start_5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v13, 0x0

    .line 77
    :goto_f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_21

    .line 78
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v43, v12

    :try_start_6
    new-array v12, v14, [Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move/from16 v44, v10

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v14, :cond_20

    move/from16 v34, v14

    .line 79
    :try_start_7
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v34

    goto :goto_10

    .line 80
    :cond_20
    aput-object v12, v4, v13
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v43

    move/from16 v10, v44

    goto :goto_f

    :catch_5
    move/from16 v44, v10

    goto :goto_11

    :cond_21
    move/from16 v44, v10

    move/from16 v43, v12

    move-object/from16 v42, v4

    goto :goto_12

    :catch_6
    :goto_11
    const/16 v42, 0x0

    :goto_12
    const-string v4, "org.chromium.webapk.shell_apk.shareMethod"

    .line 81
    invoke-static {v3, v4}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 82
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v39, 0x1

    goto :goto_13

    :cond_22
    const/16 v39, 0x0

    :goto_13
    const-string v4, "org.chromium.webapk.shell_apk.shareEnctype"

    .line 84
    invoke-static {v3, v4}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 85
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 86
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "multipart/form-data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v40, 0x1

    goto :goto_14

    :cond_23
    const/16 v40, 0x0

    .line 87
    :goto_14
    new-instance v4, LgP0;

    .line 88
    invoke-static {v3, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v2, "org.chromium.webapk.shell_apk.shareParamTitle"

    .line 89
    invoke-static {v3, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v2, "org.chromium.webapk.shell_apk.shareParamText"

    .line 90
    invoke-static {v3, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v2, "org.chromium.webapk.shell_apk.shareParamUrl"

    .line 91
    invoke-static {v3, v2}, LCO0;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v34, v4

    invoke-direct/range {v34 .. v42}, LgP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 92
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_15

    :cond_24
    move/from16 v19, v4

    move/from16 v44, v10

    move/from16 v43, v12

    move-object/from16 v32, v13

    move/from16 v33, v14

    .line 93
    new-instance v1, Landroid/util/Pair;

    new-instance v2, LgP0;

    invoke-direct {v2}, LgP0;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :goto_15
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v2

    check-cast v34, LgP0;

    if-eqz v0, :cond_25

    .line 95
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/16 v35, 0x0

    goto :goto_16

    :cond_25
    move-object/from16 v35, p5

    :goto_16
    if-eqz p4, :cond_27

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_27

    .line 98
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SplashContentProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 102
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 103
    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_17

    :cond_26
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_28

    const/16 v29, 0x1

    goto :goto_18

    :cond_27
    const/4 v3, 0x0

    :cond_28
    const/16 v29, 0x0

    .line 104
    :goto_18
    new-instance v2, LyP0;

    if-eqz v16, :cond_29

    move/from16 v0, v19

    goto :goto_19

    :cond_29
    move/from16 v0, v30

    .line 105
    :goto_19
    invoke-direct {v2, v15, v0}, LyP0;-><init>(Ljava/lang/String;I)V

    new-instance v0, LyP0;

    move-object v3, v0

    invoke-direct {v0, v15, v7}, LyP0;-><init>(Ljava/lang/String;I)V

    new-instance v0, LyP0;

    move-object v4, v0

    invoke-direct {v0, v15, v11}, LyP0;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v5, v8

    move-object v6, v9

    move/from16 v7, v44

    move/from16 v8, v43

    move/from16 v9, p2

    move-wide/from16 v10, v20

    move-object/from16 v30, v32

    move-wide/from16 v12, v22

    move/from16 v32, v33

    move/from16 v14, v24

    move/from16 v15, v16

    move/from16 v16, v31

    move-object/from16 v17, p0

    move/from16 v18, v25

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    move/from16 v21, v28

    move-object/from16 v22, v30

    move-object/from16 v23, v34

    move/from16 v24, p3

    move/from16 v25, v29

    move-object/from16 v26, v35

    move/from16 v27, v32

    .line 106
    invoke-static/range {v0 .. v27}, LjP0;->a(Ljava/lang/String;Ljava/lang/String;LyP0;LyP0;LyP0;Ljava/lang/String;Ljava/lang/String;IIIJJIZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;LgP0;ZZLfP0;I)LjP0;

    move-result-object v0

    return-object v0

    :catch_7
    move-object v0, v3

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;LyP0;LyP0;LyP0;Ljava/lang/String;Ljava/lang/String;IIIJJIZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;LgP0;ZZLfP0;I)LjP0;
    .locals 21

    move-object/from16 v0, p17

    move-object/from16 v1, p20

    if-eqz v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 107
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    .line 108
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-static/range {p20 .. p20}, Lorg/chromium/chrome/browser/ShortcutHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    :goto_1
    if-nez p2, :cond_3

    .line 110
    new-instance v2, LyP0;

    invoke-direct {v2}, LyP0;-><init>()V

    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object/from16 v7, p2

    :goto_2
    if-nez p3, :cond_4

    .line 111
    new-instance v2, LyP0;

    invoke-direct {v2}, LyP0;-><init>()V

    goto :goto_3

    :cond_4
    move-object/from16 v2, p3

    :goto_3
    if-nez p4, :cond_5

    .line 112
    new-instance v3, LyP0;

    invoke-direct {v3}, LyP0;-><init>()V

    move-object/from16 v19, v3

    goto :goto_4

    :cond_5
    move-object/from16 v19, p4

    :goto_4
    if-nez p23, :cond_6

    .line 113
    new-instance v3, LgP0;

    invoke-direct {v3}, LgP0;-><init>()V

    move-object/from16 v20, v3

    goto :goto_5

    :cond_6
    move-object/from16 v20, p23

    .line 114
    :goto_5
    new-instance v15, LxP0;

    .line 115
    invoke-static/range {p17 .. p17}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static/range {p10 .. p11}, LAP0;->a(J)Ljava/lang/Integer;

    move-result-object v13

    .line 117
    invoke-static/range {p12 .. p13}, LAP0;->a(J)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object v0, v15

    move/from16 v15, p14

    move/from16 v17, p15

    move/from16 v18, p24

    invoke-direct/range {v3 .. v18}, LxP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LyP0;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;Ljava/lang/Integer;IZZZ)V

    .line 118
    new-instance v3, LdP0;

    move-object/from16 p0, v3

    move-object/from16 p1, p17

    move-object/from16 p2, v2

    move-object/from16 p3, v19

    move/from16 p4, p16

    move/from16 p5, p18

    move-object/from16 p6, p19

    move-object/from16 p7, p20

    move/from16 p8, p21

    move-object/from16 p9, p22

    move-object/from16 p10, v20

    move/from16 p11, p25

    move-object/from16 p12, p26

    move/from16 p13, p27

    invoke-direct/range {p0 .. p13}, LdP0;-><init>(Ljava/lang/String;LyP0;LyP0;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;LgP0;ZLfP0;I)V

    .line 119
    new-instance v1, LjP0;

    invoke-direct {v1, v0, v3}, LjP0;-><init>(LxP0;LdP0;)V

    return-object v1

    .line 120
    :cond_7
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete data provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebApkInfo"

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()LdP0;
    .locals 1

    .line 121
    iget-object v0, p0, LjP0;->b:LdP0;

    return-object v0
.end method

.method public b()LxP0;
    .locals 1

    .line 1
    iget-object v0, p0, LjP0;->a:LxP0;

    return-object v0
.end method
