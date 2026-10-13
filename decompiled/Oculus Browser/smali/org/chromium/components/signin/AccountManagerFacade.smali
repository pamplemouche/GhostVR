.class public Lorg/chromium/components/signin/AccountManagerFacade;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final l:Ljava/util/regex/Pattern;

.field public static m:Lorg/chromium/components/signin/AccountManagerFacade;

.field public static n:Lorg/chromium/components/signin/AccountManagerFacade;

.field public static final o:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final a:LnU0;

.field public final b:LWT;

.field public c:[LhV0;

.field public d:LzU0;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Ljava/util/concurrent/CountDownLatch;

.field public final g:LdV;

.field public final h:Ljava/util/ArrayList;

.field public i:I

.field public final j:Ljava/util/ArrayList;

.field public k:LWU0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "@"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->l:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->o:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(LnU0;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->b:LWT;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->f:Ljava/util/concurrent/CountDownLatch;

    .line 5
    new-instance v0, LdV;

    const-string v2, "Signin.AndroidPopulateAccountCacheWaitingTime"

    invoke-direct {v0, v2}, LdV;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->g:LdV;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->j:Ljava/util/ArrayList;

    .line 8
    new-instance v0, LMU0;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, LMU0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    .line 11
    check-cast p1, LdV0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 12
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 13
    new-instance v3, LcV0;

    invoke-direct {v3, p1}, LcV0;-><init>(LdV0;)V

    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 15
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.PACKAGE_REPLACED"

    .line 18
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v5, "com.google.android.gms"

    .line 20
    invoke-virtual {v4, v5, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    iput-boolean v1, p1, LdV0;->c:Z

    .line 23
    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    new-instance v1, LpU0;

    invoke-direct {v1, p0}, LpU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;)V

    check-cast p1, LdV0;

    .line 24
    iget-object p1, p1, LdV0;->b:LWT;

    invoke-virtual {p1, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, LvU0;

    invoke-direct {v1, p0}, LvU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;)V

    .line 27
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {v2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    new-instance p1, LwU0;

    invoke-direct {p1, p0, v0}, LwU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;LuU0;)V

    sget-object v0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 30
    :cond_0
    throw v0
.end method

.method public static a(LnU0;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->m:Lorg/chromium/components/signin/AccountManagerFacade;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/AccountManagerFacade;-><init>(LnU0;)V

    sput-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->m:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 4
    sget-object p0, Lorg/chromium/components/signin/AccountManagerFacade;->n:Lorg/chromium/components/signin/AccountManagerFacade;

    if-eqz p0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object p0, Lorg/chromium/components/signin/AccountManagerFacade;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AccountManagerFacade is already initialized!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 2

    .line 42
    iget v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->i:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 44
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, LWU0;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4

    .line 35
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    check-cast p0, LdV0;

    const-string p2, "Auth"

    .line 36
    invoke-virtual {p0}, LdV0;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    :try_start_0
    iget-object p0, p0, LdV0;->a:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v3}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Checking features was cancelled. This should not happen."

    .line 38
    invoke-static {p2, p1, p0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "Error while checking features: "

    .line 39
    invoke-static {p2, p0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v2
.end method

.method public static b(LnU0;)V
    .locals 1

    .line 1
    new-instance v0, LqU0;

    invoke-direct {v0, p0}, LqU0;-><init>(LnU0;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    new-instance v1, LxU0;

    invoke-direct {v1, p0, v0}, LxU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;LuU0;)V

    sget-object p0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public static c(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2

    .line 1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 2

    .line 15
    iget v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/components/signin/AccountManagerFacade;->i:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, LWU0;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lorg/chromium/components/signin/AccountManagerFacade;)LzU0;
    .locals 1

    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;
    :try_end_0
    .catch LoU0; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, LdV0;

    :try_start_1
    invoke-virtual {p0}, LdV0;->a()[Landroid/accounts/Account;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 7
    new-instance v0, LzU0;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, LzU0;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch LoU0; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, LzU0;

    invoke-direct {v0, p0}, LzU0;-><init>(LoU0;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public static synthetic f()[LhV0;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "user"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v3, "RestrictAccountsToPatterns"

    .line 5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 8
    new-instance v7, LhV0;

    invoke-direct {v7, v6}, LhV0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v2, v1, [LhV0;

    .line 9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [LhV0;
    :try_end_0
    .catch LgV0; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Sync_Signin"

    const-string v2, "Can\'t get account restriction patterns"

    .line 10
    invoke-static {v1, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public static get()Lorg/chromium/components/signin/AccountManagerFacade;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/AccountManagerFacade;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 13
    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 15
    aget-object v1, v0, p1

    const-string v2, "googlemail.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "gmail.com"

    if-eqz v1, :cond_1

    .line 16
    aput-object v2, v0, p1

    .line 17
    :cond_1
    aget-object v1, v0, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 18
    aget-object v1, v0, v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 19
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFU0;

    .line 41
    invoke-interface {v1}, LFU0;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LFU0;)V
    .locals 1

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 8
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/base/Callback;)V
    .locals 7

    .line 24
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v0, LdV0;

    if-eqz v0, :cond_4

    .line 25
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.MANAGE_ACCOUNTS"

    .line 29
    invoke-static {v1, v5, v2, v4}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    if-eqz p3, :cond_3

    .line 30
    new-instance p1, LaV0;

    invoke-direct {p1, p3}, LaV0;-><init>(Lorg/chromium/base/Callback;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 31
    :cond_2
    new-instance v5, LbV0;

    invoke-direct {v5, p3}, LbV0;-><init>(Lorg/chromium/base/Callback;)V

    .line 32
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 33
    iget-object v0, v0, LdV0;->a:Landroid/accounts/AccountManager;

    const-string v2, "android"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 34
    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 10
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/base/Callback;)V
    .locals 9

    .line 20
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v0, LdV0;

    if-eqz v0, :cond_0

    .line 21
    new-instance v7, LZU0;

    invoke-direct {v7, p1}, LZU0;-><init>(Lorg/chromium/base/Callback;)V

    .line 22
    iget-object v1, v0, LdV0;->a:Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "com.google"

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1
.end method

.method public b(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 8
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()LzU0;
    .locals 14

    .line 12
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->d:LzU0;

    .line 13
    iget-object v0, v0, LzU0;->b:LoU0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_b

    .line 14
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->c:[LhV0;

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacade;->d:LzU0;

    .line 17
    iget-object v3, v3, LzU0;->a:Ljava/lang/Object;

    .line 18
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 19
    iget-object v5, p0, Lorg/chromium/components/signin/AccountManagerFacade;->c:[LhV0;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 20
    iget-object v9, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 21
    iget-object v10, v8, LhV0;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v2, :cond_3

    .line 22
    iget-object v8, v8, LhV0;->a:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_5

    .line 23
    :cond_3
    iget-object v10, v8, LhV0;->a:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 24
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    iget-object v11, v8, LhV0;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 26
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 28
    iget-object v8, v8, LhV0;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-interface {v8, v2, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 29
    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_6

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_3

    .line 31
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_9

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 33
    :cond_a
    new-instance v1, LzU0;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, LzU0;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 34
    :cond_b
    :goto_6
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->d:LzU0;

    return-object v0
.end method

.method public b(LFU0;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/chromium/base/Callback;)V
    .locals 1

    .line 4
    new-instance v0, LsU0;

    invoke-direct {v0, p0, p1}, LsU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;)V

    invoke-virtual {p0, v0}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzU0;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lorg/chromium/components/signin/AccountManagerFacade;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 5
    iget-object v2, p0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LzU0;

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacade;->g:LdV;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 9
    invoke-virtual {v3, v4, v5}, LdV;->a(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted waiting for accounts"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    iget-object v1, v0, LzU0;->b:LoU0;

    if-nez v1, :cond_2

    .line 12
    iget-object v0, v0, LzU0;->a:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 14
    :cond_2
    throw v1
.end method

.method public d()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 5
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacade;->c()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch LoU0; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
