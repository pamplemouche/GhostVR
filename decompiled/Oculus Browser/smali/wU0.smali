.class public LwU0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;LuU0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->f()[LhV0;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lorg/chromium/components/signin/AccountManagerFacade;->c:[LhV0;

    .line 3
    iget-object v0, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->d(Lorg/chromium/components/signin/AccountManagerFacade;)LzU0;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lorg/chromium/components/signin/AccountManagerFacade;->d:LzU0;

    .line 5
    iget-object v0, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 6
    iget-object v1, v0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->b()LzU0;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 10
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->f:Ljava/util/concurrent/CountDownLatch;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 3
    iget-object p1, p1, Lorg/chromium/components/signin/AccountManagerFacade;->h:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 7
    iget-object p1, p1, Lorg/chromium/components/signin/AccountManagerFacade;->h:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object p1, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 10
    invoke-virtual {p1}, Lorg/chromium/components/signin/AccountManagerFacade;->a()V

    .line 11
    iget-object p1, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, LwU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-void
.end method
