.class public Lxa0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpa0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    new-instance v0, Lwa0;

    invoke-direct {v0, p1}, Lwa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lxa0;->a:Lpa0;

    return-void
.end method

.method public constructor <init>(Lpa0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lxa0;->a:Lpa0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lza0;)I
    .locals 8

    .line 230
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "market"

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "details"

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 233
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 234
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrer"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v1, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 237
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.vending"

    .line 238
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 239
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-object p1, p3, Lza0;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 241
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    :cond_0
    iget-object p1, p0, Lxa0;->a:Lpa0;

    invoke-interface {p1, v1}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v7, 0x3

    if-nez p1, :cond_2

    return v7

    .line 244
    :cond_2
    iget-boolean p1, p3, Lza0;->b:Z

    if-eqz p1, :cond_4

    .line 245
    iget-object v0, p0, Lxa0;->a:Lpa0;

    .line 246
    iget-object v2, p3, Lza0;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 247
    iget-object v4, p3, Lza0;->h:Lorg/chromium/chrome/browser/tab/Tab;

    .line 248
    iget-boolean v5, p3, Lza0;->n:Z

    const/4 v6, 0x0

    .line 249
    invoke-interface/range {v0 .. v6}, Lpa0;->startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v7

    :cond_3
    const/4 p1, 0x2

    return p1

    .line 250
    :cond_4
    iget-object p1, p0, Lxa0;->a:Lpa0;

    invoke-interface {p1, v1, p2}, Lpa0;->startActivity(Landroid/content/Intent;Z)V

    return p2
.end method

