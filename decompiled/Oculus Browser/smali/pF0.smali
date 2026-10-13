.class public LpF0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:LpF0;


# instance fields
.field public final a:LKU0;

.field public final b:Lorg/chromium/chrome/browser/signin/SigninManager;

.field public final c:Lorg/chromium/components/signin/AccountTrackerService;

.field public final d:Lorg/chromium/components/signin/OAuth2TokenService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LpF0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 3
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    iput-object v0, p0, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    .line 4
    invoke-static {}, LHE0;->a()Lorg/chromium/components/signin/AccountTrackerService;

    move-result-object v0

    iput-object v0, p0, LpF0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 7
    invoke-static {v0}, LJ/N;->Mnk8Br3x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/OAuth2TokenService;

    .line 8
    iput-object v0, p0, LpF0;->d:Lorg/chromium/components/signin/OAuth2TokenService;

    .line 9
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    iput-object v0, p0, LpF0;->a:LKU0;

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefs_sync_accounts_changed"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-static {v0, v1, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static a(Landroid/accounts/Account;)Z
    .locals 4

    .line 29
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 32
    invoke-virtual {v3, p0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b()LpF0;
    .locals 2

    .line 1
    sget-object v0, LpF0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LpF0;->f:LpF0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LpF0;

    invoke-direct {v1}, LpF0;-><init>()V

    sput-object v1, LpF0;->f:LpF0;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, LpF0;->f:LpF0;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "prefs_sync_accounts_changed"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d()V
    .locals 16

    const-string v0, "SigninHelper"

    .line 1
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "prefs_sync_account_renamed"

    const/4 v3, 0x0

    .line 2
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v1

    invoke-virtual {v1}, LKU0;->a()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    const-string v5, "prefs_sync_account_rename_event_index"

    const/4 v6, 0x0

    .line 5
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object v8, v1

    move v7, v4

    :goto_0
    const/4 v9, 0x1

    .line 6
    :try_start_0
    sget-object v10, LzT;->a:Landroid/content/Context;

    const-string v11, "Failed to get change events"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    :try_start_1
    invoke-static {v10, v7, v8}, Ldj;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 8
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/auth/AccountChangeEvent;

    .line 10
    iget v14, v13, Lcom/google/android/gms/auth/AccountChangeEvent;->z:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    .line 11
    iget-object v13, v13, Lcom/google/android/gms/auth/AccountChangeEvent;->B:Ljava/lang/String;

    .line 12
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcj; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v10, v12, v6

    .line 14
    invoke-static {v0, v11, v12}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v10

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v10, v12, v6

    .line 15
    invoke-static {v0, v11, v12}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v11, :cond_4

    .line 18
    :try_start_3
    invoke-static {v11}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v8

    invoke-static {v8}, LpF0;->a(Landroid/accounts/Account;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v8, :cond_5

    const/4 v7, 0x0

    move-object v8, v11

    goto :goto_0

    :cond_5
    move-object v8, v11

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    .line 19
    :cond_6
    :goto_3
    :try_start_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    move-object v11, v8

    :goto_4
    move-object v8, v11

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v6

    const-string v3, "Error while looking for rename events."

    .line 20
    invoke-static {v0, v3, v9}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    if-eq v7, v4, :cond_8

    .line 24
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 25
    invoke-static {v0, v5, v7}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 5
    iget-object v0, p0, LpF0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 6
    iget-object v2, p0, LpF0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput v0, v2, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    .line 9
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v3

    new-instance v4, LCU0;

    invoke-direct {v4, v2}, LCU0;-><init>(Lorg/chromium/components/signin/AccountTrackerService;)V

    invoke-virtual {v3, v4}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/base/Callback;)V

    goto :goto_0

    .line 10
    :cond_1
    throw v1

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    iget-object v0, p0, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    new-instance v2, LlF0;

    invoke-direct {v2, p0, p1}, LlF0;-><init>(LpF0;Z)V

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, v0, Lorg/chromium/chrome/browser/signin/SigninManager;->h:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    sget-object p1, LZ01;->a:LFW;

    const-wide/16 v0, 0x0

    .line 16
    invoke-static {p1, v2, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_1
    return-void

    .line 17
    :cond_4
    throw v1

    :cond_5
    const-string v2, "MobileIdentityConsistency"

    .line 18
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    .line 19
    iget-object v3, p0, LpF0;->a:LKU0;

    invoke-virtual {v3}, LKU0;->b()Landroid/accounts/Account;

    move-result-object v3

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return-void

    .line 20
    :cond_6
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "prefs_sync_account_renamed"

    .line 21
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    .line 22
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object p1

    invoke-virtual {p1}, LKU0;->a()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAccountRename from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SigninHelper"

    invoke-static {v4, p1, v3}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, LpF0;->b:Lorg/chromium/chrome/browser/signin/SigninManager;

    new-instance v3, LmF0;

    invoke-direct {v3, p0, v1}, LmF0;-><init>(LpF0;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(ILyF0;Z)V

    return-void

    :cond_7
    if-eqz v3, :cond_8

    .line 25
    invoke-static {v3}, LpF0;->a(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    new-instance p1, LnF0;

    invoke-direct {p1, p0}, LnF0;-><init>(LpF0;)V

    .line 27
    sget-object v0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_8
    if-eqz p1, :cond_9

    .line 28
    iget-object p1, p0, LpF0;->d:Lorg/chromium/components/signin/OAuth2TokenService;

    invoke-virtual {p1}, Lorg/chromium/components/signin/OAuth2TokenService;->updateAccountList()V

    :cond_9
    return-void
.end method
