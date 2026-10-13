.class public LQU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRU0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lorg/chromium/components/signin/OAuth2TokenService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/OAuth2TokenService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQU0;->b:Lorg/chromium/components/signin/OAuth2TokenService;

    iput-object p2, p0, LQU0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string p1, "Failed to invalidate auth token: "

    .line 2
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, LQU0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OAuth2TokenService"

    invoke-static {v1, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public run()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LQU0;->b:Lorg/chromium/components/signin/OAuth2TokenService;

    .line 2
    iget-object v0, v0, Lorg/chromium/components/signin/OAuth2TokenService;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 3
    iget-object v1, p0, LQU0;->a:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->a:LnU0;

    check-cast v0, LdV0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 6
    invoke-static {v3, v1}, Ldj;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lej; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, LGU0;

    invoke-direct {v1, v2, v0}, LGU0;-><init>(ZLjava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v1

    .line 9
    new-instance v2, LGU0;

    invoke-direct {v2, v0, v1}, LGU0;-><init>(ZLjava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v1

    .line 10
    new-instance v2, LGU0;

    invoke-direct {v2, v0, v1}, LGU0;-><init>(ZLjava/lang/Exception;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0
.end method
