.class public final synthetic LF20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/base/Callback;

.field public final b:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF20;->a:Lorg/chromium/base/Callback;

    iput-object p2, p0, LF20;->b:Lorg/chromium/components/signin/AccountManagerFacade;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LF20;->a:Lorg/chromium/base/Callback;

    iget-object v1, p0, LF20;->b:Lorg/chromium/components/signin/AccountManagerFacade;

    check-cast p1, Ljava/util/List;

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    new-instance v2, LuU0;

    invoke-direct {v2, v1, p1, v0}, LuU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 6
    invoke-virtual {v2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
