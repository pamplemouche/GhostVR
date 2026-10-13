.class public LuU0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Lorg/chromium/base/Callback;

.field public final synthetic c:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LuU0;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    iput-object p2, p0, LuU0;->a:Landroid/accounts/Account;

    iput-object p3, p0, LuU0;->b:Lorg/chromium/base/Callback;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LuU0;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LuU0;->a:Landroid/accounts/Account;

    const-string v2, "service_uca"

    invoke-static {v0, v1, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LuU0;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LuU0;->a:Landroid/accounts/Account;

    const-string v2, "service_usm"

    invoke-static {v0, v1, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, LuU0;->b:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