.method public a(Lza0;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "UrlHandler"

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget-object v5, v2, Lza0;->a:Ljava/lang/String;

    .line 2
    invoke-static {v5, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v6, "browser_fallback_url"

    .line 3
    invoke-static {v5, v6}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 4
    invoke-static {v7}, LFO0;->f(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v13, v8

    goto :goto_0

    :cond_0
    move-object v13, v7

    .line 5
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-string v12, "android.intent.category.BROWSABLE"

    .line 6
    invoke-virtual {v5, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    :cond_1
    iget-boolean v7, v2, Lza0;->f:Z

    if-eqz v7, :cond_2

    .line 12
    iget-object v7, v1, Lxa0;->a:Lpa0;

    invoke-interface {v7}, Lpa0;->isChromeAppInForeground()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const-string v11, "Android.InstantApps.DirectInstantAppsIntent"

    const/4 v9, 0x7

    if-nez v7, :cond_64

    .line 13
    iget-boolean v7, v2, Lza0;->j:Z

    if-nez v7, :cond_64

    .line 14
    iget v7, v2, Lza0;->d:I

    const/high16 v10, 0x1000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    goto/16 :goto_42

    .line 15
    :cond_4
    iget-object v7, v2, Lza0;->a:Ljava/lang/String;

    .line 16
    invoke-static {v7}, LFO0;->b(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-nez v7, :cond_5

    .line 17
    iget-object v8, v1, Lxa0;->a:Lpa0;

    .line 18
    iget-object v10, v2, Lza0;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v8, v10}, Lpa0;->isPdfDownload(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    :goto_4
    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    goto/16 :goto_1b

    .line 20
    :cond_6
    iget-object v8, v2, Lza0;->a:Ljava/lang/String;

    const-string v10, "file:"

    .line 21
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lxa0;->a:Lpa0;

    .line 22
    iget-object v10, v2, Lza0;->a:Ljava/lang/String;

    .line 23
    invoke-interface {v8, v10}, Lpa0;->shouldRequestFileAccess(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 24
    iget-object v8, v1, Lxa0;->a:Lpa0;

    .line 25
    iget-object v10, v2, Lza0;->c:Ljava/lang/String;

    .line 26
    iget-boolean v4, v2, Lza0;->n:Z

    .line 27
    invoke-interface {v8, v5, v10, v4}, Lpa0;->startFileIntent(Landroid/content/Intent;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_8

    const/4 v0, 0x2

    move-object v4, v11

    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    goto/16 :goto_36

    .line 28
    :cond_8
    invoke-static {}, LwT;->c()LwT;

    move-result-object v4

    const-string v8, "disable-external-intent-requests"

    invoke-virtual {v4, v8}, LwT;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "External intent handling is disabled by a command-line flag."

    .line 29
    invoke-static {v3, v4, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    goto :goto_4

    .line 30
    :cond_a
    iget v0, v2, Lza0;->d:I

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-ne v0, v9, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    .line 31
    :goto_8
    iget v8, v2, Lza0;->d:I

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    if-eqz v3, :cond_e

    if-nez v8, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 32
    :goto_a
    iget-object v10, v2, Lza0;->g:LrH0;

    if-nez v10, :cond_f

    const/4 v10, 0x0

    goto :goto_b

    .line 33
    :cond_f
    invoke-virtual {v10}, LrH0;->isOnEffectiveIntentRedirectChain()Z

    move-result v10

    :goto_b
    if-eqz v3, :cond_10

    if-eqz v8, :cond_10

    .line 34
    iget-boolean v8, v2, Lza0;->e:Z

    if-nez v8, :cond_11

    :cond_10
    if-eqz v10, :cond_12

    :cond_11
    const/4 v8, 0x1

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    .line 35
    :goto_c
    iget-object v10, v2, Lza0;->g:LrH0;

    if-nez v10, :cond_13

    goto :goto_d

    .line 36
    :cond_13
    invoke-virtual {v10}, LrH0;->isFromCustomTabIntent()Z

    move-result v17

    if-eqz v17, :cond_14

    if-nez v7, :cond_14

    if-eqz v8, :cond_14

    .line 37
    invoke-virtual {v10}, LrH0;->shouldNavigationTypeStayInChrome()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, v1, Lxa0;->a:Lpa0;

    move-object/from16 v17, v12

    .line 38
    iget-object v12, v2, Lza0;->a:Ljava/lang/String;

    move-wide/from16 v18, v14

    .line 39
    iget-object v14, v2, Lza0;->c:Ljava/lang/String;

    const/4 v15, 0x1

    .line 40
    invoke-interface {v10, v12, v14, v15}, Lpa0;->maybeLaunchInstantApp(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    goto :goto_e

    :cond_14
    :goto_d
    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    :cond_15
    const/4 v10, 0x0

    :goto_e
    if-eqz v10, :cond_16

    move-object/from16 v16, v11

    goto/16 :goto_29

    .line 41
    :cond_16
    iget-object v10, v2, Lza0;->g:LrH0;

    if-nez v10, :cond_17

    goto :goto_f

    .line 42
    :cond_17
    iget-object v12, v1, Lxa0;->a:Lpa0;

    .line 43
    invoke-interface {v12, v5}, Lpa0;->isIntentForTrustedCallingApp(Landroid/content/Intent;)Z

    move-result v12

    .line 44
    invoke-virtual {v10, v7, v12}, LrH0;->shouldStayInChrome(ZZ)Z

    move-result v12

    if-nez v12, :cond_19

    .line 45
    invoke-virtual {v10}, LrH0;->shouldNotOverrideUrlLoading()Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v10, 0x0

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v10, 0x1

    :goto_11
    if-eqz v10, :cond_1a

    goto/16 :goto_1b

    :cond_1a
    const/4 v10, 0x1

    if-eq v0, v10, :cond_1c

    .line 46
    iget v0, v2, Lza0;->d:I

    const/high16 v10, 0x2000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    :cond_1c
    :goto_12
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_1d

    .line 47
    iget-boolean v0, v2, Lza0;->e:Z

    if-eqz v0, :cond_1d

    if-eqz v7, :cond_1d

    const/4 v0, 0x1

    goto :goto_14

    :cond_1d
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    goto :goto_17

    :cond_1e
    if-eqz v4, :cond_1f

    .line 48
    iget-boolean v0, v2, Lza0;->e:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_15

    :cond_1f
    const/4 v0, 0x0

    :goto_15
    if-nez v9, :cond_20

    if-nez v8, :cond_20

    if-nez v0, :cond_20

    goto :goto_16

    :cond_20
    if-eqz v0, :cond_21

    if-nez v8, :cond_21

    .line 49
    iget-boolean v0, v2, Lza0;->m:Z

    if-nez v0, :cond_21

    const-string v0, "IntentBlockExternalFormRedirectsNoGesture"

    .line 50
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_16

    .line 51
    :cond_21
    iget-object v0, v2, Lza0;->g:LrH0;

    if-eqz v0, :cond_22

    .line 52
    invoke-virtual {v0}, LrH0;->isNavigationFromUserTyping()Z

    move-result v0

    if-eqz v0, :cond_22

    :goto_16
    const/4 v0, 0x0

    goto :goto_18

    :cond_22
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-nez v0, :cond_23

    goto :goto_1b

    .line 53
    :cond_23
    iget-object v0, v2, Lza0;->c:Ljava/lang/String;

    if-nez v0, :cond_24

    goto :goto_19

    :cond_24
    const-string v10, "chrome://"

    .line 54
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 55
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v10, "http://"

    .line 56
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 57
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v10, "https://"

    .line 58
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    const/4 v0, 0x1

    goto :goto_1a

    :cond_26
    :goto_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_27

    :goto_1b
    move-object v4, v11

    goto/16 :goto_35

    .line 59
    :cond_27
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v10, "wtai://wp/mc;"

    .line 60
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "Android.PhoneIntent"

    if-nez v0, :cond_28

    const/4 v0, 0x0

    move-object/from16 v16, v11

    goto :goto_1c

    .line 61
    :cond_28
    iget-object v0, v1, Lxa0;->a:Lpa0;

    new-instance v12, Landroid/content/Intent;

    const-string v14, "tel:"

    invoke-static {v14}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 62
    iget-object v15, v2, Lza0;->a:Ljava/lang/String;

    move-object/from16 v16, v11

    const/16 v11, 0xd

    .line 63
    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 64
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v12, v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v11, 0x0

    .line 65
    invoke-interface {v0, v12, v11}, Lpa0;->startActivity(Landroid/content/Intent;Z)V

    .line 66
    invoke-static {v10}, LhV;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_29

    goto/16 :goto_29

    .line 67
    :cond_29
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "wtai://wp/"

    .line 68
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    :goto_1d
    move-object/from16 v4, v16

    goto/16 :goto_35

    .line 69
    :cond_2b
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "about:"

    .line 70
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 71
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "chrome:"

    .line 72
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 73
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "chrome-native:"

    .line 74
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 75
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "devtools:"

    .line 76
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 77
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "chrome-devtools:"

    .line 78
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_2d
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    if-eqz v0, :cond_2e

    goto :goto_1d

    .line 79
    :cond_2e
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, "content:"

    .line 80
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_1d

    .line 81
    :cond_2f
    iget-object v0, v2, Lza0;->a:Ljava/lang/String;

    const-string v11, ".*youtube\\.com(\\/.*)?\\?(.+&)?pairingCode=[^&].+"

    .line 82
    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_1d

    .line 83
    :cond_30
    iget-object v0, v1, Lxa0;->a:Lpa0;

    .line 84
    iget-object v11, v2, Lza0;->a:Ljava/lang/String;

    .line 85
    invoke-interface {v0, v11}, Lpa0;->applyWebappScopePolicyForUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_31

    const/4 v0, 0x1

    goto :goto_20

    :cond_31
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_32

    goto :goto_1d

    .line 86
    :cond_32
    iget-boolean v0, v2, Lza0;->b:Z

    if-eqz v0, :cond_33

    if-nez v7, :cond_33

    const/4 v0, 0x1

    goto :goto_21

    :cond_33
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_34

    goto :goto_1d

    .line 87
    :cond_34
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_38

    if-eqz v0, :cond_38

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v11, "sms"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 90
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0, v5}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v11, v1, Lxa0;->a:Lpa0;

    invoke-interface {v11}, Lpa0;->getDefaultSmsPackageName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_35

    goto :goto_22

    .line 92
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 93
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    goto :goto_23

    :cond_37
    :goto_22
    const/4 v11, 0x0

    .line 94
    :goto_23
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    goto :goto_24

    :cond_38
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_3b

    .line 95
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v11, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 97
    :cond_39
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v11, "android.intent.action.DIAL"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 98
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v11, "android.intent.action.CALL"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 99
    :cond_3a
    invoke-static {v10}, LhV;->a(Ljava/lang/String;)V

    .line 100
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 101
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0, v5}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v10

    .line 102
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    if-eqz v13, :cond_3c

    goto :goto_25

    .line 103
    :cond_3c
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v0, "market_referrer"

    .line 104
    invoke-static {v5, v0}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 106
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_3d
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lxa0;->a(Ljava/lang/String;Ljava/lang/String;Lza0;)I

    move-result v0

    goto :goto_2a

    :cond_3e
    :goto_25
    const/4 v0, 0x3

    goto :goto_2a

    :cond_3f
    if-eqz v13, :cond_40

    .line 109
    invoke-virtual {v5, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 110
    :cond_40
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0, v10}, Lpa0;->countSpecializedHandlers(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_26

    :cond_41
    const/4 v0, 0x0

    :goto_26
    if-nez v7, :cond_44

    if-nez v0, :cond_44

    if-eqz v8, :cond_42

    .line 111
    iget-object v0, v1, Lxa0;->a:Lpa0;

    .line 112
    iget-object v3, v2, Lza0;->a:Ljava/lang/String;

    .line 113
    iget-object v4, v2, Lza0;->c:Ljava/lang/String;

    const/4 v6, 0x1

    .line 114
    invoke-interface {v0, v3, v4, v6}, Lpa0;->maybeLaunchInstantApp(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_27

    :cond_42
    if-eqz v9, :cond_43

    .line 115
    iget-boolean v0, v2, Lza0;->b:Z

    if-nez v0, :cond_43

    .line 116
    iget-object v0, v1, Lxa0;->a:Lpa0;

    .line 117
    iget-object v3, v2, Lza0;->a:Ljava/lang/String;

    .line 118
    iget-object v4, v2, Lza0;->c:Ljava/lang/String;

    const/4 v6, 0x0

    .line 119
    invoke-interface {v0, v3, v4, v6}, Lpa0;->maybeLaunchInstantApp(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    :goto_27
    const/4 v0, 0x1

    goto :goto_28

    :cond_43
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2a

    :goto_29
    const/4 v0, 0x0

    :goto_2a
    move-object/from16 v4, v16

    goto/16 :goto_36

    :cond_44
    if-eqz v7, :cond_45

    goto/16 :goto_2f

    .line 120
    :cond_45
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0}, Lpa0;->getPreviousUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    goto :goto_2b

    .line 121
    :cond_46
    iget-object v0, v2, Lza0;->c:Ljava/lang/String;

    :goto_2b
    if-eqz v0, :cond_4d

    if-nez v3, :cond_47

    if-nez v4, :cond_47

    goto/16 :goto_2f

    .line 122
    :cond_47
    :try_start_1
    new-instance v3, Ljava/net/URI;

    .line 123
    iget-object v4, v2, Lza0;->a:Ljava/lang/String;

    .line 124
    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_2f

    :cond_48
    const/4 v3, 0x1

    .line 127
    :try_start_2
    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4d

    .line 128
    iget-object v3, v1, Lxa0;->a:Lpa0;

    .line 129
    invoke-interface {v3, v0}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_49

    goto :goto_2d

    .line 130
    :cond_49
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 132
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 133
    :cond_4a
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 134
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v9, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    :goto_2d
    const/4 v0, 0x0

    goto :goto_2e

    :cond_4c
    const/4 v0, 0x1

    :goto_2e
    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_30

    :catch_0
    :cond_4d
    :goto_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_4e

    goto/16 :goto_1d

    :cond_4e
    if-eqz v7, :cond_4f

    .line 135
    invoke-static {v5}, LSh0;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_31

    :cond_4f
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_50

    .line 136
    iget-object v3, v1, Lxa0;->a:Lpa0;

    invoke-interface {v3}, Lpa0;->isSerpReferrer()Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_32

    :cond_50
    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_32
    if-eqz v0, :cond_52

    if-eqz v12, :cond_51

    goto :goto_33

    :cond_51
    const/4 v0, 0x2

    const/4 v3, 0x3

    move-object/from16 v4, v16

    .line 137
    invoke-static {v4, v0, v3}, LfV;->a(Ljava/lang/String;II)V

    const/4 v0, 0x1

    goto :goto_34

    :cond_52
    :goto_33
    move-object/from16 v4, v16

    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_53

    :goto_35
    const/4 v0, 0x3

    :goto_36
    const/4 v3, 0x7

    const/4 v6, 0x0

    move-object/from16 v14, v17

    goto/16 :goto_44

    .line 138
    :cond_53
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.browser.application_id"

    .line 140
    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-boolean v0, v2, Lza0;->i:Z

    if-eqz v0, :cond_54

    const-string v0, "create_new_tab"

    const/4 v3, 0x1

    .line 142
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_54
    const/high16 v0, 0x10000000

    .line 143
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 144
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0, v5}, Lpa0;->maybeSetWindowId(Landroid/content/Intent;)V

    .line 146
    iget-object v0, v1, Lxa0;->a:Lpa0;

    invoke-interface {v0, v5, v10}, Lpa0;->maybeRecordAppHandlersInIntent(Landroid/content/Intent;Ljava/util/List;)V

    .line 147
    iget-object v0, v2, Lza0;->c:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 148
    invoke-static {v5, v0}, LqZ;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 149
    :cond_55
    iget-boolean v0, v2, Lza0;->b:Z

    if-eqz v0, :cond_56

    .line 150
    invoke-static {v5}, LqZ;->k(Landroid/content/Intent;)V

    :cond_56
    const-string v0, "com.google.android.gms.instantapps.IS_GOOGLE_SEARCH_REFERRER"

    if-eqz v12, :cond_57

    const/4 v3, 0x3

    const/4 v6, 0x1

    .line 151
    invoke-static {v4, v6, v3}, LfV;->a(Ljava/lang/String;II)V

    .line 152
    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_37

    .line 153
    :cond_57
    invoke-virtual {v5, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 154
    :goto_37
    iget-boolean v0, v2, Lza0;->m:Z

    if-eqz v0, :cond_5a

    .line 155
    invoke-static {}, LBa0;->a()LBa0;

    move-result-object v3

    .line 156
    iget-object v0, v3, LBa0;->b:LkW;

    if-eqz v0, :cond_58

    .line 157
    :try_start_3
    invoke-virtual {v0}, LkW;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, v3, LBa0;->a:Ljava/security/SecureRandom;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_39

    :catch_1
    move-exception v0

    goto :goto_38

    :catch_2
    move-exception v0

    :goto_38
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    const-string v0, "IntentGestureHandler"

    const-string v9, "Error fetching SecureRandom"

    .line 158
    invoke-static {v0, v9, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_39
    const/4 v0, 0x0

    .line 159
    iput-object v0, v3, LBa0;->b:LkW;

    goto :goto_3a

    :cond_58
    const/4 v0, 0x0

    .line 160
    :goto_3a
    iget-object v6, v3, LBa0;->a:Ljava/security/SecureRandom;

    if-nez v6, :cond_59

    goto :goto_3b

    :cond_59
    const/16 v9, 0x20

    new-array v9, v9, [B

    .line 161
    iput-object v9, v3, LBa0;->c:[B

    .line 162
    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 163
    iget-object v6, v3, LBa0;->c:[B

    const-string v9, "org.chromium.chrome.browser.user_gesture_token"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 164
    invoke-static {v5}, LqZ;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, LBa0;->d:Ljava/lang/String;

    goto :goto_3b

    :cond_5a
    const/4 v0, 0x0

    .line 165
    :goto_3b
    iget-boolean v3, v2, Lza0;->b:Z

    if-eqz v3, :cond_5c

    .line 166
    iget-object v3, v1, Lxa0;->a:Lpa0;

    invoke-interface {v3, v5}, Lpa0;->willChromeHandleIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 167
    iget-object v6, v1, Lxa0;->a:Lpa0;

    .line 168
    iget-object v8, v2, Lza0;->c:Ljava/lang/String;

    .line 169
    iget-object v10, v2, Lza0;->h:Lorg/chromium/chrome/browser/tab/Tab;

    .line 170
    iget-boolean v11, v2, Lza0;->n:Z

    const/4 v3, 0x7

    move-object v7, v5

    move-object v9, v13

    move-object/from16 v14, v17

    .line 171
    invoke-interface/range {v6 .. v12}, Lpa0;->startIncognitoIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;ZZ)Z

    move-result v6

    if-eqz v6, :cond_5b

    const/4 v6, 0x2

    goto :goto_3c

    :cond_5b
    const/4 v6, 0x3

    :goto_3c
    move/from16 v20, v6

    move-object v6, v0

    move/from16 v0, v20

    goto :goto_44

    :cond_5c
    move-object/from16 v14, v17

    const/4 v3, 0x7

    .line 172
    iget-object v6, v2, Lza0;->g:LrH0;

    if-eqz v6, :cond_5d

    if-eqz v8, :cond_5d

    if-nez v7, :cond_5d

    .line 173
    invoke-virtual {v6}, LrH0;->isFromCustomTabIntent()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 174
    iget-object v6, v2, Lza0;->g:LrH0;

    .line 175
    invoke-virtual {v6, v5}, LrH0;->hasNewResolver(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_5d

    const/4 v6, 0x1

    goto :goto_3d

    :cond_5d
    const/4 v6, 0x0

    :goto_3d
    if-eqz v6, :cond_5e

    goto :goto_41

    .line 176
    :cond_5e
    invoke-virtual {v1, v2, v10}, Lxa0;->a(Lza0;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5f

    goto :goto_41

    .line 177
    :cond_5f
    invoke-virtual {v1, v10, v2}, Lxa0;->a(Ljava/util/List;Lza0;)Z

    move-result v6

    if-eqz v6, :cond_60

    goto :goto_41

    .line 178
    :cond_60
    invoke-virtual {v1, v10, v5}, Lxa0;->a(Ljava/util/List;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_61

    goto :goto_40

    .line 179
    :cond_61
    :try_start_4
    iget-object v6, v1, Lxa0;->a:Lpa0;

    invoke-interface {v6, v5, v12}, Lpa0;->startActivityIfNeeded(Landroid/content/Intent;Z)Z

    move-result v6
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v6, :cond_62

    goto :goto_3e

    :cond_62
    const/4 v6, 0x1

    goto :goto_3f

    :catch_3
    :goto_3e
    const/4 v6, 0x0

    :goto_3f
    if-eqz v6, :cond_63

    :goto_40
    const/4 v6, 0x0

    move-object v6, v0

    const/4 v0, 0x0

    goto :goto_44

    :cond_63
    :goto_41
    move-object v6, v0

    goto :goto_43

    :cond_64
    :goto_42
    move-object v4, v11

    move-wide/from16 v18, v14

    move-object v14, v12

    const/4 v0, 0x7

    move-object v6, v8

    const/4 v3, 0x7

    :goto_43
    const/4 v0, 0x3

    .line 180
    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v7, v7, v18

    const-string v9, "Android.StrictMode.OverrideUrlLoadingTime"

    .line 181
    invoke-static {v9, v7, v8}, LfV;->c(Ljava/lang/String;J)V

    const/4 v7, 0x3

    if-eq v0, v7, :cond_67

    .line 182
    iget v4, v2, Lza0;->d:I

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v3, :cond_65

    const/4 v3, 0x1

    goto :goto_45

    :cond_65
    const/4 v3, 0x0

    :goto_45
    if-eqz v3, :cond_66

    .line 183
    iget-boolean v3, v2, Lza0;->e:Z

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    goto :goto_46

    :cond_66
    const/4 v3, 0x0

    :goto_46
    if-eqz v3, :cond_71

    .line 184
    iget-boolean v2, v2, Lza0;->m:Z

    const-string v3, "Android.Intent.LaunchExternalAppFormSubmitHasUserGesture"

    .line 185
    invoke-static {v3, v2}, LfV;->a(Ljava/lang/String;Z)V

    goto/16 :goto_48

    :cond_67
    if-ne v0, v7, :cond_71

    if-eqz v13, :cond_71

    .line 186
    iget-object v3, v2, Lza0;->g:LrH0;

    if-eqz v3, :cond_68

    .line 187
    invoke-virtual {v3}, LrH0;->shouldNotOverrideUrlLoading()Z

    move-result v3

    if-nez v3, :cond_71

    .line 188
    :cond_68
    invoke-static {v5}, LSh0;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 189
    invoke-static {v4, v3, v0}, LfV;->a(Ljava/lang/String;II)V

    :cond_69
    const/4 v0, 0x1

    .line 190
    :try_start_5
    invoke-static {v13, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 194
    invoke-virtual {v3, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    :cond_6a
    iget-object v3, v1, Lxa0;->a:Lpa0;

    invoke-interface {v3, v0}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 197
    invoke-virtual {v1, v2, v3}, Lxa0;->a(Lza0;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 198
    invoke-virtual {v1, v3, v2}, Lxa0;->a(Ljava/util/List;Lza0;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 199
    invoke-virtual {v1, v3, v0}, Lxa0;->a(Ljava/util/List;Landroid/content/Intent;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    goto/16 :goto_48

    :catch_4
    nop

    .line 200
    :cond_6b
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play.google.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 202
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/store/apps/details"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const-string v3, "id"

    .line 203
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 204
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "referrer"

    .line 205
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    if-eqz v6, :cond_6e

    .line 206
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 207
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_6d
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 209
    :goto_47
    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lxa0;->a(Ljava/lang/String;Ljava/lang/String;Lza0;)I

    move-result v0

    goto :goto_48

    .line 210
    :cond_6e
    iget-boolean v0, v2, Lza0;->k:Z

    if-nez v0, :cond_6f

    const/4 v0, 0x3

    goto :goto_48

    .line 211
    :cond_6f
    iget-object v0, v2, Lza0;->g:LrH0;

    if-eqz v0, :cond_70

    .line 212
    invoke-virtual {v0}, LrH0;->setShouldNotOverrideUrlLoadingUntilNewUrlLoading()V

    .line 213
    :cond_70
    iget-object v0, v1, Lxa0;->a:Lpa0;

    .line 214
    iget-object v2, v2, Lza0;->c:Ljava/lang/String;

    .line 215
    invoke-interface {v0, v13, v2}, Lpa0;->clobberCurrentTab(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_71
    :goto_48
    return v0

    :catch_5
    move-exception v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 216
    iget-object v2, v2, Lza0;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const-string v0, "Bad URI %s"

    .line 217
    invoke-static {v3, v0, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "wtai://wp/mc;"

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 254
    :cond_1
    iget-object v2, p0, Lxa0;->a:Lpa0;

    invoke-interface {v2, p1}, Lpa0;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v2, v3, v1

    const-string p1, "UrlHandler"

    const-string v1, "Bad URI %s"

    .line 256
    invoke-static {p1, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final a(Ljava/util/List;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 257
    invoke-static {p1, v0}, Lwa0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lxa0;->a:Lpa0;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lpa0;->isValidWebApk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :try_start_0
    iget-object p1, p0, Lxa0;->a:Lpa0;

    invoke-interface {p1, v0, v2}, Lpa0;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_1
    :goto_0
    return v2
.end method

.method public final a(Ljava/util/List;Lza0;)Z
    .locals 2

    .line 226
    iget-object p2, p2, Lza0;->l:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 227
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 228
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final a(Lza0;Ljava/util/List;)Z
    .locals 4

    .line 218
    iget-object p1, p1, Lza0;->h:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 219
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isCurrentlyACustomTab()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "org.chromium.chrome.browser.customtabs.EXTRA_BROWSER_LAUNCH_SOURCE"

    const/4 v3, -0x1

    .line 221
    invoke-static {v1, v2, v3}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 222
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.browser.application_id"

    .line 223
    invoke-static {p1, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 224
    :cond_2
    invoke-static {p2, p1}, Lwa0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method
