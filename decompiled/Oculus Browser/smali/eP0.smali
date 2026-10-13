.class public final synthetic LeP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvf1;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;

.field public final b:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LeP0;->a:Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;

    iput-object p2, p0, LeP0;->b:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, LeP0;->a:Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;

    iget-object v2, v0, LeP0;->b:Landroid/content/pm/PackageInfo;

    .line 1
    iget-wide v3, v1, Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v9, ""

    .line 3
    invoke-static/range {v8 .. v14}, LjP0;->a(Ljava/lang/String;Ljava/lang/String;IZZLfP0;Ljava/lang/String;)LjP0;

    move-result-object v3

    .line 4
    invoke-static {v3}, LhP0;->a(LY10;)LhP0;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 5
    :cond_1
    sget-object v4, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 6
    invoke-virtual {v3}, LzP0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a(Ljava/lang/String;)LwP0;

    move-result-object v4

    const-string v7, "Not updatable"

    const/4 v8, 0x0

    if-eqz v4, :cond_7

    .line 7
    iget-object v9, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v10, "last_check_web_manifest_update_time"

    invoke-interface {v9, v10, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 8
    iget-object v11, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v12, "last_update_request_complete_time"

    invoke-interface {v11, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 9
    iget-object v11, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v15, "relax_updates"

    invoke-interface {v11, v15, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 10
    invoke-virtual {v4}, LwP0;->e()Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget-object v7, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v15, "update_scheduled"

    invoke-interface {v7, v15, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "Scheduled"

    :goto_0
    move-object v7, v4

    goto :goto_2

    .line 12
    :cond_3
    iget-object v7, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v15, "should_force_update"

    invoke-interface {v7, v15, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v4, "Pending"

    goto :goto_0

    .line 13
    :cond_4
    iget-object v7, v4, LwP0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v7, v12, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    cmp-long v7, v15, v5

    if-nez v7, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .line 14
    :cond_5
    iget-object v4, v4, LwP0;->b:Landroid/content/SharedPreferences;

    const-string v5, "did_last_update_request_succeed"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_6

    const-string v4, "Succeeded"

    goto :goto_0

    :cond_6
    const-string v4, "Failed"

    goto :goto_0

    :goto_2
    move-object/from16 v40, v7

    move-wide/from16 v33, v9

    move/from16 v37, v11

    move-wide/from16 v35, v13

    goto :goto_3

    :cond_7
    move-wide/from16 v33, v5

    move-wide/from16 v35, v33

    move-object/from16 v40, v7

    const/16 v37, 0x0

    .line 15
    :goto_3
    iget-wide v4, v1, Lorg/chromium/chrome/browser/webapps/WebApkHandlerDelegate;->a:J

    .line 16
    invoke-virtual {v3}, LzP0;->b()LxP0;

    move-result-object v1

    iget-object v1, v1, LxP0;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, LzP0;->f()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, LhP0;->j()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, LzP0;->c()Ljava/lang/String;

    move-result-object v20

    .line 18
    invoke-virtual {v3}, LhP0;->h()LdP0;

    move-result-object v6

    iget v6, v6, LdP0;->b:I

    .line 19
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3}, LzP0;->g()Ljava/lang/String;

    move-result-object v23

    .line 20
    invoke-virtual {v3}, LzP0;->e()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v3}, LhP0;->i()Ljava/lang/String;

    move-result-object v25

    .line 21
    invoke-virtual {v3}, LhP0;->h()LdP0;

    move-result-object v7

    iget-object v7, v7, LdP0;->d:Ljava/lang/String;

    .line 22
    invoke-virtual {v3}, LzP0;->a()I

    move-result v27

    .line 23
    invoke-virtual {v3}, LzP0;->b()LxP0;

    move-result-object v8

    iget v8, v8, LxP0;->h:I

    .line 24
    invoke-virtual {v3}, LzP0;->b()LxP0;

    move-result-object v9

    iget-object v9, v9, LxP0;->j:Ljava/lang/Integer;

    const-wide v10, 0x80000000L

    if-eqz v9, :cond_8

    .line 25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v12, v9

    move-wide/from16 v29, v12

    goto :goto_4

    :cond_8
    move-wide/from16 v29, v10

    .line 26
    :goto_4
    invoke-virtual {v3}, LzP0;->b()LxP0;

    move-result-object v3

    iget-object v3, v3, LxP0;->k:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    move-wide/from16 v31, v9

    goto :goto_5

    :cond_9
    move-wide/from16 v31, v10

    :goto_5
    move-wide v15, v4

    move-object/from16 v17, v1

    move/from16 v21, v6

    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v28, v8

    move-object/from16 v38, p2

    move/from16 v39, p1

    .line 28
    invoke-static/range {v15 .. v40}, LJ/N;->MXibFIFs(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJJZLjava/lang/String;ZLjava/lang/String;)V

    :goto_6
    return-void
.end method
