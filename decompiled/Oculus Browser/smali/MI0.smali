.class public LMI0;
.super LlW;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LYI0;


# direct methods
.method public constructor <init>(LYI0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMI0;->b:LYI0;

    iput-object p2, p0, LMI0;->a:Ljava/lang/String;

    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LMI0;->b:LYI0;

    invoke-virtual {v1}, LYI0;->a()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, LMI0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "Failed to delete file: "

    invoke-static {v1, v0}, LZi;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "tabmodel"

    invoke-static {v4, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, LMI0;->b:LYI0;

    .line 5
    iget-object v0, v0, LYI0;->t:Ljava/util/Set;

    .line 6
    iget-object v1, p0, LMI0;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, LMI0;->b:LYI0;

    .line 8
    iget-object v0, v0, LYI0;->t:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, LMI0;->b:LYI0;

    .line 11
    iget-object v0, v0, LYI0;->a:LGI0;

    .line 12
    check-cast v0, LgJ0;

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, LgJ0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    return-object v2
.end method
