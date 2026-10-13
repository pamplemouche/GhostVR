.class public final Lorg/chromium/components/signin/OAuth2TokenService;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEU0;


# instance fields
.field public final a:J

.field public final b:Lorg/chromium/components/signin/AccountTrackerService;

.field public final c:Lorg/chromium/components/signin/AccountManagerFacade;

.field public d:Z


# direct methods
.method public constructor <init>(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/components/signin/OAuth2TokenService;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/components/signin/OAuth2TokenService;->b:Lorg/chromium/components/signin/AccountTrackerService;

    .line 4
    iput-object p4, p0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, p0}, Lorg/chromium/components/signin/AccountTrackerService;->a(LEU0;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method

.method public static create(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/AccountManagerFacade;)Lorg/chromium/components/signin/OAuth2TokenService;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/signin/OAuth2TokenService;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/components/signin/OAuth2TokenService;-><init>(JLorg/chromium/components/signin/AccountTrackerService;Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-object v0
.end method

.method private getAccessTokenFromNative(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "OAuth2TokenService"

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Username is null"

    .line 1
    invoke-static {v2, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-virtual {v3, p1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Account not found for provided username."

    .line 3
    invoke-static {v2, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object p1, v0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    new-instance p1, LNU0;

    invoke-direct {p1, p3, p4}, LNU0;-><init>(J)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string v0, "oauth2:"

    .line 5
    invoke-static {v0, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v0, LOU0;

    invoke-direct {v0, p0, p3, p4}, LOU0;-><init>(Lorg/chromium/components/signin/OAuth2TokenService;J)V

    .line 7
    iget-object p3, p0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 8
    new-instance p4, LPU0;

    invoke-direct {p4, p3, p1, p2, v0}, LPU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;LUU0;)V

    invoke-static {p4}, LTU0;->a(LRU0;)V

    return-void
.end method

.method public static getAccounts()[Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "google.services.stored_accounts"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private hasOAuth2RefreshToken(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 2
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v4

    .line 5
    invoke-virtual {v4, p1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-static {v3, v0}, Lorg/chromium/components/signin/OAuth2TokenService;->a(Ljava/lang/Throwable;LqU;)V

    return v1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 8
    invoke-static {p1, v0}, Lorg/chromium/components/signin/OAuth2TokenService;->a(Ljava/lang/Throwable;LqU;)V

    throw v1
.end method

.method public static setAccounts([Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object p0, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "google.services.stored_accounts"

    .line 4
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 4
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v0

    invoke-virtual {v0}, LKU0;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/chromium/components/signin/OAuth2TokenService;->getSystemAccountNames()[Ljava/lang/String;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 8
    :cond_2
    iget-wide v1, p0, Lorg/chromium/components/signin/OAuth2TokenService;->a:J

    .line 9
    invoke-static {v1, v2, p0, v0}, LJ/N;->Mcxh53qM(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/components/signin/OAuth2TokenService;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/components/signin/OAuth2TokenService;->a()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/components/signin/OAuth2TokenService;->d:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public getSystemAccountNames()[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-virtual {v1}, Lorg/chromium/components/signin/AccountManagerFacade;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0}, Lorg/chromium/components/signin/OAuth2TokenService;->a(Ljava/lang/Throwable;LqU;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 6
    invoke-static {v1, v0}, Lorg/chromium/components/signin/OAuth2TokenService;->a(Ljava/lang/Throwable;LqU;)V

    throw v2
.end method

.method public invalidateAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, LQU0;

    invoke-direct {v0, p0, p1}, LQU0;-><init>(Lorg/chromium/components/signin/OAuth2TokenService;Ljava/lang/String;)V

    invoke-static {v0}, LTU0;->a(LRU0;)V

    return-void
.end method

.method public updateAccountList()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/components/signin/OAuth2TokenService;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/components/signin/OAuth2TokenService;->d:Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/signin/OAuth2TokenService;->a()V

    return-void
.end method
