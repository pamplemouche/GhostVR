.class public final synthetic LrU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/components/signin/AccountManagerFacade;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LrU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iput-object p2, p0, LrU0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LrU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LrU0;->x:Lorg/chromium/base/Callback;

    .line 1
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzU0;

    .line 2
    iget-object v2, v0, LzU0;->b:LoU0;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    iget-object v3, v0, LzU0;->a:Ljava/lang/Object;

    .line 5
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v0, v0, LzU0;->a:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 8
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, LzU0;

    invoke-direct {v0, v2}, LzU0;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_2
    new-instance v2, LzU0;

    .line 11
    iget-object v0, v0, LzU0;->b:LoU0;

    .line 12
    invoke-direct {v2, v0}, LzU0;-><init>(LoU0;)V

    move-object v0, v2

    .line 13
    :goto_2
    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
