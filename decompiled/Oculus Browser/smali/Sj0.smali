.class public LSj0;
.super LAj;
.source "PG"


# instance fields
.field public final synthetic a:LTj0;


# direct methods
.method public synthetic constructor <init>(LTj0;LRj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSj0;->a:LTj0;

    invoke-direct {p0}, LAj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LSj0;->a:LTj0;

    invoke-static {v0}, LTj0;->a(LTj0;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 0

    .line 2
    iget-object p1, p0, LSj0;->a:LTj0;

    invoke-static {p1}, LTj0;->a(LTj0;)V

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, LSj0;->a:LTj0;

    invoke-static {v0}, LTj0;->a(LTj0;)V

    .line 2
    iget-object v0, p0, LSj0;->a:LTj0;

    .line 3
    invoke-virtual {v0}, LTj0;->k()LNj0;

    move-result-object v0

    .line 4
    iget-object v1, v0, LNj0;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, v0, LNj0;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMj0;

    iget-object v3, v2, LMj0;->a:Ljava/lang/String;

    iget v2, v2, LMj0;->b:I

    const-string v4, "v2_message"

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v0, v3, v4, v5, v2}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, LNj0;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :goto_1
    return-void
.end method
