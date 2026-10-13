.class public LdV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LnU0;


# instance fields
.field public final a:Landroid/accounts/AccountManager;

.field public final b:LWT;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LdV0;->b:LWT;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, LdV0;->a:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public a()[Landroid/accounts/Account;
    .locals 5

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Ldm;->d:Ldm;

    .line 3
    invoke-virtual {v1, v0}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p0}, LdV0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/accounts/Account;

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, LdV0;->a:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 8
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 9
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Signin.AndroidGetAccountsTime_AccountManager"

    .line 10
    invoke-static {v0, v3, v4}, LfV;->c(Ljava/lang/String;J)V

    .line 11
    :goto_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 13
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Signin.AndroidGetAccountsTimeUiThread_AccountManager"

    .line 14
    invoke-static {v0, v3, v4}, LfV;->c(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    return-object v2

    .line 15
    :cond_4
    new-instance v2, LLU0;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    sget-object v4, Ldm;->d:Ldm;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Can\'t use Google Play Services: %s"

    .line 18
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, LLU0;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public b()Z
    .locals 4

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.GET_ACCOUNTS"

    .line 3
    invoke-static {v0, v3, v1, v2}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
