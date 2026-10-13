.class public Lfu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LNu0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;Ljava/util/Map;ZLorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V
    .locals 17

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;-><init>()V

    new-instance v4, Lorg/chromium/components/payments/PaymentManifestDownloader;

    invoke-direct {v4}, Lorg/chromium/components/payments/PaymentManifestDownloader;-><init>()V

    new-instance v5, Lorg/chromium/components/payments/PaymentManifestParser;

    invoke-direct {v5}, Lorg/chromium/components/payments/PaymentManifestParser;-><init>()V

    new-instance v6, LIu0;

    invoke-direct {v6}, LIu0;-><init>()V

    .line 2
    new-instance v15, Liu0;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Liu0;-><init>(Lorg/chromium/content_public/browser/WebContents;Ljava/util/Set;Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;Lorg/chromium/components/payments/PaymentManifestDownloader;Lorg/chromium/components/payments/PaymentManifestParser;LIu0;Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;)V

    .line 3
    iget-object v0, v15, Liu0;->g:LIu0;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.chromium.intent.action.PAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    const/16 v0, 0x80

    .line 4
    invoke-static {v1, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v15}, Liu0;->a()V

    goto/16 :goto_14

    .line 7
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, v15, Liu0;->c:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 12
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 13
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v9, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    const-string v10, "org.chromium.default_payment_method_name"

    .line 14
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 15
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 16
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 17
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v9}, LQv0;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 20
    invoke-static {v9}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 21
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 23
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v10, "/"

    .line 25
    invoke-virtual {v9, v10}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_4

    .line 27
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 28
    :cond_4
    invoke-static {v10}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 29
    iget-object v11, v15, Liu0;->k:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 30
    iget-object v11, v15, Liu0;->k:Ljava/util/Map;

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_5
    iget-object v11, v15, Liu0;->k:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v10, v2

    goto :goto_2

    :cond_7
    move-object v9, v2

    move-object v10, v9

    .line 32
    :goto_2
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 34
    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v13, :cond_8

    goto :goto_5

    :cond_8
    const-string v14, "org.chromium.payment_method_names"

    .line 35
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    goto :goto_5

    .line 36
    :cond_9
    iget-object v14, v15, Liu0;->g:LIu0;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_14

    .line 37
    :try_start_0
    sget-object v14, LzT;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 39
    invoke-virtual {v14, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_a

    goto :goto_3

    .line 40
    :cond_a
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :catch_0
    :goto_3
    move-object v11, v2

    :goto_4
    if-nez v11, :cond_b

    goto :goto_5

    .line 41
    :cond_b
    invoke-static {v12, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 42
    :goto_5
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 43
    invoke-static {v12}, LQv0;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 44
    invoke-static {v12}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v13

    goto :goto_7

    :cond_c
    move-object v13, v2

    :goto_7
    if-eqz v13, :cond_d

    .line 45
    invoke-virtual {v13, v9}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_6

    .line 46
    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 47
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_e
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_f

    goto :goto_6

    .line 49
    :cond_f
    iget-object v12, v15, Liu0;->l:Ljava/util/Map;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 50
    iget-object v12, v15, Liu0;->l:Ljava/util/Map;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_10
    iget-object v12, v15, Liu0;->l:Ljava/util/Map;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_11

    goto :goto_6

    .line 52
    :cond_11
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 53
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_12
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 55
    :cond_14
    throw v2

    .line 56
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/net/URI;

    .line 58
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_8

    .line 59
    :cond_16
    iget-object v7, v15, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    if-eqz v7, :cond_1f

    .line 60
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 61
    iget-wide v9, v7, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_19

    .line 62
    iget-object v7, v15, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    iget-object v9, v15, Liu0;->a:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v7, :cond_18

    .line 63
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 64
    invoke-static {v9}, LJ/N;->MfK4x$Iq(Ljava/lang/Object;)J

    move-result-wide v9

    .line 65
    iput-wide v9, v7, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    goto :goto_a

    .line 66
    :cond_18
    throw v2

    .line 67
    :cond_19
    :goto_a
    iget-object v7, v15, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    if-eqz v7, :cond_1e

    .line 68
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 69
    iget-wide v9, v7, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    cmp-long v7, v9, v11

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    :goto_b
    if-nez v7, :cond_1c

    .line 70
    iget-object v7, v15, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v9, v15, Liu0;->a:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v7, :cond_1b

    .line 71
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 72
    invoke-static {v9}, LJ/N;->MzoXDvTe(Ljava/lang/Object;)J

    move-result-wide v9

    .line 73
    iput-wide v9, v7, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    goto :goto_c

    .line 74
    :cond_1b
    throw v2

    .line 75
    :cond_1c
    :goto_c
    new-instance v13, LUu0;

    .line 76
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/util/Set;

    .line 77
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/util/Set;

    iget-object v11, v15, Liu0;->e:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    iget-object v12, v15, Liu0;->d:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v7, v15, Liu0;->f:Lorg/chromium/components/payments/PaymentManifestParser;

    iget-object v14, v15, Liu0;->g:LIu0;

    move-object/from16 v16, v7

    move-object v7, v13

    move-object v2, v13

    move-object/from16 v13, v16

    move-object/from16 p1, v15

    invoke-direct/range {v7 .. v15}, LUu0;-><init>(Ljava/net/URI;Ljava/util/Set;Ljava/util/Set;Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;Lorg/chromium/components/payments/PaymentManifestDownloader;Lorg/chromium/components/payments/PaymentManifestParser;LIu0;LTu0;)V

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v7, 0xa

    if-ne v2, v7, :cond_1d

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "PaymentAppFinder"

    const-string v4, "Reached maximum number of allowed payment app manifests."

    .line 80
    invoke-static {v2, v4, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_d

    :cond_1d
    move-object/from16 v15, p1

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 81
    :cond_1e
    throw v2

    .line 82
    :cond_1f
    throw v2

    :cond_20
    move-object v1, v15

    .line 83
    :goto_d
    iget-object v2, v1, Liu0;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 85
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 86
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 87
    invoke-virtual {v1, v7, v4}, Liu0;->a(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_e

    .line 88
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 89
    invoke-virtual {v1}, Liu0;->a()V

    goto/16 :goto_14

    .line 90
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Liu0;->o:I

    iput v2, v1, Liu0;->n:I

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUu0;

    .line 92
    iget-object v2, v1, LUu0;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v1, LUu0;->k:Ljava/security/MessageDigest;

    if-nez v2, :cond_25

    .line 93
    iget-object v2, v1, LUu0;->j:LTu0;

    check-cast v2, Liu0;

    invoke-virtual {v2}, Liu0;->c()V

    .line 94
    iget-object v1, v1, LUu0;->j:LTu0;

    check-cast v1, Liu0;

    invoke-virtual {v1}, Liu0;->b()V

    :cond_24
    const/4 v2, 0x1

    goto :goto_f

    .line 95
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v3, v1, LUu0;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 98
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LSu0;

    .line 99
    iget-object v7, v1, LUu0;->i:LIu0;

    if-eqz v7, :cond_28

    .line 100
    :try_start_1
    sget-object v7, LzT;->a:Landroid/content/Context;

    .line 101
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_1
    const/4 v7, 0x0

    :goto_11
    if-nez v7, :cond_27

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 103
    :cond_27
    iget v5, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v8, v5

    iput-wide v8, v4, LSu0;->b:J

    .line 104
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, LSu0;->c:Ljava/util/Set;

    .line 105
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    .line 106
    :goto_12
    array-length v8, v5

    if-ge v7, v8, :cond_26

    .line 107
    iget-object v8, v1, LUu0;->k:Ljava/security/MessageDigest;

    aget-object v9, v5, v7

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    iget-object v8, v4, LSu0;->c:Ljava/util/Set;

    iget-object v9, v1, LUu0;->k:Ljava/security/MessageDigest;

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, LUu0;->a([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_28
    const/4 v4, 0x0

    .line 109
    throw v4

    :cond_29
    const/4 v3, 0x0

    .line 110
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 111
    iget-object v4, v1, LUu0;->b:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 112
    :cond_2a
    iget-object v2, v1, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    iget-object v3, v1, LUu0;->a:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-wide v4, v2, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 114
    invoke-static {v4, v5, v2, v3, v1}, LJ/N;->M8p9RlSH(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    .line 115
    iput-boolean v2, v1, LUu0;->m:Z

    .line 116
    iget-object v3, v1, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v4, v1, LUu0;->a:Ljava/net/URI;

    invoke-virtual {v3, v4, v1}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    goto/16 :goto_f

    :cond_2b
    :goto_14
    return-void

    :cond_2c
    move-object v0, v2

    .line 117
    throw v0
.end method
