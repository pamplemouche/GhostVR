.class public LyU0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;LuU0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LyU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->d(Lorg/chromium/components/signin/AccountManagerFacade;)LzU0;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LzU0;

    .line 2
    iget-object v0, p0, LyU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 3
    iput-object p1, v0, Lorg/chromium/components/signin/AccountManagerFacade;->d:LzU0;

    .line 4
    iget-object p1, v0, Lorg/chromium/components/signin/AccountManagerFacade;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->b()LzU0;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->a()V

    .line 6
    iget-object p1, p0, LyU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, LyU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->c(Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-void
.end method
