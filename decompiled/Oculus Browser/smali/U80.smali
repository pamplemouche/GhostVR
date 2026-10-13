.class public abstract LU80;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;ILm90;I)Landroid/app/Notification;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lm90;->a:LbU0;

    .line 2
    invoke-static {v3}, LcU0;->a(LbU0;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    if-ne v1, v4, :cond_0

    const-string v3, "DownloadNotificationBadge"

    .line 3
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "completed_downloads"

    goto :goto_0

    :cond_0
    const-string v3, "downloads"

    .line 4
    :goto_0
    new-instance v5, Lcm0;

    .line 5
    iget-object v6, v2, Lm90;->a:LbU0;

    .line 6
    invoke-static {v6}, LcU0;->a(LbU0;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const/4 v8, 0x0

    move/from16 v9, p3

    .line 7
    invoke-direct {v5, v6, v8, v9}, Lcm0;-><init>(ILjava/lang/String;I)V

    .line 8
    invoke-static {v7, v3, v8, v5}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v3

    .line 9
    invoke-interface {v3, v7}, LPl0;->c(Z)LPl0;

    move-result-object v3

    const-string v5, "Downloads"

    .line 10
    invoke-interface {v3, v5}, LPl0;->c(Ljava/lang/String;)LPl0;

    move-result-object v3

    .line 11
    invoke-interface {v3, v7}, LPl0;->f(Z)LPl0;

    move-result-object v3

    .line 12
    iget-object v5, v2, Lm90;->a:LbU0;

    .line 13
    invoke-static {v5}, LcU0;->a(LbU0;)Z

    move-result v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    const/4 v5, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x3

    :goto_1
    const-string v13, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    const-string v14, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    const-wide/16 v15, 0x0

    const-string v8, "org.chromium.chrome.browser.download.OfflineItemsStateAtCancel"

    const/4 v6, -0x1

    if-eqz v1, :cond_f

    if-eq v1, v7, :cond_b

    if-eq v1, v4, :cond_3

    if-eq v1, v9, :cond_2

    const-string v5, ""

    const/4 v4, -0x1

    goto/16 :goto_10

    .line 14
    :cond_2
    iget v5, v2, Lm90;->r:I

    .line 15
    invoke-static {v5}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x1080082

    const v4, 0x1080082

    goto/16 :goto_10

    .line 16
    :cond_3
    iget v5, v2, Lm90;->i:I

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 17
    :goto_2
    invoke-static {v5}, LWE;->a(Z)V

    .line 18
    iget-wide v11, v2, Lm90;->q:J

    cmp-long v5, v11, v15

    if-lez v5, :cond_5

    .line 19
    iget-boolean v5, v2, Lm90;->e:Z

    if-nez v5, :cond_5

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1302d7

    new-array v11, v7, [Ljava/lang/Object;

    .line 21
    iget-wide v14, v2, Lm90;->q:J

    .line 22
    invoke-static {v0, v14, v15}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    .line 23
    invoke-virtual {v5, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1302d6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 25
    :goto_3
    iget-boolean v8, v2, Lm90;->f:Z

    if-eqz v8, :cond_9

    .line 26
    iget-object v8, v2, Lm90;->a:LbU0;

    .line 27
    invoke-static {v8}, LcU0;->a(LbU0;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "UseDownloadOfflineContentProvider"

    .line 28
    invoke-static {v8}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 29
    iget-object v8, v2, Lm90;->a:LbU0;

    .line 30
    invoke-static {v8}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-wide v11, v2, Lm90;->o:J

    const-wide/16 v14, -0x1

    cmp-long v8, v11, v14

    if-nez v8, :cond_7

    .line 32
    iget-object v8, v2, Lm90;->c:Ljava/lang/String;

    .line 33
    invoke-static {v8}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, 0x1

    .line 34
    :goto_5
    invoke-static {v8}, LWE;->a(Z)V

    .line 35
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v7, v7, [J

    .line 36
    iget-wide v11, v2, Lm90;->o:J

    aput-wide v11, v7, v10

    const-string v11, "extra_click_download_ids"

    .line 37
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 38
    iget-object v7, v2, Lm90;->c:Ljava/lang/String;

    const-string v11, "DownloadFilePath"

    .line 39
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-boolean v7, v2, Lm90;->g:Z

    const-string v11, "IsSupportedMimeType"

    .line 41
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    iget-boolean v7, v2, Lm90;->e:Z

    const-string v11, "org.chromium.chrome.browser.download.IS_OFF_THE_RECORD"

    .line 43
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v7, v2, Lm90;->a:LbU0;

    .line 45
    iget-object v7, v7, LbU0;->b:Ljava/lang/String;

    const-string v11, "org.chromium.chrome.browser.download.DownloadContentId_Id"

    .line 46
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v7, v2, Lm90;->a:LbU0;

    .line 48
    iget-object v7, v7, LbU0;->a:Ljava/lang/String;

    const-string v11, "org.chromium.chrome.browser.download.DownloadContentId_Namespace"

    .line 49
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget v7, v2, Lm90;->i:I

    const-string v11, "notification_id"

    .line 51
    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v7, v2, Lm90;->j:Ljava/lang/String;

    .line 53
    iget-object v11, v2, Lm90;->m:Ljava/lang/String;

    .line 54
    invoke-static {v8, v7, v11}, LKi0;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 55
    :cond_8
    iget-object v7, v2, Lm90;->a:LbU0;

    const-string v8, "org.chromium.chrome.browser.download.DOWNLOAD_OPEN"

    .line 56
    invoke-static {v0, v8, v7, v10}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v8

    .line 57
    :goto_6
    new-instance v7, Landroid/content/ComponentName;

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    iget v7, v2, Lm90;->i:I

    const/high16 v11, 0x8000000

    .line 61
    invoke-static {v0, v7, v8, v11}, Lpm0;->b(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v7

    invoke-interface {v3, v7}, LPl0;->b(Lpm0;)LPl0;

    .line 62
    :cond_9
    iget-object v7, v2, Lm90;->d:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_a

    .line 63
    invoke-interface {v3, v7}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    :cond_a
    const v7, 0x7f08028b

    const v4, 0x7f08028b

    goto/16 :goto_10

    .line 64
    :cond_b
    iget-object v12, v2, Lm90;->a:LbU0;

    .line 65
    invoke-static {v12}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget v12, v2, Lm90;->i:I

    if-eq v12, v6, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    .line 67
    :goto_7
    invoke-static {v12}, LWE;->a(Z)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v15, 0x7f1302db

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 69
    iget-object v15, v2, Lm90;->a:LbU0;

    .line 70
    iget-boolean v9, v2, Lm90;->e:Z

    const-string v4, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    .line 71
    invoke-static {v0, v4, v15, v9}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v4

    .line 72
    iget-object v9, v2, Lm90;->a:LbU0;

    .line 73
    iget-boolean v15, v2, Lm90;->e:Z

    .line 74
    invoke-static {v0, v14, v9, v15}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v9

    .line 75
    invoke-virtual {v9, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-interface {v3, v10}, LPl0;->f(Z)LPl0;

    move-result-object v7

    const v8, 0x7f08013a

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1302df

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 78
    iget v15, v2, Lm90;->i:I

    .line 79
    invoke-static {v0, v4, v15}, LU80;->a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;

    move-result-object v4

    .line 80
    invoke-interface {v7, v8, v14, v4, v5}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    move-result-object v4

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1302d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    iget v7, v2, Lm90;->i:I

    .line 83
    invoke-static {v0, v9, v7}, LU80;->a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;

    move-result-object v7

    const v8, 0x7f08009e

    .line 84
    invoke-interface {v4, v8, v5, v7, v11}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    .line 85
    iget-boolean v4, v2, Lm90;->e:Z

    if-nez v4, :cond_d

    .line 86
    iget-object v4, v2, Lm90;->d:Landroid/graphics/Bitmap;

    .line 87
    invoke-interface {v3, v4}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 88
    :cond_d
    iget-boolean v4, v2, Lm90;->h:Z

    if-eqz v4, :cond_e

    .line 89
    iget v4, v2, Lm90;->i:I

    .line 90
    invoke-static {v0, v9, v4}, LU80;->a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;

    move-result-object v4

    invoke-interface {v3, v4}, LPl0;->a(Lpm0;)LPl0;

    :cond_e
    const v4, 0x7f08011c

    move-object v5, v12

    goto/16 :goto_10

    .line 91
    :cond_f
    iget-object v4, v2, Lm90;->l:LfU0;

    .line 92
    invoke-static {v4}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v4, v2, Lm90;->a:LbU0;

    .line 94
    invoke-static {v4}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget v4, v2, Lm90;->i:I

    if-eq v4, v6, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    .line 96
    :goto_8
    invoke-static {v4}, LWE;->a(Z)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Lm90;->a()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 98
    iget v4, v2, Lm90;->s:I

    .line 99
    invoke-static {v4}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    move-object v5, v4

    goto :goto_b

    .line 100
    :cond_11
    iget-boolean v4, v2, Lm90;->e:Z

    if-eqz v4, :cond_12

    .line 101
    invoke-static {}, LfU0;->c()LfU0;

    move-result-object v4

    goto :goto_a

    .line 102
    :cond_12
    iget-object v4, v2, Lm90;->l:LfU0;

    .line 103
    :goto_a
    invoke-static {v4}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(LfU0;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 104
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lm90;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f08011d

    goto :goto_c

    :cond_13
    const v4, 0x1080081

    .line 105
    :goto_c
    iget-object v9, v2, Lm90;->a:LbU0;

    .line 106
    iget-boolean v6, v2, Lm90;->e:Z

    const-string v15, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    .line 107
    invoke-static {v0, v15, v9, v6}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v6

    .line 108
    iget-object v9, v2, Lm90;->a:LbU0;

    .line 109
    iget-boolean v15, v2, Lm90;->e:Z

    .line 110
    invoke-static {v0, v14, v9, v15}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v9

    .line 111
    iget v14, v2, Lm90;->s:I

    if-eqz v14, :cond_16

    if-eq v14, v7, :cond_15

    const/4 v15, 0x2

    if-eq v14, v15, :cond_14

    goto :goto_d

    :cond_14
    const/4 v14, 0x3

    .line 112
    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_d

    :cond_15
    const/4 v15, 0x2

    .line 113
    invoke-virtual {v9, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_d

    .line 114
    :cond_16
    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    :goto_d
    invoke-interface {v3, v7}, LPl0;->d(Z)LPl0;

    move-result-object v8

    .line 116
    invoke-interface {v8, v7}, LPl0;->b(I)LPl0;

    move-result-object v7

    .line 117
    invoke-interface {v7, v10}, LPl0;->f(Z)LPl0;

    move-result-object v7

    const v8, 0x7f080202

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1302da

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 119
    iget v15, v2, Lm90;->i:I

    .line 120
    invoke-static {v0, v6, v15}, LU80;->a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;

    move-result-object v6

    .line 121
    invoke-interface {v7, v8, v14, v6, v12}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    move-result-object v6

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1302d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 123
    iget v8, v2, Lm90;->i:I

    .line 124
    invoke-static {v0, v9, v8}, LU80;->a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;

    move-result-object v8

    const v9, 0x7f08009e

    .line 125
    invoke-interface {v6, v9, v7, v8, v11}, LPl0;->a(ILjava/lang/CharSequence;Lpm0;I)LPl0;

    .line 126
    iget-boolean v6, v2, Lm90;->e:Z

    if-nez v6, :cond_17

    .line 127
    iget-object v6, v2, Lm90;->d:Landroid/graphics/Bitmap;

    .line 128
    invoke-interface {v3, v6}, LPl0;->a(Landroid/graphics/Bitmap;)LPl0;

    .line 129
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lm90;->a()Z

    move-result v6

    if-nez v6, :cond_19

    .line 130
    iget-object v6, v2, Lm90;->l:LfU0;

    .line 131
    invoke-virtual {v6}, LfU0;->b()Z

    move-result v6

    const/16 v7, 0x64

    if-eqz v6, :cond_18

    const/4 v8, -0x1

    goto :goto_e

    .line 132
    :cond_18
    iget-object v8, v2, Lm90;->l:LfU0;

    .line 133
    invoke-virtual {v8}, LfU0;->a()I

    move-result v8

    .line 134
    :goto_e
    invoke-interface {v3, v7, v8, v6}, LPl0;->a(IIZ)LPl0;

    .line 135
    :cond_19
    iget-object v6, v2, Lm90;->l:LfU0;

    .line 136
    invoke-virtual {v6}, LfU0;->b()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 137
    iget-boolean v6, v2, Lm90;->e:Z

    if-nez v6, :cond_1b

    .line 138
    iget-wide v6, v2, Lm90;->p:J

    const-wide/16 v8, 0x0

    cmp-long v11, v6, v8

    if-ltz v11, :cond_1b

    .line 139
    iget-object v6, v2, Lm90;->a:LbU0;

    .line 140
    invoke-static {v6}, LcU0;->b(LbU0;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 141
    iget-wide v6, v2, Lm90;->p:J

    .line 142
    invoke-static {v0, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 143
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_1a

    .line 144
    invoke-interface {v3, v6}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    goto :goto_f

    .line 145
    :cond_1a
    invoke-interface {v3, v6}, LPl0;->b(Ljava/lang/String;)LPl0;

    .line 146
    :cond_1b
    :goto_f
    iget-wide v6, v2, Lm90;->n:J

    const-wide/16 v8, 0x0

    cmp-long v11, v6, v8

    if-lez v11, :cond_1c

    .line 147
    invoke-interface {v3, v6, v7}, LPl0;->a(J)LPl0;

    .line 148
    :cond_1c
    :goto_10
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "Chrome.NotificationBundleIconIdExtra"

    .line 149
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    invoke-interface {v3, v4}, LPl0;->c(I)LPl0;

    move-result-object v4

    invoke-interface {v4, v6}, LPl0;->a(Landroid/os/Bundle;)LPl0;

    .line 151
    iget-boolean v4, v2, Lm90;->e:Z

    if-eqz v4, :cond_1d

    .line 152
    invoke-interface {v3, v5}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    goto :goto_11

    .line 153
    :cond_1d
    invoke-interface {v3, v5}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 154
    :goto_11
    iget-object v4, v2, Lm90;->b:Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 155
    iget-boolean v5, v2, Lm90;->e:Z

    if-nez v5, :cond_1e

    const/16 v5, 0x19

    .line 156
    invoke-static {v4, v5}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 157
    :cond_1e
    iget-boolean v4, v2, Lm90;->h:Z

    if-nez v4, :cond_1f

    .line 158
    iget v4, v2, Lm90;->i:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1f

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1f

    .line 159
    iget-boolean v1, v2, Lm90;->e:Z

    const/4 v4, 0x0

    .line 160
    invoke-static {v0, v13, v4, v1}, LU80;->a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;

    move-result-object v1

    .line 161
    iget v4, v2, Lm90;->i:I

    const/high16 v5, 0x8000000

    .line 162
    invoke-static {v0, v4, v1, v5}, Lpm0;->b(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object v1

    .line 163
    invoke-interface {v3, v1}, LPl0;->b(Lpm0;)LPl0;

    .line 164
    :cond_1f
    iget-boolean v1, v2, Lm90;->e:Z

    if-eqz v1, :cond_21

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1302d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_20

    .line 167
    invoke-interface {v3, v0}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    goto :goto_12

    .line 168
    :cond_20
    invoke-interface {v3, v0}, LPl0;->b(Ljava/lang/String;)LPl0;

    goto :goto_12

    .line 169
    :cond_21
    iget-boolean v0, v2, Lm90;->k:Z

    if-eqz v0, :cond_24

    .line 170
    iget-object v0, v2, Lm90;->j:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 172
    iget-object v0, v2, Lm90;->j:Ljava/lang/String;

    .line 173
    invoke-static {v0}, LJ/N;->MNXObKbV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x28

    if-le v1, v4, :cond_22

    .line 175
    iget-object v0, v2, Lm90;->j:Ljava/lang/String;

    .line 176
    invoke-static {v0, v10}, LFO0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_23

    .line 178
    invoke-interface {v3, v0}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    goto :goto_12

    .line 179
    :cond_23
    invoke-interface {v3, v0}, LPl0;->b(Ljava/lang/String;)LPl0;

    .line 180
    :cond_24
    :goto_12
    invoke-interface {v3}, LPl0;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;LbU0;Z)Landroid/content/Intent;
    .locals 2

    .line 182
    new-instance v0, Landroid/content/ComponentName;

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, ""

    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p2, LbU0;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "org.chromium.chrome.browser.download.DownloadContentId_Id"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 187
    iget-object p1, p2, LbU0;->a:Ljava/lang/String;

    :cond_1
    const-string p2, "org.chromium.chrome.browser.download.DownloadContentId_Namespace"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "org.chromium.chrome.browser.download.IS_OFF_THE_RECORD"

    .line 188
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)Lpm0;
    .locals 1

    const/high16 v0, 0x8000000

    .line 181
    invoke-static {p0, p2, p1, v0}, Lpm0;->b(Landroid/content/Context;ILandroid/content/Intent;I)Lpm0;

    move-result-object p0

    return-object p0
.end method
