.class public final Lko0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Runnable;

.field public c:Llo0;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lko0;->a:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lko0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 16

    const-string v0, "force-update-menu-type"

    .line 1
    invoke-static {v0}, LSn0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 3
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

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "inline_update_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "inline_update_dialog_canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "inline_update_download_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "inline_update_install_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "inline_update_dialog_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "unsupported_os_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "update_available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4
    :pswitch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 5
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 6
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 7
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :goto_2
    move-object v0, v6

    :goto_3
    const-string v1, "android_os_unsupported_chrome_version"

    if-nez v0, :cond_2

    move-object v9, v6

    goto :goto_5

    .line 8
    :cond_2
    new-instance v9, Llo0;

    invoke-direct {v9}, Llo0;-><init>()V

    .line 9
    iput-boolean v7, v9, Llo0;->e:Z

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Llo0;->a:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 12
    :goto_4
    iput-boolean v3, v9, Llo0;->f:Z

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_5

    .line 14
    :cond_4
    sget-object v0, Lay0;->a:Lcy0;

    .line 15
    invoke-virtual {v0, v1, v6}, Lcy0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Llo0;->d:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v0, "market-url-for-testing"

    .line 16
    invoke-static {v0}, LSn0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v0, v9, Llo0;->b:Ljava/lang/String;

    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    goto/16 :goto_f

    :cond_7
    move-object/from16 v0, p0

    .line 18
    iget-object v3, v0, Lko0;->a:Landroid/content/Context;

    .line 19
    new-instance v9, Llo0;

    invoke-direct {v9}, Llo0;-><init>()V

    .line 20
    invoke-static {}, LJn0;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v12, "latestVersion"

    if-eqz v10, :cond_8

    goto :goto_7

    .line 21
    :cond_8
    sget-object v10, Loo0;->a:Lpo0;

    if-eqz v10, :cond_15

    .line 22
    sget-object v10, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 23
    iget-object v10, v10, Lorg/chromium/base/BuildInfo;->e:Ljava/lang/String;

    .line 24
    invoke-static {}, LKn0;->b()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 25
    invoke-interface {v13, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-static {v10}, Lno0;->a(Ljava/lang/String;)Lno0;

    move-result-object v10

    .line 27
    invoke-static {v13}, Lno0;->a(Ljava/lang/String;)Lno0;

    move-result-object v13

    if-eqz v10, :cond_c

    if-nez v13, :cond_9

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v2, :cond_c

    .line 28
    iget-object v15, v10, Lno0;->a:[I

    aget v2, v15, v14

    iget-object v4, v13, Lno0;->a:[I

    aget v6, v4, v14

    if-ge v2, v6, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    .line 29
    :cond_a
    aget v2, v15, v14

    aget v4, v4, v14

    if-le v2, v4, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_13

    .line 30
    invoke-static {}, LJn0;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Llo0;->b:Ljava/lang/String;

    .line 31
    sget-object v2, Loo0;->a:Lpo0;

    if-eqz v2, :cond_12

    .line 32
    invoke-static {}, LKn0;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    invoke-interface {v2, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, v9, Llo0;->c:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 36
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    .line 38
    div-long/2addr v10, v12

    long-to-int v2, v10

    const/16 v4, 0xc8

    const/16 v6, 0x64

    const-string v12, "GoogleUpdate.InfoBar.InternalStorageSizeAvailable"

    .line 39
    invoke-static {v12, v2, v7, v4, v6}, LfV;->b(Ljava/lang/String;IIII)V

    const/16 v4, 0x3e8

    const/16 v6, 0x32

    const-string v12, "GoogleUpdate.InfoBar.DeviceFreeSpace"

    .line 40
    invoke-static {v12, v2, v7, v4, v6}, LfV;->b(Ljava/lang/String;IIII)V

    .line 41
    invoke-static {}, LwT;->c()LwT;

    move-result-object v2

    const-string v4, "min_required_storage_for_update_mb"

    invoke-virtual {v2, v4}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v2, "UpdateMenuItem"

    .line 43
    invoke-static {v2, v4}, LJ/N;->MOVY9QtZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    :cond_d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    .line 45
    :cond_e
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    :goto_9
    const/4 v2, -0x1

    :goto_a
    if-ne v2, v5, :cond_f

    goto :goto_b

    :cond_f
    int-to-long v4, v2

    cmp-long v2, v10, v4

    if-ltz v2, :cond_10

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_11

    .line 46
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_d

    :catch_1
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    .line 47
    :goto_e
    iput v7, v9, Llo0;->a:I

    .line 48
    sget-object v2, Lay0;->a:Lcy0;

    .line 49
    iget-object v2, v2, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 50
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    .line 52
    throw v2

    :cond_13
    const/4 v2, 0x0

    .line 53
    invoke-static {}, Lpo0;->a()Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x2

    .line 54
    iput v3, v9, Llo0;->a:I

    .line 55
    sget-object v3, Lay0;->a:Lcy0;

    .line 56
    invoke-virtual {v3, v1, v2}, Lcy0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Llo0;->d:Ljava/lang/String;

    goto :goto_f

    .line 57
    :cond_14
    iput v8, v9, Llo0;->a:I

    :goto_f
    return-object v9

    :cond_15
    move-object v2, v6

    .line 58
    throw v2

    nop

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Llo0;

    .line 2
    iput-object p1, p0, Lko0;->c:Llo0;

    .line 3
    sget-object p1, LZ01;->a:LFW;

    iget-object v0, p0, Lko0;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
