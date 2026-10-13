.class public LSU0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LTU0;


# direct methods
.method public constructor <init>(LTU0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSU0;->a:LTU0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, LSU0;->a:LTU0;

    .line 2
    iget-object v0, v0, LTU0;->w:LRU0;

    .line 3
    invoke-interface {v0}, LRU0;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch LGU0; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    const-string v5, "\nCaused by: "

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "OAuth2TokenService"

    const-string v3, "Failed to perform auth task: %s"

    .line 9
    invoke-static {v2, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, LSU0;->a:LTU0;

    .line 11
    iget-object v1, v1, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iget-boolean v0, v0, LGU0;->w:Z

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LSU0;->a:LTU0;

    .line 2
    iget-object v0, v0, LTU0;->w:LRU0;

    .line 3
    invoke-interface {v0, p1}, LRU0;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, LSU0;->a:LTU0;

    .line 5
    iget-object p1, p1, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LSU0;->a:LTU0;

    .line 7
    iget-object p1, p1, LTU0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    .line 9
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, LSU0;->a:LTU0;

    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifier;->a(Lm81;)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, LSU0;->a:LTU0;

    .line 12
    iget-object v0, p1, LTU0;->w:LRU0;

    .line 13
    iget-object p1, p1, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-interface {v0, p1}, LRU0;->a(Z)V

    :goto_1
    return-void
.end method
