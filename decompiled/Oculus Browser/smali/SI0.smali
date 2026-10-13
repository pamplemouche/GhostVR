.class public LSI0;
.super LkW;
.source "PG"


# instance fields
.field public a:LVI0;

.field public final synthetic b:LYI0;


# direct methods
.method public synthetic constructor <init>(LYI0;LII0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSI0;->b:LYI0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LSI0;->a:LVI0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LSI0;->b:LYI0;

    iget-object v1, p0, LSI0;->a:LVI0;

    iget-object v1, v1, LVI0;->a:[B

    .line 3
    invoke-virtual {v0, v1}, LYI0;->a([B)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, LSI0;->b:LYI0;

    .line 3
    iget-boolean p1, p1, LYI0;->k:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 4
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, LSI0;->b:LYI0;

    .line 6
    iget-object v1, p1, LYI0;->j:LSI0;

    if-ne v1, p0, :cond_4

    .line 7
    iput-object v0, p1, LYI0;->j:LSI0;

    .line 8
    iget-object p1, p1, LYI0;->d:LWT;

    .line 9
    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWI0;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    throw v0

    .line 11
    :cond_2
    iput-object v0, p0, LSI0;->a:LVI0;

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iput-object v0, p0, LSI0;->a:LVI0;

    :cond_4
    :goto_2
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, LSI0;->b:LYI0;

    .line 2
    iget-boolean v0, v0, LYI0;->k:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, LSI0;->b:LYI0;

    .line 5
    invoke-virtual {v0}, LYI0;->f()LVI0;

    move-result-object v0

    .line 6
    iput-object v0, p0, LSI0;->a:LVI0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, LSI0;->a:LVI0;

    :cond_1
    :goto_0
    return-void
.end method
