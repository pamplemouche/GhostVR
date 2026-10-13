.class public LPU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRU0;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacade;

.field public final synthetic b:Landroid/accounts/Account;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LUU0;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;LUU0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    iput-object p2, p0, LPU0;->b:Landroid/accounts/Account;

    iput-object p3, p0, LPU0;->c:Ljava/lang/String;

    iput-object p4, p0, LPU0;->d:LUU0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, LPU0;->d:LUU0;

    invoke-interface {v0, p1}, LUU0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, LPU0;->d:LUU0;

    invoke-interface {v0, p1}, LUU0;->a(Z)V

    return-void
.end method

.method public run()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, LPU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LPU0;->b:Landroid/accounts/Account;

    iget-object v2, p0, LPU0;->c:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v0, LdV0;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0, v1, v2, v3}, Ldj;->b(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, LGU0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LGU0;-><init>(ZLjava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 6
    new-instance v1, LGU0;

    const/4 v3, 0x0

    const-string v4, "Error while getting token for scope \'"

    const-string v5, "\'"

    invoke-static {v4, v2, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, LGU0;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 7
    :cond_0
    throw v3
.end method
