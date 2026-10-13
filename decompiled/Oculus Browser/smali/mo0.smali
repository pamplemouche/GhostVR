.class public Lmo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public A:Llo0;

.field public B:Z

.field public final w:LWT;

.field public final x:Lto0;

.field public final y:Lko0;

.field public final z:LMo0;


# direct methods
.method public synthetic constructor <init>(Lio0;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lmo0;->w:LWT;

    .line 3
    new-instance p1, Lgo0;

    invoke-direct {p1, p0}, Lgo0;-><init>(Lmo0;)V

    const-string v0, "force-update-menu-type"

    .line 4
    invoke-static {v0}, LSn0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "inline_update_download_canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "inline_update_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v1, "inline_update_dialog_canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "inline_update_download_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "inline_update_install_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "inline_update_dialog_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "unsupported_os_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "update_available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v9, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x7

    goto :goto_2

    :cond_3
    const/4 v2, 0x6

    goto :goto_2

    :cond_4
    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    :goto_2
    if-eqz v2, :cond_8

    .line 7
    new-instance v0, Lxo0;

    new-instance v1, Lso0;

    invoke-direct {v1, v2}, Lso0;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lxo0;-><init>(Ljava/lang/Runnable;LHA;)V

    goto :goto_3

    :cond_8
    const-string v0, "InlineUpdateFlow"

    .line 8
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9
    new-instance v0, Lxo0;

    .line 10
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 11
    new-instance v2, LJA;

    new-instance v3, LLA;

    invoke-direct {v3, v1}, LLA;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v1}, LJA;-><init>(LLA;Landroid/content/Context;)V

    .line 12
    invoke-direct {v0, p1, v2}, Lxo0;-><init>(Ljava/lang/Runnable;LHA;)V

    goto :goto_3

    .line 13
    :cond_9
    new-instance v0, Luo0;

    invoke-direct {v0, p1}, Luo0;-><init>(Ljava/lang/Runnable;)V

    .line 14
    :goto_3
    iput-object v0, p0, Lmo0;->x:Lto0;

    .line 15
    new-instance p1, Lko0;

    new-instance v0, Lho0;

    invoke-direct {v0, p0}, Lho0;-><init>(Lmo0;)V

    invoke-direct {p1, v0}, Lko0;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lmo0;->y:Lko0;

    .line 16
    new-instance p1, LMo0;

    invoke-direct {p1}, LMo0;-><init>()V

    iput-object p1, p0, Lmo0;->z:LMo0;

    .line 17
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x47d2e92d -> :sswitch_8
        -0x15ef2239 -> :sswitch_7
        -0xdb7b3fc -> :sswitch_6
        -0x2ba38f -> :sswitch_5
        0x33af38 -> :sswitch_4
        0x281ddcc4 -> :sswitch_3
        0x51cb66a0 -> :sswitch_2
        0x633c6cf3 -> :sswitch_1
        0x687fc760 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 19
    iget-object v0, p0, Lmo0;->y:Lko0;

    invoke-virtual {v0}, LkW;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lmo0;->x:Lto0;

    invoke-interface {v0}, Lto0;->c()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 20
    :cond_0
    iget-object v0, p0, Lmo0;->A:Llo0;

    if-nez v0, :cond_1

    new-instance v0, Llo0;

    iget-object v2, p0, Lmo0;->y:Lko0;

    .line 21
    iget-object v2, v2, Lko0;->c:Llo0;

    .line 22
    invoke-direct {v0, v2}, Llo0;-><init>(Llo0;)V

    iput-object v0, p0, Lmo0;->A:Llo0;

    .line 23
    :cond_1
    iget-object v0, p0, Lmo0;->A:Llo0;

    .line 24
    iget-boolean v2, v0, Llo0;->e:Z

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 25
    iget-boolean v0, v0, Llo0;->f:Z

    if-eqz v0, :cond_10

    .line 26
    iget-object v0, p0, Lmo0;->x:Lto0;

    invoke-interface {v0}, Lto0;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lmo0;->A:Llo0;

    iget-object v1, p0, Lmo0;->y:Lko0;

    .line 28
    iget-object v1, v1, Lko0;->c:Llo0;

    .line 29
    iget v1, v1, Llo0;->a:I

    iput v1, v0, Llo0;->a:I

    goto/16 :goto_6

    .line 30
    :cond_2
    iget-object v1, p0, Lmo0;->A:Llo0;

    iput v0, v1, Llo0;->a:I

    goto/16 :goto_6

    .line 31
    :cond_3
    iget-object v0, p0, Lmo0;->y:Lko0;

    .line 32
    iget-object v0, v0, Lko0;->c:Llo0;

    .line 33
    iget v0, v0, Llo0;->a:I

    .line 34
    iget-object v2, p0, Lmo0;->x:Lto0;

    invoke-interface {v2}, Lto0;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 35
    iget-object v6, p0, Lmo0;->A:Llo0;

    const-string v7, "InlineUpdateFlow"

    .line 36
    invoke-static {v7}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x3

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const-string v8, "flow"

    .line 37
    invoke-static {v7, v8}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, ""

    goto :goto_0

    .line 38
    :cond_5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 39
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "best_effort"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "never_show"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "intent_only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "inline_only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eqz v7, :cond_8

    if-eq v7, v5, :cond_9

    if-eq v7, v9, :cond_7

    const/4 v1, 0x3

    goto :goto_3

    :cond_7
    const/4 v1, 0x4

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    :cond_9
    :goto_3
    if-eq v1, v5, :cond_f

    if-eq v1, v9, :cond_c

    if-eq v1, v3, :cond_a

    goto :goto_5

    :cond_a
    if-eq v0, v5, :cond_b

    goto :goto_5

    :cond_b
    if-nez v2, :cond_e

    goto :goto_5

    :cond_c
    if-eq v0, v5, :cond_d

    goto :goto_5

    :cond_d
    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v0, 0x0

    .line 40
    :goto_5
    iput v0, v6, Llo0;->a:I

    .line 41
    :cond_10
    :goto_6
    iget-boolean v0, p0, Lmo0;->B:Z

    if-nez v0, :cond_15

    .line 42
    iget-object v0, p0, Lmo0;->A:Llo0;

    iget v0, v0, Llo0;->a:I

    const/4 v1, 0x7

    const-string v2, "GoogleUpdate.StartUp.State"

    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 43
    iget-object v0, p0, Lmo0;->z:LMo0;

    iget-object v1, p0, Lmo0;->A:Llo0;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 44
    iget v1, v1, Llo0;->a:I

    if-eq v1, v3, :cond_11

    const/4 v3, 0x5

    if-eq v1, v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_12

    goto :goto_8

    .line 45
    :cond_12
    iget-object v1, v0, LMo0;->a:LDo0;

    if-eqz v1, :cond_13

    .line 46
    new-instance v2, LnU;

    invoke-direct {v2}, LnU;-><init>()V

    .line 47
    iget-object v1, v1, LDo0;->a:LCW;

    new-instance v3, Lzo0;

    invoke-direct {v3, v2}, Lzo0;-><init>(LnU;)V

    invoke-interface {v1, v3}, LCW;->a(Ljava/lang/Runnable;)V

    .line 48
    new-instance v1, LLo0;

    invoke-direct {v1, v0}, LLo0;-><init>(LMo0;)V

    invoke-virtual {v2, v1}, LnU;->b(Lorg/chromium/base/Callback;)V

    .line 49
    :goto_8
    iput-boolean v5, p0, Lmo0;->B:Z

    goto :goto_9

    .line 50
    :cond_13
    throw v2

    .line 51
    :cond_14
    throw v2

    .line 52
    :cond_15
    :goto_9
    invoke-virtual {p0}, Lmo0;->b()V

    :cond_16
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61b4126e -> :sswitch_3
        -0x457c9c91 -> :sswitch_2
        -0xd87f30 -> :sswitch_1
        0x60e31fa7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(ILandroid/app/Activity;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lmo0;->A:Llo0;

    if-eqz v0, :cond_1

    iget v0, v0, Llo0;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GoogleUpdate.Inline.UI.Start.Source"

    .line 10
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 11
    iget-object v0, p0, Lmo0;->z:LMo0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LMo0;->a(II)V

    .line 12
    iget-object p1, p0, Lmo0;->x:Lto0;

    invoke-interface {p1, p2}, Lto0;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;IZ)Z
    .locals 4

    .line 13
    iget-object v0, p0, Lmo0;->A:Llo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Llo0;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Llo0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 15
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmo0;->z:LMo0;

    invoke-virtual {v0, v1, p2}, LMo0;->a(II)V

    .line 16
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v2, p0, Lmo0;->A:Llo0;

    iget-object v2, v2, Llo0;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p3, :cond_2

    const/high16 p3, 0x10000000

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public a(Lorg/chromium/base/Callback;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmo0;->w:LWT;

    .line 2
    iget-object v0, v0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lmo0;->w:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lmo0;->A:Llo0;

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lfo0;

    invoke-direct {v1, p0, p1}, Lfo0;-><init>(Lmo0;Lorg/chromium/base/Callback;)V

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lmo0;->y:Lko0;

    invoke-virtual {p1}, LkW;->getStatus()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lmo0;->y:Lko0;

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 3

    .line 4
    iget-object v0, p0, Lmo0;->w:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/Callback;

    iget-object v2, p0, Lmo0;->A:Llo0;

    invoke-interface {v1, v2}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lorg/chromium/base/Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmo0;->w:LWT;

    .line 2
    iget-object v0, v0, LWT;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lmo0;->w:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    instance-of v2, v1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4
    :cond_3
    iget-object p1, p0, Lmo0;->x:Lto0;

    invoke-interface {p1, v0}, Lto0;->setEnabled(Z)V

    return-void
.end method
