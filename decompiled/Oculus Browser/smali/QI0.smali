.class public LQI0;
.super LkW;
.source "PG"


# instance fields
.field public final a:LXI0;

.field public final synthetic b:LYI0;


# direct methods
.method public constructor <init>(LYI0;LXI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQI0;->b:LYI0;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LQI0;->a:LXI0;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, LQI0;->b:LYI0;

    .line 2
    iget-boolean v0, v0, LYI0;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, LQI0;->b:LYI0;

    invoke-virtual {v0}, LYI0;->a()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, LQI0;->a:LXI0;

    iget v2, v2, LXI0;->a:I

    invoke-static {v0, v2}, LtH0;->a(Ljava/io/File;I)LtH0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "tabmodel"

    invoke-static {v3, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, LtH0;

    .line 2
    iget-object v0, p0, LQI0;->b:LYI0;

    .line 3
    iget-boolean v0, v0, LYI0;->k:Z

    if-nez v0, :cond_8

    .line 4
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, LQI0;->b:LYI0;

    iget-object v1, p0, LQI0;->a:LXI0;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-boolean v1, p1, LtH0;->h:Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v1, LXI0;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    iget-object v2, p0, LQI0;->b:LYI0;

    .line 10
    iget-boolean v2, v2, LYI0;->m:Z

    if-nez v2, :cond_4

    :cond_3
    if-nez v1, :cond_5

    .line 11
    iget-object v1, p0, LQI0;->b:LYI0;

    .line 12
    iget-boolean v1, v1, LYI0;->l:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 13
    iget-object v1, p0, LQI0;->b:LYI0;

    iget-object v2, p0, LQI0;->a:LXI0;

    invoke-virtual {v1, v2, p1, v0}, LYI0;->a(LXI0;LtH0;Z)V

    .line 14
    :cond_6
    iget-object p1, p0, LQI0;->b:LYI0;

    .line 15
    invoke-virtual {p1}, LYI0;->c()V

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 16
    throw p1

    :cond_8
    :goto_2
    return-void
.end method
