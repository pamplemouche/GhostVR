.class public final Lorg/chromium/components/signin/ChildAccountInfoFetcher;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Landroid/accounts/Account;

.field public final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->b:Ljava/lang/String;

    .line 4
    invoke-static {p4}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c:Landroid/accounts/Account;

    .line 5
    new-instance p1, LIU0;

    invoke-direct {p1, p0}, LIU0;-><init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V

    iput-object p1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->d:Landroid/content/BroadcastReceiver;

    .line 6
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 7
    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.google.android.gms.auth.ACCOUNT_SERVICES_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p4, "com.google.android.gms.auth.permission.GOOGLE_ACCOUNT_CHANGE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->a()V

    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/signin/ChildAccountInfoFetcher;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static initializeForTests()V
    .locals 1

    .line 1
    new-instance v0, LdV0;

    invoke-direct {v0}, LdV0;-><init>()V

    .line 2
    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->b(LnU0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 2
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c:Landroid/accounts/Account;

    new-instance v2, LHU0;

    invoke-direct {v2, p0}, LHU0;-><init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    new-instance v3, LuU0;

    invoke-direct {v3, v0, v1, v2}, LuU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v3, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
