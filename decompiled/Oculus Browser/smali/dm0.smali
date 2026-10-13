.class public final synthetic Ldm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Landroid/graphics/Bitmap;

.field public final k:Landroid/graphics/Bitmap;

.field public final l:Landroid/graphics/Bitmap;

.field public final m:[I

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:[Lorg/chromium/chrome/browser/notifications/ActionInfo;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZZ[Lorg/chromium/chrome/browser/notifications/ActionInfo;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ldm0;->a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    move-object v1, p2

    iput-object v1, v0, Ldm0;->b:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Ldm0;->c:I

    move-object v1, p4

    iput-object v1, v0, Ldm0;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Ldm0;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Ldm0;->f:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Ldm0;->g:Z

    move-object v1, p8

    iput-object v1, v0, Ldm0;->h:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Ldm0;->i:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Ldm0;->j:Landroid/graphics/Bitmap;

    move-object v1, p11

    iput-object v1, v0, Ldm0;->k:Landroid/graphics/Bitmap;

    move-object v1, p12

    iput-object v1, v0, Ldm0;->l:Landroid/graphics/Bitmap;

    move-object/from16 v1, p13

    iput-object v1, v0, Ldm0;->m:[I

    move-wide/from16 v1, p14

    iput-wide v1, v0, Ldm0;->n:J

    move/from16 v1, p16

    iput-boolean v1, v0, Ldm0;->o:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Ldm0;->p:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Ldm0;->q:[Lorg/chromium/chrome/browser/notifications/ActionInfo;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, Ldm0;->a:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    iget-object v13, v0, Ldm0;->b:Ljava/lang/String;

    iget v14, v0, Ldm0;->c:I

    iget-object v15, v0, Ldm0;->d:Ljava/lang/String;

    iget-object v11, v0, Ldm0;->e:Ljava/lang/String;

    iget-object v10, v0, Ldm0;->f:Ljava/lang/String;

    iget-boolean v9, v0, Ldm0;->g:Z

    iget-object v8, v0, Ldm0;->h:Ljava/lang/String;

    iget-object v7, v0, Ldm0;->i:Ljava/lang/String;

    iget-object v6, v0, Ldm0;->j:Landroid/graphics/Bitmap;

    iget-object v5, v0, Ldm0;->k:Landroid/graphics/Bitmap;

    iget-object v4, v0, Ldm0;->l:Landroid/graphics/Bitmap;

    iget-object v3, v0, Ldm0;->m:[I

    iget-wide v1, v0, Ldm0;->n:J

    move/from16 v16, v9

    iget-boolean v9, v0, Ldm0;->o:Z

    move/from16 v17, v9

    iget-boolean v9, v0, Ldm0;->p:Z

    move/from16 v18, v9

    iget-object v9, v0, Ldm0;->q:[Lorg/chromium/chrome/browser/notifications/ActionInfo;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-wide/from16 v19, v1

    .line 1
    iget-wide v1, v12, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a:J

    .line 2
    invoke-static {v1, v2, v12, v13, v0}, LJ/N;->MlTGi82B(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/notifications/NotificationSystemStatusUtil;->getAppNotificationStatus()I

    move-result v1

    const/4 v2, 0x4

    move-object/from16 v21, v3

    const-string v3, "Notifications.AppNotificationStatus"

    .line 4
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    sget-object v3, LzT;->a:Landroid/content/Context;

    const/16 v22, -0x1

    const/16 v23, -0x1

    const-string v24, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    move-wide/from16 v25, v19

    move-object v1, v12

    move-object v2, v3

    move-object/from16 p1, v3

    move-object/from16 v19, v21

    move-object/from16 v3, v24

    move-object/from16 v27, v4

    move-object v4, v13

    move-object/from16 v28, v5

    move v5, v14

    move-object/from16 v29, v6

    move-object v6, v15

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v21, v8

    move-object v8, v10

    move-object/from16 v31, v9

    move/from16 v30, v17

    move/from16 v17, v18

    move/from16 v9, v16

    move-object/from16 v18, v10

    move-object v10, v0

    move-object/from16 v24, v11

    move/from16 v11, v23

    .line 6
    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lpm0;

    move-result-object v11

    const-string v3, "org.chromium.chrome.browser.notifications.CLOSE_NOTIFICATION"

    move-object/from16 v2, p1

    move-object/from16 v7, v24

    move-object/from16 v8, v18

    move-object/from16 v23, v13

    move-object v13, v11

    move/from16 v11, v22

    .line 7
    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lpm0;

    move-result-object v1

    const/4 v11, 0x1

    const/4 v10, 0x0

    move-object/from16 v9, v29

    if-eqz v9, :cond_0

    const/16 v22, 0x1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v11

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-ge v3, v8, :cond_1

    if-nez v22, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 10
    new-instance v3, LQl0;

    move-object/from16 v7, p1

    invoke-direct {v3, v7}, LQl0;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p1

    .line 11
    new-instance v3, Lqm0;

    invoke-direct {v3, v7}, Lqm0;-><init>(Landroid/content/Context;)V

    :goto_2
    move-object v6, v3

    .line 12
    invoke-static/range {v21 .. v21}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v6, LWl0;->d:Ljava/lang/CharSequence;

    .line 13
    invoke-static/range {v20 .. v20}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v6, LWl0;->e:Ljava/lang/CharSequence;

    .line 14
    iput-object v9, v6, LWl0;->i:Landroid/graphics/Bitmap;

    move-object/from16 v3, v28

    .line 15
    iput-object v3, v6, LWl0;->w:Landroid/graphics/Bitmap;

    const v3, 0x7f08010d

    .line 16
    iput v3, v6, LWl0;->j:I

    move-object/from16 v3, v27

    .line 17
    invoke-virtual {v6, v3}, LWl0;->b(Landroid/graphics/Bitmap;)LWl0;

    .line 18
    invoke-virtual {v6, v3}, LWl0;->a(Landroid/graphics/Bitmap;)LWl0;

    .line 19
    iput-object v13, v6, LWl0;->n:Lpm0;

    .line 20
    iput-object v1, v6, LWl0;->o:Lpm0;

    .line 21
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v3, v21

    .line 22
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    .line 23
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v4, v20

    .line 24
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x12

    .line 27
    invoke-virtual {v1, v4, v10, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    invoke-static {v1}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v6, LWl0;->h:Ljava/lang/CharSequence;

    move-wide/from16 v3, v25

    .line 29
    iput-wide v3, v6, LWl0;->t:J

    move/from16 v1, v30

    .line 30
    iput-boolean v1, v6, LWl0;->u:Z

    .line 31
    invoke-static {v15}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v6, LWl0;->f:Ljava/lang/CharSequence;

    const/4 v13, 0x5

    if-ne v14, v13, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 33
    :goto_3
    iput-boolean v1, v6, LWl0;->x:Z

    const/4 v5, -0x1

    if-ne v14, v13, :cond_7

    .line 34
    invoke-static {}, Llx0;->b()I

    .line 35
    invoke-static {}, Llx0;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    goto :goto_4

    :cond_4
    const/4 v1, -0x1

    .line 36
    :goto_4
    iput v1, v6, LWl0;->v:I

    .line 37
    invoke-static {}, Llx0;->b()I

    move-result v1

    if-eq v1, v11, :cond_6

    if-eq v1, v2, :cond_5

    const-string v1, "browser"

    goto :goto_5

    :cond_5
    const-string v1, "permission_requests_high"

    goto :goto_5

    :cond_6
    const-string v1, "permission_requests"

    .line 38
    :goto_5
    iput-object v1, v6, LWl0;->g:Ljava/lang/String;

    goto :goto_7

    .line 39
    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_8

    if-nez v2, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_9

    .line 40
    sget-object v1, Lzm0;->a:LAm0;

    .line 41
    invoke-virtual {v1, v15}, LAm0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    iput-object v1, v6, LWl0;->g:Ljava/lang/String;

    :cond_9
    :goto_7
    move-object/from16 v4, v31

    const/4 v3, 0x0

    .line 43
    :goto_8
    array-length v1, v4

    const/16 v20, 0x0

    if-ge v3, v1, :cond_c

    const-string v21, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    move-object v1, v12

    move-object v2, v7

    move/from16 v25, v3

    move-object/from16 v3, v21

    move-object v13, v4

    move-object/from16 v4, v23

    move v5, v14

    move-object/from16 v21, v6

    move-object v6, v15

    move-object/from16 v26, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v18

    move-object/from16 v27, v9

    move/from16 v9, v16

    move-object v10, v0

    move-object/from16 v28, v15

    const/4 v15, 0x1

    move/from16 v11, v25

    .line 44
    invoke-virtual/range {v1 .. v11}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lpm0;

    move-result-object v1

    .line 45
    aget-object v2, v13, v25

    if-eqz v22, :cond_a

    move-object/from16 v33, v20

    goto :goto_9

    .line 46
    :cond_a
    iget-object v3, v2, Lorg/chromium/chrome/browser/notifications/ActionInfo;->b:Landroid/graphics/Bitmap;

    move-object/from16 v33, v3

    .line 47
    :goto_9
    iget v3, v2, Lorg/chromium/chrome/browser/notifications/ActionInfo;->c:I

    if-ne v3, v15, :cond_b

    .line 48
    iget-object v3, v2, Lorg/chromium/chrome/browser/notifications/ActionInfo;->a:Ljava/lang/String;

    .line 49
    iget-object v1, v1, Lpm0;->a:Landroid/app/PendingIntent;

    .line 50
    iget-object v2, v2, Lorg/chromium/chrome/browser/notifications/ActionInfo;->d:Ljava/lang/String;

    const/16 v36, 0x1

    move-object/from16 v32, v21

    move-object/from16 v34, v3

    move-object/from16 v35, v1

    move-object/from16 v37, v2

    .line 51
    invoke-virtual/range {v32 .. v37}, LWl0;->a(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ILjava/lang/String;)V

    goto :goto_a

    .line 52
    :cond_b
    iget-object v2, v2, Lorg/chromium/chrome/browser/notifications/ActionInfo;->a:Ljava/lang/String;

    .line 53
    iget-object v1, v1, Lpm0;->a:Landroid/app/PendingIntent;

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v32, v21

    move-object/from16 v34, v2

    move-object/from16 v35, v1

    .line 54
    invoke-virtual/range {v32 .. v37}, LWl0;->a(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ILjava/lang/String;)V

    :goto_a
    add-int/lit8 v3, v25, 0x1

    move-object v4, v13

    move-object/from16 v6, v21

    move-object/from16 v7, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    const/4 v5, -0x1

    const/16 v8, 0x18

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x5

    goto :goto_8

    :cond_c
    move-object v13, v4

    move-object/from16 v21, v6

    move-object/from16 v27, v9

    move-object/from16 v28, v15

    const/4 v15, 0x1

    .line 55
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 56
    invoke-static {v1}, LJ/N;->M7q2vzjr(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 57
    sget-object v3, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->e:[I

    goto :goto_b

    :cond_d
    move-object/from16 v3, v19

    .line 58
    :goto_b
    array-length v2, v3

    if-eqz v17, :cond_e

    move-object/from16 v5, v21

    const/4 v10, 0x0

    goto :goto_d

    :cond_e
    if-gtz v2, :cond_10

    if-nez v1, :cond_f

    goto :goto_c

    :cond_f
    move-object/from16 v5, v21

    const/4 v10, -0x1

    goto :goto_d

    :cond_10
    :goto_c
    const/4 v10, -0x3

    move-object/from16 v5, v21

    .line 59
    :goto_d
    iput v10, v5, LWl0;->r:I

    .line 60
    array-length v1, v3

    add-int/2addr v1, v15

    new-array v2, v1, [J

    const/4 v4, 0x0

    .line 61
    :goto_e
    array-length v6, v3

    if-ge v4, v6, :cond_11

    add-int/lit8 v6, v4, 0x1

    .line 62
    aget v4, v3, v4

    int-to-long v7, v4

    aput-wide v7, v2, v6

    move v4, v6

    goto :goto_e

    .line 63
    :cond_11
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v5, LWl0;->s:[J

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 65
    sget-object v1, LnP0;->b:LnP0;

    if-nez v1, :cond_12

    .line 66
    new-instance v1, LnP0;

    invoke-direct {v1}, LnP0;-><init>()V

    sput-object v1, LnP0;->b:LnP0;

    .line 67
    :cond_12
    sget-object v7, LnP0;->b:LnP0;

    const/4 v6, -0x1

    if-eqz v7, :cond_13

    .line 68
    new-instance v8, LkP0;

    move-object v1, v8

    move-object v2, v7

    move-object v3, v5

    move-object v4, v0

    move-object/from16 v5, v23

    invoke-direct/range {v1 .. v6}, LkP0;-><init>(LnP0;LWl0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    iget-object v1, v7, LnP0;->a:LGf1;

    .line 70
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 71
    invoke-virtual {v1, v2, v0, v8}, LGf1;->a(Landroid/content/Context;Ljava/lang/String;LFf1;)V

    goto/16 :goto_19

    .line 72
    :cond_13
    throw v20

    .line 73
    :cond_14
    invoke-virtual {v12}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a()Ls20;

    move-result-object v0

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls20;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 74
    invoke-virtual {v12}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a()Ls20;

    move-result-object v2

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, -0x1

    .line 75
    sget-object v8, Lnm0;->a:Lom0;

    if-eqz v2, :cond_15

    .line 76
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f13041f

    .line 78
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    new-instance v4, Lh20;

    invoke-direct {v4, v0}, Lh20;-><init>(Landroid/net/Uri;)V

    .line 80
    iget-object v9, v2, Ls20;->a:LSi;

    invoke-virtual {v4}, Lh20;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lq20;

    move-object v1, v11

    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v8}, Lq20;-><init>(Ls20;Ljava/lang/String;Lh20;LWl0;Ljava/lang/String;ILom0;)V

    invoke-virtual {v9, v0, v10, v11}, LSi;->a(Landroid/net/Uri;Ljava/lang/String;LQi;)Z

    goto/16 :goto_19

    .line 81
    :cond_15
    throw v20

    .line 82
    :cond_16
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x5

    if-ne v14, v2, :cond_17

    .line 84
    const-class v3, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    .line 85
    :cond_17
    const-class v3, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_f
    if-ne v14, v2, :cond_18

    .line 86
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_10

    .line 87
    :cond_18
    invoke-static/range {v28 .. v28}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :goto_10
    if-ne v14, v2, :cond_19

    const/16 v2, 0xa

    .line 88
    invoke-static {v2}, LuC0;->e(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "category"

    .line 89
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_19
    invoke-static {v0, v3, v4}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v3, v23

    move-object/from16 v4, v28

    const/4 v6, -0x1

    .line 91
    invoke-virtual {v12, v3, v4, v6}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    const/4 v7, 0x0

    .line 92
    invoke-static {v0, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 93
    array-length v0, v13

    if-lez v0, :cond_1c

    if-eqz v27, :cond_1a

    const/4 v0, 0x1

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    .line 94
    :goto_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_1b

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1d

    const/4 v2, 0x5

    const/16 v29, 0x0

    goto :goto_14

    :cond_1d
    const v10, 0x7f0802bd

    const/4 v2, 0x5

    const v29, 0x7f0802bd

    :goto_14
    if-ne v14, v2, :cond_1e

    const v0, 0x7f13042a

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1e
    if-eqz v0, :cond_1f

    const v0, 0x7f13042b

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_1f
    const v0, 0x7f130474

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_15
    new-instance v1, LVl0;

    invoke-static {v0}, LWl0;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    const/16 v33, 0x0

    const/16 v34, 0xc

    const/16 v32, 0x0

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v34}, LVl0;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;ILjava/lang/String;I)V

    iput-object v1, v5, LWl0;->q:LVl0;

    .line 99
    new-instance v0, Lcm0;

    const/4 v1, 0x5

    if-ne v14, v1, :cond_20

    .line 100
    invoke-static {}, Llx0;->a()I

    move-result v1

    goto :goto_16

    :cond_20
    const/4 v1, 0x7

    .line 101
    :goto_16
    invoke-direct {v0, v1, v3, v6}, Lcm0;-><init>(ILjava/lang/String;I)V

    .line 102
    invoke-virtual {v5, v0}, LWl0;->a(Lcm0;)LOl0;

    move-result-object v0

    .line 103
    invoke-static {}, LFN0;->a()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, LnU;->b(Ljava/lang/Object;)LnU;

    move-result-object v1

    goto :goto_18

    .line 104
    :cond_21
    invoke-static {v15}, LD01;->a(I)LF01;

    move-result-object v1

    .line 105
    invoke-interface {v1}, LF01;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static/range {v20 .. v20}, LnU;->b(Ljava/lang/Object;)LnU;

    move-result-object v1

    goto :goto_17

    .line 106
    :cond_22
    new-instance v2, LnU;

    invoke-direct {v2}, LnU;-><init>()V

    .line 107
    new-instance v3, LEN0;

    invoke-direct {v3, v2}, LEN0;-><init>(LnU;)V

    invoke-interface {v1, v3}, LF01;->a(LE01;)V

    move-object v1, v2

    .line 108
    :goto_17
    sget-object v2, LCN0;->a:LkU;

    if-eqz v1, :cond_23

    .line 109
    new-instance v3, LnU;

    invoke-direct {v3}, LnU;-><init>()V

    .line 110
    new-instance v4, LfU;

    invoke-direct {v4, v2, v3}, LfU;-><init>(LkU;LnU;)V

    invoke-virtual {v1, v4}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 111
    new-instance v2, LgU;

    invoke-direct {v2, v3}, LgU;-><init>(LnU;)V

    .line 112
    invoke-virtual {v1, v2}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 113
    new-instance v1, LDN0;

    invoke-direct {v1, v0}, LDN0;-><init>(LOl0;)V

    .line 114
    invoke-virtual {v3, v1}, LnU;->a(LlU;)LnU;

    move-result-object v1

    .line 115
    :goto_18
    new-instance v2, Lfm0;

    invoke-direct {v2, v12, v0, v14}, Lfm0;-><init>(Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;LOl0;I)V

    invoke-virtual {v1, v2}, LnU;->b(Lorg/chromium/base/Callback;)V

    :goto_19
    return-void

    .line 116
    :cond_23
    throw v20

    .line 117
    :cond_24
    throw v20
.end method
