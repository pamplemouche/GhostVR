.class public Lao0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static e:Lao0;

.field public static f:Ljava/lang/Object;


# instance fields
.field public final a:LWT;

.field public final b:Lorg/chromium/base/Callback;

.field public c:Llo0;

.field public d:LZn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lao0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lao0;->a:LWT;

    .line 3
    new-instance v0, LVn0;

    invoke-direct {v0, p0}, LVn0;-><init>(Lao0;)V

    iput-object v0, p0, Lao0;->b:Lorg/chromium/base/Callback;

    .line 4
    new-instance v0, LZn0;

    invoke-direct {v0}, LZn0;-><init>()V

    iput-object v0, p0, Lao0;->d:LZn0;

    return-void
.end method

.method public static c()Lao0;
    .locals 2

    .line 1
    sget-object v0, Lao0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lao0;->e:Lao0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lao0;

    invoke-direct {v1}, Lao0;-><init>()V

    sput-object v1, Lao0;->e:Lao0;

    .line 4
    :cond_0
    sget-object v1, Lao0;->e:Lao0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v1

    const-string v2, "force-show-update-menu-badge"

    invoke-virtual {v1, v2}, LwT;->c(Ljava/lang/String;)Z

    move-result v1

    .line 2
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    new-instance v3, LZn0;

    invoke-direct {v3}, LZn0;-><init>()V

    iput-object v3, v0, Lao0;->d:LZn0;

    .line 5
    iget-object v4, v0, Lao0;->c:Llo0;

    iget v5, v4, Llo0;->a:I

    const/4 v7, 0x1

    const v8, 0x7f1303dd

    const v9, 0x7f08008d

    const v10, 0x7f08008c

    const v11, 0x7f13011c

    const-string v12, "custom_summary"

    const v13, 0x7f1303dc

    const v14, 0x7f080161

    const v15, 0x7f06007a

    const v6, 0x7f06008d

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    new-instance v1, LYn0;

    invoke-direct {v1}, LYn0;-><init>()V

    iput-object v1, v3, LZn0;->a:LYn0;

    .line 7
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v3, 0x7f1303c2

    iput v3, v1, LYn0;->a:I

    .line 8
    iput v6, v1, LYn0;->b:I

    const v3, 0x7f130623

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LYn0;->c:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iput v14, v1, LYn0;->d:I

    .line 11
    iput v15, v1, LYn0;->e:I

    .line 12
    iput-boolean v7, v1, LYn0;->f:Z

    goto/16 :goto_1

    .line 13
    :pswitch_1
    new-instance v1, LYn0;

    invoke-direct {v1}, LYn0;-><init>()V

    iput-object v1, v3, LZn0;->a:LYn0;

    .line 14
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v3, 0x7f1303c3

    iput v3, v1, LYn0;->a:I

    .line 15
    iput v6, v1, LYn0;->b:I

    const v3, 0x7f1303c4

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LYn0;->c:Ljava/lang/String;

    .line 17
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v2, 0x7f08023d

    iput v2, v1, LYn0;->d:I

    .line 18
    iput v15, v1, LYn0;->e:I

    .line 19
    iput-boolean v7, v1, LYn0;->f:Z

    goto/16 :goto_1

    .line 20
    :pswitch_2
    new-instance v1, LYn0;

    invoke-direct {v1}, LYn0;-><init>()V

    iput-object v1, v3, LZn0;->a:LYn0;

    .line 21
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v2, 0x7f1303c1

    iput v2, v1, LYn0;->a:I

    const v2, 0x7f060095

    .line 22
    iput v2, v1, LYn0;->b:I

    goto/16 :goto_1

    .line 23
    :pswitch_3
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 24
    invoke-static {v3}, LJ/N;->M2IVcSFq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v4, v0, Lao0;->c:Llo0;

    iget-object v4, v4, Llo0;->d:Ljava/lang/String;

    .line 26
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v7

    or-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LXn0;

    invoke-direct {v3}, LXn0;-><init>()V

    iput-object v3, v1, LZn0;->b:LXn0;

    .line 28
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->b:LXn0;

    iput v11, v1, LXn0;->a:I

    .line 29
    iput v10, v1, LXn0;->b:I

    .line 30
    iput v9, v1, LXn0;->c:I

    .line 31
    :cond_0
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LYn0;

    invoke-direct {v3}, LYn0;-><init>()V

    iput-object v3, v1, LZn0;->a:LYn0;

    .line 32
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iput v13, v1, LYn0;->a:I

    .line 33
    iput v6, v1, LYn0;->b:I

    .line 34
    invoke-static {v12}, LSn0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    iput-object v3, v1, LYn0;->c:Ljava/lang/String;

    .line 36
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iget-object v1, v1, LYn0;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    .line 38
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LYn0;->c:Ljava/lang/String;

    .line 39
    :cond_1
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iput v14, v1, LYn0;->d:I

    .line 40
    iput v15, v1, LYn0;->e:I

    .line 41
    iput-boolean v7, v1, LYn0;->f:Z

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 42
    throw v1

    .line 43
    :pswitch_4
    iget-object v3, v4, Llo0;->d:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v1, v3

    .line 44
    sget-object v3, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 45
    iget-object v3, v3, Lorg/chromium/base/BuildInfo;->e:Ljava/lang/String;

    iget-object v5, v0, Lao0;->c:Llo0;

    iget-object v5, v5, Llo0;->d:Ljava/lang/String;

    .line 46
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v7

    or-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 47
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LXn0;

    invoke-direct {v3}, LXn0;-><init>()V

    iput-object v3, v1, LZn0;->b:LXn0;

    .line 48
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->b:LXn0;

    const v3, 0x7f13011b

    iput v3, v1, LXn0;->a:I

    const v3, 0x7f08012c

    .line 49
    iput v3, v1, LXn0;->b:I

    const v3, 0x7f08012f

    .line 50
    iput v3, v1, LXn0;->c:I

    .line 51
    :cond_4
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LYn0;

    invoke-direct {v3}, LYn0;-><init>()V

    iput-object v3, v1, LZn0;->a:LYn0;

    .line 52
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v3, 0x7f1303de

    iput v3, v1, LYn0;->a:I

    const v3, 0x7f06008c

    .line 53
    iput v3, v1, LYn0;->b:I

    const v3, 0x7f1303df

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LYn0;->c:Ljava/lang/String;

    .line 55
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    const v2, 0x7f08012a

    iput v2, v1, LYn0;->d:I

    .line 56
    iput-boolean v4, v1, LYn0;->f:Z

    goto :goto_1

    .line 57
    :pswitch_5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 58
    invoke-static {v3}, LJ/N;->M2IVcSFq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    iget-object v4, v0, Lao0;->c:Llo0;

    iget-object v4, v4, Llo0;->d:Ljava/lang/String;

    .line 60
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v7

    or-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 61
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LXn0;

    invoke-direct {v3}, LXn0;-><init>()V

    iput-object v3, v1, LZn0;->b:LXn0;

    .line 62
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->b:LXn0;

    iput v11, v1, LXn0;->a:I

    .line 63
    iput v10, v1, LXn0;->b:I

    .line 64
    iput v9, v1, LXn0;->c:I

    .line 65
    :cond_5
    iget-object v1, v0, Lao0;->d:LZn0;

    new-instance v3, LYn0;

    invoke-direct {v3}, LYn0;-><init>()V

    iput-object v3, v1, LZn0;->a:LYn0;

    .line 66
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iput v13, v1, LYn0;->a:I

    const v3, 0x7f0600b4

    .line 67
    iput v3, v1, LYn0;->b:I

    const v3, 0x7f08008b

    .line 68
    iput v3, v1, LYn0;->d:I

    .line 69
    iput-boolean v7, v1, LYn0;->f:Z

    .line 70
    invoke-static {v12}, LSn0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    iput-object v3, v1, LYn0;->c:Ljava/lang/String;

    .line 72
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    iget-object v1, v1, LYn0;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    iget-object v1, v0, Lao0;->d:LZn0;

    iget-object v1, v1, LZn0;->a:LYn0;

    .line 74
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LYn0;->c:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 75
    throw v1

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lao0;->a:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lao0;->c:Llo0;

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LWn0;

    invoke-direct {v1, p0, p1}, LWn0;-><init>(Lao0;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 79
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    .line 80
    :cond_1
    sget-object p1, Ljo0;->a:Lmo0;

    .line 81
    iget-object v0, p0, Lao0;->b:Lorg/chromium/base/Callback;

    invoke-virtual {p1, v0}, Lmo0;->a(Lorg/chromium/base/Callback;)Z

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {v0}, LJ/N;->MOIPdnGt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lao0;->c:Llo0;

    iget v0, v0, Llo0;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x2

    const-string v4, "GoogleUpdate.MenuItem.ActionTakenAfterItemClicked"

    .line 4
    invoke-static {v4, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0, v3}, LJ/N;->MrsaIr$J(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-void

    .line 7
    :cond_3
    throw v1
.end method
