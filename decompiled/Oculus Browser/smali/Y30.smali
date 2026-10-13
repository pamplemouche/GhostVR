.class public LY30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;


# instance fields
.field public final a:Ll40;

.field public final b:I

.field public c:Z


# direct methods
.method public constructor <init>(Ll40;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LY30;->a:Ll40;

    .line 3
    iput p2, p0, LY30;->b:I

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 5
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 7
    invoke-static {p0}, LJ/N;->MWAcU8Kr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->h:Z

    const/4 v4, 0x3

    const v5, 0x7f130239

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v3, :cond_13

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {}, LFc0;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v0, LY30;->b:I

    if-nez v9, :cond_4

    .line 14
    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LY30;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 15
    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, LFO0;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 16
    new-instance v9, LW30;

    invoke-direct {v9, v4}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v9, v0, LY30;->a:Ll40;

    check-cast v9, LjH0;

    .line 18
    iget-object v10, v9, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 19
    iget-boolean v10, v10, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez v10, :cond_2

    if-eqz v9, :cond_1

    .line 20
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 21
    invoke-static {v9}, LJ/N;->MXdDobzR(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 22
    new-instance v9, LW30;

    invoke-direct {v9, v7}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    throw v6

    .line 24
    :cond_1
    throw v6

    .line 25
    :cond_2
    :goto_0
    iget-object v9, v0, LY30;->a:Ll40;

    check-cast v9, LjH0;

    if-eqz v9, :cond_3

    .line 26
    sget-object v10, Lpl0;->y:Lpl0;

    .line 27
    iget-object v9, v9, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v9}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v9

    .line 28
    invoke-virtual {v10, v9}, Lpl0;->a(Landroid/app/Activity;)Z

    .line 29
    invoke-static {}, Lq30;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 30
    new-instance v9, LW30;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 31
    :cond_3
    throw v6

    .line 32
    :cond_4
    :goto_1
    iget-object v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 33
    invoke-static {v9}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 34
    iget-object v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 35
    invoke-static {v9}, LFO0;->e(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 36
    new-instance v9, LW30;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 39
    iget-boolean v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-nez v9, :cond_5

    .line 40
    new-instance v9, LW30;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_5
    invoke-static {}, LFc0;->a()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 42
    iget-object v9, v0, LY30;->a:Ll40;

    check-cast v9, LjH0;

    .line 43
    iget-object v9, v9, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 44
    iget-boolean v9, v9, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez v9, :cond_6

    .line 45
    iget-object v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 46
    invoke-static {v9}, LFO0;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 47
    new-instance v9, LW30;

    const/16 v10, 0x9

    invoke-direct {v9, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_6
    new-instance v9, LL40;

    const v10, 0x7f13024c

    const v11, 0x7f0b0109

    invoke-direct {v9, v10, v11, v8}, LL40;-><init>(IIZ)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v9, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 50
    invoke-static {v9}, LFO0;->e(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x13

    const-string v11, "vnd.android.cursor.dir/contact"

    const-string v12, "android.intent.action.INSERT"

    const/16 v13, 0x12

    const-string v14, "android.intent.action.VIEW"

    if-eqz v9, :cond_c

    .line 51
    iget-object v9, v0, LY30;->a:Ll40;

    check-cast v9, LjH0;

    if-eqz v9, :cond_b

    .line 52
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "tel:"

    .line 53
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v7, v9, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 55
    iget-object v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 56
    invoke-virtual {v7, v15}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 57
    new-instance v7, LW30;

    const/16 v9, 0x11

    invoke-direct {v7, v9}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_7
    iget-object v7, v0, LY30;->a:Ll40;

    check-cast v7, LjH0;

    if-eqz v7, :cond_a

    .line 59
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "sms:"

    .line 60
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v7, v7, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 62
    iget-object v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 63
    invoke-virtual {v7, v9}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 64
    new-instance v7, LW30;

    invoke-direct {v7, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_8
    iget-object v7, v0, LY30;->a:Ll40;

    check-cast v7, LjH0;

    if-eqz v7, :cond_9

    .line 66
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v7, v7, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 69
    iget-object v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 70
    invoke-virtual {v7, v9}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 71
    new-instance v7, LW30;

    invoke-direct {v7, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_9
    throw v6

    .line 73
    :cond_a
    throw v6

    .line 74
    :cond_b
    throw v6

    .line 75
    :cond_c
    :goto_2
    iget-object v7, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 76
    invoke-static {v7}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 77
    iget-object v7, v0, LY30;->a:Ll40;

    check-cast v7, LjH0;

    if-eqz v7, :cond_f

    .line 78
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "mailto:test@example.com"

    .line 79
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    iget-object v7, v7, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 81
    iget-object v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 82
    invoke-virtual {v7, v9}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 83
    new-instance v7, LW30;

    invoke-direct {v7, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_d
    iget-object v7, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 85
    invoke-static {v7}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v0, LY30;->a:Ll40;

    .line 86
    check-cast v7, LjH0;

    if-eqz v7, :cond_e

    .line 87
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v7, v7, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 90
    iget-object v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 91
    invoke-virtual {v7, v9}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 92
    new-instance v7, LW30;

    invoke-direct {v7, v10}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    :cond_e
    throw v6

    .line 94
    :cond_f
    throw v6

    .line 95
    :cond_10
    :goto_3
    iget-object v7, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 96
    invoke-static {v7}, LFO0;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 97
    iget-object v7, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 98
    invoke-static {v7}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 99
    :cond_11
    new-instance v7, LW30;

    const/16 v9, 0x14

    invoke-direct {v7, v9}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    .line 101
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_13
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_2f

    .line 103
    invoke-static {}, LFc0;->a()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v11, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 106
    invoke-static {v11}, LFO0;->c(Ljava/lang/String;)Z

    move-result v11

    .line 107
    iget v12, v0, LY30;->b:I

    if-ne v12, v8, :cond_14

    iget-object v12, v0, LY30;->a:Ll40;

    .line 108
    check-cast v12, LjH0;

    .line 109
    iget-object v12, v12, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v12}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 110
    iget-object v13, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 111
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 112
    new-instance v12, LW30;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_14
    iget v12, v0, LY30;->b:I

    if-nez v12, :cond_15

    .line 114
    new-instance v12, LW30;

    const/16 v13, 0xd

    invoke-direct {v12, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_15
    invoke-static {}, Lq30;->a()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 116
    new-instance v12, LW30;

    const/16 v13, 0xe

    invoke-direct {v12, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v11, :cond_17

    .line 117
    new-instance v12, LW30;

    const/16 v13, 0xb

    invoke-direct {v12, v13}, LW30;-><init>(I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_4

    :cond_17
    const/4 v12, 0x0

    .line 118
    :goto_4
    iget v13, v0, LY30;->b:I

    if-eq v13, v8, :cond_19

    if-nez v13, :cond_18

    goto :goto_6

    :cond_18
    :goto_5
    const/4 v6, 0x4

    goto/16 :goto_11

    .line 119
    :cond_19
    :goto_6
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v13

    const-string v14, "ContextMenuSearchWithGoogleLens"

    .line 120
    invoke-static {v14}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v15

    if-eqz v11, :cond_2c

    .line 121
    invoke-virtual {v13}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 122
    iget-wide v6, v13, Lorg/chromium/components/search_engines/TemplateUrlService;->c:J

    .line 123
    invoke-static {v6, v7, v13}, LJ/N;->MpyUpqFi(JLjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 124
    invoke-virtual {v13}, Lorg/chromium/components/search_engines/TemplateUrlService;->a()Lorg/chromium/components/search_engines/TemplateUrl;

    move-result-object v6

    if-eqz v6, :cond_2c

    .line 125
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result v6

    if-nez v6, :cond_2c

    if-eqz v15, :cond_2b

    .line 126
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v15, "8.19"

    const-string v17, ""

    if-eqz v7, :cond_1a

    move-object v6, v15

    goto :goto_8

    .line 127
    :cond_1a
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 128
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 129
    invoke-static {v6, v10}, LOD0;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v6

    .line 130
    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1b

    goto :goto_7

    .line 131
    :cond_1b
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_1c

    goto :goto_7

    .line 132
    :cond_1c
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    :goto_7
    move-object/from16 v6, v17

    .line 133
    :goto_8
    invoke-virtual {v13}, Lorg/chromium/components/search_engines/TemplateUrlService;->b()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 134
    invoke-static {v8}, LX30;->a(I)V

    goto/16 :goto_f

    .line 135
    :cond_1d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 136
    invoke-static {v9}, LX30;->a(I)V

    goto/16 :goto_f

    .line 137
    :cond_1e
    invoke-static {v14}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "minAgsaVersionName"

    .line 138
    invoke-static {v14, v7}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_9

    :cond_1f
    move-object v15, v7

    goto :goto_9

    :cond_20
    move-object/from16 v15, v17

    .line 140
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 141
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_c

    :cond_21
    const/4 v7, -0x1

    const-string v13, "\\."

    .line 142
    invoke-virtual {v6, v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {v15, v13, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 144
    array-length v13, v6

    array-length v15, v7

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v13, :cond_24

    .line 145
    aget-object v17, v6, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 146
    aget-object v17, v7, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v9, v8, :cond_22

    goto :goto_c

    :cond_22
    if-le v9, v8, :cond_23

    goto :goto_b

    :cond_23
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto :goto_a

    .line 147
    :cond_24
    array-length v6, v6

    array-length v7, v7

    if-ge v6, v7, :cond_25

    goto :goto_c

    :cond_25
    :goto_b
    const/4 v6, 0x0

    goto :goto_d

    :cond_26
    :goto_c
    const/4 v6, 0x1

    :goto_d
    if-eqz v6, :cond_27

    .line 148
    invoke-static {v4}, LX30;->a(I)V

    goto :goto_f

    .line 149
    :cond_27
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_28

    const/4 v6, 0x1

    goto :goto_e

    :cond_28
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_29

    const/4 v6, 0x5

    .line 150
    invoke-static {v6}, LX30;->a(I)V

    :goto_f
    const/4 v6, 0x0

    goto :goto_10

    .line 151
    :cond_29
    invoke-static {v10}, LX30;->a(I)V

    const/4 v6, 0x1

    :goto_10
    if-eqz v6, :cond_2b

    const-string v6, "useSearchByImageText"

    .line 152
    invoke-static {v14, v6, v10}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x1

    .line 153
    iput-boolean v6, v0, LY30;->c:Z

    .line 154
    new-instance v6, LW30;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, LW30;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 155
    :cond_2a
    new-instance v6, LW30;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, LW30;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2b
    const/16 v7, 0xf

    .line 156
    new-instance v6, LW30;

    invoke-direct {v6, v7}, LW30;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2c
    if-eqz v15, :cond_18

    const/4 v6, 0x4

    .line 157
    invoke-static {v6}, LX30;->a(I)V

    .line 158
    :goto_11
    new-instance v7, LL40;

    const v8, 0x7f13024b

    const v9, 0x7f0b0108

    invoke-direct {v7, v8, v9, v10}, LL40;-><init>(IIZ)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 159
    invoke-static {v7}, LD01;->a(I)LF01;

    move-result-object v8

    .line 160
    invoke-interface {v8}, LF01;->a()Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_12

    .line 161
    :cond_2d
    invoke-static {v10}, LX30;->b(I)V

    if-nez v11, :cond_2e

    const/4 v7, 0x2

    .line 162
    invoke-static {v7}, LX30;->b(I)V

    .line 163
    :cond_2e
    :goto_12
    new-instance v7, Landroid/util/Pair;

    const v8, 0x7f130238

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2f
    const/4 v6, 0x4

    const/4 v12, 0x0

    .line 164
    :goto_13
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    if-eqz v3, :cond_30

    .line 165
    invoke-static {}, LFc0;->a()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 166
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->k:Z

    if-eqz v3, :cond_30

    .line 167
    iget-object v3, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 168
    invoke-static {v3}, LFO0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v7, LW30;

    const/16 v8, 0x15

    invoke-direct {v7, v8}, LW30;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v7, Landroid/util/Pair;

    const v8, 0x7f13024d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_30
    iget v3, v0, LY30;->b:I

    if-eqz v3, :cond_3a

    invoke-static {}, LFc0;->a()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_15

    .line 175
    :cond_31
    iget v3, v0, LY30;->b:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_32

    const/4 v3, 0x0

    goto :goto_14

    .line 176
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    .line 177
    :goto_14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 178
    :goto_15
    iget v7, v0, LY30;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_33

    .line 179
    new-instance v7, LW30;

    const/16 v8, 0x16

    invoke-direct {v7, v8}, LW30;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_33
    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    .line 180
    :try_start_1
    new-instance v7, Ljava/net/URI;

    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 181
    sget-object v8, LFO0;->a:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 182
    invoke-virtual/range {p3 .. p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LY30;->a(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v7, :cond_34

    const/4 v7, 0x1

    goto :goto_16

    :catch_1
    :cond_34
    const/4 v7, 0x0

    .line 183
    :goto_16
    sget-object v8, Lay0;->a:Lcy0;

    const-string v9, "applink.chrome_default_browser"

    .line 184
    invoke-virtual {v8, v9, v10}, Lcy0;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_38

    if-eqz v7, :cond_38

    .line 185
    iget-object v7, v0, LY30;->a:Ll40;

    check-cast v7, LjH0;

    if-eqz v7, :cond_37

    .line 186
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v7

    if-eqz v7, :cond_36

    .line 187
    invoke-static {v7}, LJ/N;->MXdDobzR(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 188
    new-instance v7, LW30;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, LW30;-><init>(I)V

    invoke-interface {v3, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 189
    :cond_35
    new-instance v7, LW30;

    invoke-direct {v7, v10}, LW30;-><init>(I)V

    invoke-interface {v3, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_17

    :cond_36
    const/4 v7, 0x0

    .line 190
    throw v7

    :cond_37
    const/4 v7, 0x0

    .line 191
    throw v7

    :cond_38
    if-eqz v7, :cond_39

    .line 192
    new-instance v7, LW30;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, LW30;-><init>(I)V

    invoke-interface {v3, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    :cond_39
    :goto_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 194
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    const/4 v3, 0x1

    .line 196
    invoke-static {v3}, LD01;->a(I)LF01;

    move-result-object v3

    .line 197
    invoke-interface {v3}, LF01;->a()Z

    move-result v3

    if-eqz v3, :cond_3d

    if-nez v12, :cond_3c

    .line 198
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-eqz v1, :cond_3b

    const/4 v4, 0x4

    .line 199
    :cond_3b
    invoke-static {v4}, LX30;->b(I)V

    goto :goto_18

    :cond_3c
    const/4 v1, 0x5

    .line 200
    invoke-static {v1}, LX30;->b(I)V

    :cond_3d
    :goto_18
    return-object v2
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LY30;->a:Ll40;

    check-cast v0, LjH0;

    .line 2
    iget-object v1, v0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v0, v0, LjH0;->c:LSG0;

    .line 3
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const v7, 0x7f0b0100

    const-string v8, "MobileNewTabOpened"

    const/4 v9, 0x0

    if-ne v3, v7, :cond_1

    .line 201
    invoke-static {v2, v4}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 202
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 203
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->g:Lh11;

    .line 204
    check-cast v1, LjH0;

    if-eqz v1, :cond_0

    .line 205
    invoke-static {v8}, LhV;->a(Ljava/lang/String;)V

    const-string v7, "LinkOpenedInNewTab"

    .line 206
    invoke-static {v7}, LhV;->a(Ljava/lang/String;)V

    .line 207
    new-instance v7, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 208
    invoke-direct {v7, v3, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 209
    iput-object v2, v7, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 210
    iget-object v2, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v2}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v2

    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 211
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 212
    check-cast v2, LrI0;

    .line 213
    iget-object v2, v2, LrI0;->g:LcI0;

    invoke-interface {v2, v3}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v2

    invoke-virtual {v2, v7, v5, v1}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_5

    .line 214
    :cond_0
    throw v9

    :cond_1
    const v7, 0x7f0b00fe

    const/4 v10, 0x4

    if-ne v3, v7, :cond_3

    .line 215
    invoke-static {v2, v6}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 216
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    if-eqz v1, :cond_2

    .line 217
    invoke-static {v8}, LhV;->a(Ljava/lang/String;)V

    .line 218
    iget-object v3, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v3}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v3

    new-instance v5, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 219
    invoke-direct {v5, v2, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 220
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    check-cast v3, LrI0;

    .line 221
    iget-object v2, v3, LrI0;->g:LcI0;

    invoke-interface {v2, v6}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v2

    invoke-virtual {v2, v5, v10, v1}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_5

    .line 222
    :cond_2
    throw v9

    :cond_3
    const v7, 0x7f0b0101

    if-ne v3, v7, :cond_5

    const/16 v1, 0xd

    .line 223
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 224
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 225
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->g:Lh11;

    .line 226
    check-cast v1, LjH0;

    .line 227
    new-instance v5, LiJ0;

    iget-object v7, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 228
    iget-boolean v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 229
    invoke-direct {v5, v7}, LiJ0;-><init>(Z)V

    .line 230
    new-instance v7, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 231
    invoke-direct {v7, v3, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 232
    iput-object v2, v7, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 233
    iget-object v2, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 234
    iget v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 235
    new-instance v2, LhJ0;

    invoke-direct {v2, v7}, LhJ0;-><init>(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    invoke-virtual {v5, v2, v1, v4}, LiJ0;->a(LhJ0;IZ)Landroid/content/Intent;

    .line 236
    sget-object v1, Lpl0;->y:Lpl0;

    if-eqz v1, :cond_4

    goto/16 :goto_5

    .line 237
    :cond_4
    throw v9

    :cond_5
    const v7, 0x7f0b00fd

    if-ne v3, v7, :cond_6

    const/16 v1, 0x18

    .line 238
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 239
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 240
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    .line 241
    check-cast v1, LjH0;

    invoke-virtual {v1, v3, v2}, LjH0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const v7, 0x7f0b00f7

    if-ne v3, v7, :cond_8

    const/4 v1, 0x7

    .line 242
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 243
    iget-object v1, v0, LY30;->a:Ll40;

    .line 244
    iget-object v3, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 245
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->g:Lh11;

    .line 246
    check-cast v1, LjH0;

    if-eqz v1, :cond_7

    .line 247
    new-instance v5, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 248
    invoke-direct {v5, v3, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 249
    iput v4, v5, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    .line 250
    iput-object v2, v5, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 251
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    goto/16 :goto_5

    .line 252
    :cond_7
    throw v9

    :cond_8
    const v7, 0x7f0b00f9

    if-ne v3, v7, :cond_a

    const/16 v1, 0x8

    .line 253
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 254
    iget-object v1, v0, LY30;->a:Ll40;

    .line 255
    iget-object v3, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 256
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->g:Lh11;

    .line 257
    check-cast v1, LjH0;

    .line 258
    invoke-virtual {v1, v3}, LjH0;->a(Ljava/lang/String;)Z

    move-result v7

    .line 259
    new-instance v8, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 260
    invoke-direct {v8, v3, v4}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    if-eqz v7, :cond_9

    .line 261
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v3

    .line 262
    iget-wide v9, v3, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->b:J

    .line 263
    invoke-static {v9, v10, v3}, LJ/N;->M7tPC6la(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 264
    :cond_9
    iput-object v9, v8, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 265
    iput-object v2, v8, Lorg/chromium/content_public/browser/LoadUrlParams;->e:Lh11;

    .line 266
    iget-object v2, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeActivity;->getTabModelSelector()LpI0;

    move-result-object v2

    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 267
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 268
    check-cast v2, LrI0;

    .line 269
    iget-object v2, v2, LrI0;->g:LcI0;

    invoke-interface {v2, v3}, LcI0;->getTabCreator(Z)LbI0;

    move-result-object v2

    invoke-virtual {v2, v8, v5, v1}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto/16 :goto_5

    :cond_a
    const v7, 0x7f0b00f8

    if-ne v3, v7, :cond_c

    const/16 v1, 0x19

    .line 270
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 271
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 273
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 274
    invoke-static {v1, v9, v9}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_b
    iget-object v3, v0, LY30;->a:Ll40;

    .line 276
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 277
    check-cast v3, LjH0;

    invoke-virtual {v3, v2, v1}, LjH0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    const v7, 0x7f0b00f4

    const/4 v8, 0x2

    if-ne v3, v7, :cond_d

    .line 278
    invoke-static {v2, v8}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 279
    iget-object v1, v0, LY30;->a:Ll40;

    .line 280
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->e:Ljava/lang/String;

    .line 281
    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v4}, LjH0;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_d
    const v7, 0x7f0b00f2

    const/high16 v8, 0x10000000

    const-string v11, "android.intent.action.VIEW"

    if-ne v3, v7, :cond_f

    const/16 v1, 0x10

    .line 282
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 283
    iget-object v1, v0, LY30;->a:Ll40;

    .line 284
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 285
    check-cast v1, LjH0;

    if-eqz v1, :cond_e

    .line 286
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-static {v1, v3}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 290
    :cond_e
    throw v9

    :cond_f
    const v7, 0x7f0b0107

    if-ne v3, v7, :cond_13

    .line 291
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 292
    invoke-static {v1}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xe

    .line 293
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 294
    iget-object v1, v0, LY30;->a:Ll40;

    .line 295
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 296
    check-cast v1, LjH0;

    if-eqz v1, :cond_10

    .line 297
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-static {v1, v3}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 301
    :cond_10
    throw v9

    .line 302
    :cond_11
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 303
    invoke-static {v1}, LFO0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v1, 0x11

    .line 304
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 305
    iget-object v1, v0, LY30;->a:Ll40;

    .line 306
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 307
    check-cast v1, LjH0;

    if-eqz v1, :cond_12

    .line 308
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "sms:"

    .line 309
    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, LFO0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 310
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-static {v1, v3}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 311
    :cond_12
    throw v9

    :cond_13
    const v7, 0x7f0b00f1

    if-ne v3, v7, :cond_17

    const/16 v1, 0xf

    .line 312
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 313
    iget-object v1, v0, LY30;->a:Ll40;

    .line 314
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 315
    check-cast v1, LjH0;

    if-eqz v1, :cond_16

    .line 316
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "vnd.android.cursor.dir/contact"

    .line 318
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {v2}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 320
    invoke-static {v2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    const-string v4, "email"

    .line 321
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 322
    :cond_14
    invoke-static {v2}, LFO0;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 323
    invoke-static {v2}, LFO0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_15
    :goto_0
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-static {v1, v3}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 325
    :cond_16
    throw v9

    :cond_17
    const v7, 0x7f0b00f3

    const/4 v12, 0x3

    if-ne v3, v7, :cond_19

    .line 326
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 327
    invoke-static {v1}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 328
    invoke-static {v2, v12}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 329
    iget-object v1, v0, LY30;->a:Ll40;

    .line 330
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 331
    invoke-static {v2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v4}, LjH0;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 332
    :cond_18
    iget-object v1, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 333
    invoke-static {v1}, LFO0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v1, 0x12

    .line 334
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 335
    iget-object v1, v0, LY30;->a:Ll40;

    .line 336
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 337
    invoke-static {v2}, LFO0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v4}, LjH0;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_19
    const v7, 0x7f0b00f5

    if-ne v3, v7, :cond_1a

    .line 338
    invoke-static {v2, v10}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 339
    iget-object v1, v0, LY30;->a:Ll40;

    .line 340
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    .line 341
    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v6}, LjH0;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1a
    const v7, 0x7f0b0102

    const/4 v10, 0x6

    if-ne v3, v7, :cond_1b

    .line 342
    invoke-static {v2, v10}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 343
    iget-object v3, v0, LY30;->a:Ll40;

    .line 344
    iget-object v5, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 345
    check-cast v3, LjH0;

    invoke-virtual {v3, v5, v4}, LjH0;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 346
    iget-object v3, v0, LY30;->a:Ll40;

    .line 347
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 348
    check-cast v3, LjH0;

    .line 349
    invoke-virtual {v3, v2}, LjH0;->a(Ljava/lang/String;)Z

    move-result v2

    .line 350
    invoke-virtual {v1, v4, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(ZZ)V

    goto/16 :goto_5

    :cond_1b
    const v7, 0x7f0b0104

    if-ne v3, v7, :cond_1c

    const/16 v3, 0xb

    .line 351
    invoke-static {v2, v3}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 352
    iget-object v3, v0, LY30;->a:Ll40;

    .line 353
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 354
    check-cast v3, LjH0;

    invoke-virtual {v3, v2, v4}, LjH0;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 355
    invoke-virtual {v1, v4, v4}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(ZZ)V

    goto/16 :goto_5

    :cond_1c
    const v7, 0x7f0b0103

    if-ne v3, v7, :cond_22

    .line 356
    invoke-static {v2, v5}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 357
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->e:Ljava/lang/String;

    .line 358
    iget-object v3, v0, LY30;->a:Ll40;

    check-cast v3, LjH0;

    invoke-virtual {v3, v2, v6}, LjH0;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 359
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 360
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    const-string v3, "text"

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v12, 0x1

    goto :goto_1

    :cond_1d
    const-string v3, "image"

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v12, 0x2

    goto :goto_1

    :cond_1e
    const-string v3, "audio"

    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_1

    :cond_1f
    const-string v3, "video"

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v12, 0x4

    goto :goto_1

    :cond_20
    const-string v3, "application/pdf"

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v12, 0x5

    goto :goto_1

    :cond_21
    const/4 v12, 0x0

    :goto_1
    const-string v2, "ContextMenu.SaveLinkType"

    .line 366
    invoke-static {v2, v12, v10}, LfV;->a(Ljava/lang/String;II)V

    .line 367
    invoke-virtual {v1, v6, v4}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(ZZ)V

    goto/16 :goto_5

    :cond_22
    const v5, 0x7f0b0109

    if-ne v3, v5, :cond_25

    const/16 v3, 0x17

    .line 368
    invoke-static {v2, v3}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 369
    iget-object v13, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    .line 370
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 371
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 372
    invoke-static {v1}, LZS0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, " "

    .line 374
    invoke-static {v9, v2, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_23
    move-object v15, v1

    move-object/from16 v16, v15

    goto :goto_3

    :cond_24
    :goto_2
    move-object/from16 v16, v1

    move-object v15, v9

    .line 375
    :goto_3
    new-instance v1, LWD0;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v24}, LWD0;-><init>(ZZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/Uri;Landroid/net/Uri;LRD0;Ljava/lang/String;Ljava/lang/Runnable;LUD0;)V

    .line 376
    invoke-static {v1}, LTD0;->a(LWD0;)V

    goto/16 :goto_5

    :cond_25
    const v5, 0x7f0b0106

    const/16 v7, 0x1c

    if-ne v3, v5, :cond_27

    .line 377
    invoke-static {v2, v7}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 378
    iget-object v2, v0, LY30;->a:Ll40;

    check-cast v2, LjH0;

    .line 379
    iget-object v2, v2, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 380
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz v1, :cond_26

    .line 381
    new-instance v3, Le40;

    invoke-direct {v3, v1, v2}, Le40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Z)V

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(Lorg/chromium/base/Callback;)V

    goto/16 :goto_5

    :cond_26
    throw v9

    :cond_27
    const v5, 0x7f0b0105

    if-ne v3, v5, :cond_2b

    .line 382
    iget-boolean v3, v0, LY30;->c:Z

    if-eqz v3, :cond_29

    .line 383
    invoke-static {v2, v7}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 384
    iget-object v2, v0, LY30;->a:Ll40;

    check-cast v2, LjH0;

    .line 385
    iget-object v2, v2, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 386
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz v1, :cond_28

    .line 387
    new-instance v3, Le40;

    invoke-direct {v3, v1, v2}, Le40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Z)V

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(Lorg/chromium/base/Callback;)V

    goto/16 :goto_5

    :cond_28
    throw v9

    :cond_29
    const/16 v3, 0x9

    .line 388
    invoke-static {v2, v3}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 389
    iget-wide v2, v1, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->x:J

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_2a

    goto/16 :goto_5

    .line 390
    :cond_2a
    invoke-static {v2, v3, v1}, LJ/N;->MgBIqwFU(JLjava/lang/Object;)V

    goto/16 :goto_5

    :cond_2b
    const v5, 0x7f0b0108

    if-ne v3, v5, :cond_2d

    const/16 v3, 0xc

    .line 391
    invoke-static {v2, v3}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    if-eqz v1, :cond_2c

    .line 392
    new-instance v2, Lf40;

    invoke-direct {v2, v1}, Lf40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(Lorg/chromium/base/Callback;)V

    goto/16 :goto_5

    :cond_2c
    throw v9

    :cond_2d
    const v1, 0x7f0b00fb

    if-ne v3, v1, :cond_32

    const/16 v1, 0x16

    .line 393
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 394
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 395
    iget-object v2, v2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a:Ljava/lang/String;

    .line 396
    check-cast v1, LjH0;

    if-eqz v1, :cond_31

    .line 397
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 398
    new-instance v7, Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v7, v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 399
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    invoke-static {v7, v4}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 402
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-static {v7, v4}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto/16 :goto_5

    :cond_2e
    if-eqz v2, :cond_2f

    .line 404
    :try_start_0
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 405
    invoke-static {v2}, LFO0;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 406
    invoke-static {v7}, LqZ;->m(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_4

    :catch_0
    nop

    :cond_2f
    :goto_4
    if-nez v4, :cond_36

    .line 407
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_30

    move-object v1, v5

    .line 408
    :cond_30
    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 409
    :cond_31
    throw v9

    :cond_32
    const v1, 0x7f0b00ff

    if-ne v3, v1, :cond_33

    const/16 v1, 0x13

    .line 410
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 411
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v4}, LjH0;->a(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_33
    const v1, 0x7f0b00fc

    if-ne v3, v1, :cond_34

    const/16 v1, 0x14

    .line 412
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 413
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    invoke-virtual {v1, v2, v6}, LjH0;->a(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_34
    const v1, 0x7f0b00fa

    if-ne v3, v1, :cond_36

    const/16 v1, 0x15

    .line 414
    invoke-static {v2, v1}, LX30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)V

    .line 415
    iget-object v1, v0, LY30;->a:Ll40;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v2

    check-cast v1, LjH0;

    if-eqz v1, :cond_35

    .line 416
    new-instance v3, Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.user_opt_out"

    .line 418
    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    iget-object v1, v1, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    invoke-static {v1, v3}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_5

    .line 420
    :cond_35
    throw v9

    :cond_36
    :goto_5
    return v6
.end method
