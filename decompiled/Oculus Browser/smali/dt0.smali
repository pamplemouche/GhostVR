.class public Ldt0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:LEc1;

.field public final e:Let0;

.field public final f:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;LEc1;Ljava/lang/String;Let0;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldt0;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Ldt0;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Ldt0;->e:Let0;

    .line 5
    iput-object p2, p0, Ldt0;->d:LEc1;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldt0;->a:Ljava/util/List;

    .line 7
    iput-object p5, p0, Ldt0;->f:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ldt0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct0;

    .line 3
    new-instance v3, LYs0;

    invoke-direct {v3}, LYs0;-><init>()V

    .line 4
    iget v4, v2, Lct0;->b:I

    .line 5
    invoke-static {v4}, LYB0;->b(I)I

    move-result v4

    .line 6
    iput v4, v3, LYs0;->b:I

    .line 7
    iget v4, v2, Lct0;->c:I

    const/4 v5, 0x6

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v4, v8, :cond_8

    .line 8
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v4

    .line 9
    iget v10, v2, Lct0;->b:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 10
    invoke-virtual {v4}, LOT0;->c()Z

    move-result v10

    if-nez v10, :cond_0

    const v10, 0x7f130465

    .line 11
    iput v10, v3, LYs0;->d:I

    .line 12
    invoke-virtual {v4}, LOT0;->a()Landroid/content/Intent;

    move-result-object v4

    goto :goto_2

    .line 13
    :cond_0
    iget v4, v2, Lct0;->b:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Ldt0;->c:Landroid/content/Context;

    .line 14
    new-instance v10, LK3;

    invoke-direct {v10, v4}, LK3;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v10}, LK3;->a()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "AppNotificationStatusMessaging"

    .line 16
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const v10, 0x7f130466

    if-eqz v4, :cond_3

    .line 17
    iput v10, v3, LYs0;->d:I

    .line 18
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 19
    sget-object v10, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 21
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v6, :cond_2

    .line 22
    invoke-static {v4, v10}, LbT;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v11, "android.settings.ACTION_APP_NOTIFICATION_SETTINGS"

    .line 23
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "app_package"

    .line 24
    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    sget-object v10, LzT;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v11, "app_uid"

    .line 27
    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    move-object v10, v7

    goto :goto_6

    .line 28
    :cond_3
    iget v4, v2, Lct0;->b:I

    .line 29
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionsForContentSetting(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 30
    :goto_3
    array-length v12, v4

    if-ge v11, v12, :cond_6

    .line 31
    iget-object v12, p0, Ldt0;->d:LEc1;

    aget-object v13, v4, v11

    invoke-interface {v12, v13}, LEc1;->hasPermission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_7

    .line 32
    iput v10, v3, LYs0;->d:I

    .line 33
    iget v4, v2, Lct0;->b:I

    .line 34
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getAndroidPermissionsForContentSetting(I)[Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    move-object v4, v7

    goto :goto_6

    :cond_7
    move-object v4, v7

    move-object v10, v4

    .line 35
    :goto_6
    iget v11, v3, LYs0;->d:I

    if-eqz v11, :cond_8

    const v11, 0x7f0800e3

    .line 36
    iput v11, v3, LYs0;->b:I

    const v11, 0x7f06007a

    .line 37
    iput v11, v3, LYs0;->c:I

    .line 38
    new-instance v11, Lat0;

    invoke-direct {v11, p0, v4, v10}, Lat0;-><init>(Ldt0;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 39
    iput-object v11, v3, LYs0;->f:Ljava/lang/Runnable;

    .line 40
    :cond_8
    iget v4, v2, Lct0;->b:I

    if-ne v4, v6, :cond_9

    const v4, 0x7f13046f

    .line 41
    iput v4, v3, LYs0;->e:I

    .line 42
    :cond_9
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 43
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, v2, Lct0;->a:Ljava/lang/String;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 45
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x11

    invoke-virtual {v6, v10, v9, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 46
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v6, " \u2013 "

    .line 47
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    iget v6, v2, Lct0;->b:I

    if-ne v6, v5, :cond_a

    .line 49
    invoke-static {}, LA20;->a()LA20;

    move-result-object v5

    .line 50
    new-instance v6, Lh20;

    iget-object v10, p0, Ldt0;->b:Ljava/lang/String;

    invoke-direct {v6, v10}, Lh20;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v5, v5, LA20;->a:LB20;

    .line 52
    iget-object v10, v5, LB20;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v5, v6}, LB20;->a(Lh20;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_a
    if-eqz v7, :cond_b

    .line 53
    iget-object v2, p0, Ldt0;->c:Landroid/content/Context;

    const v5, 0x7f13065f

    .line 54
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v7, v5, v9

    .line 55
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 56
    :cond_b
    iget v5, v2, Lct0;->c:I

    if-eq v5, v8, :cond_d

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    const-string v5, ""

    goto :goto_7

    .line 57
    :cond_c
    iget-object v5, p0, Ldt0;->c:Landroid/content/Context;

    const v6, 0x7f130471

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 58
    :cond_d
    iget-object v5, p0, Ldt0;->c:Landroid/content/Context;

    const v6, 0x7f130470

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    :goto_7
    iget v6, v2, Lct0;->b:I

    iget-object v7, p0, Ldt0;->b:Ljava/lang/String;

    .line 60
    invoke-static {v6, v7, v9}, LJ/N;->M0_ThS1y(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 61
    iget v2, v2, Lct0;->c:I

    if-ne v2, v8, :cond_e

    .line 62
    iget-object v2, p0, Ldt0;->c:Landroid/content/Context;

    const v5, 0x7f130469

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 63
    :cond_e
    iget-object v2, p0, Ldt0;->c:Landroid/content/Context;

    const v5, 0x7f13046a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_f
    move-object v2, v5

    .line 64
    :goto_8
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    iput-object v4, v3, LYs0;->a:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    return-object v0
.end method
