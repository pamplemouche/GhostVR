.class public Lqg0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqi0;


# instance fields
.field public final a:LWT;

.field public final b:LWT;

.field public final c:LWT;

.field public final d:LWT;

.field public final e:LWT;

.field public final f:LWT;

.field public final g:LWT;

.field public final h:LWT;

.field public final i:LWT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->a:LWT;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->b:LWT;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->c:LWT;

    .line 5
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->d:LWT;

    .line 6
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->e:LWT;

    .line 7
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->f:LWT;

    .line 8
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->g:LWT;

    .line 9
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->h:LWT;

    .line 10
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lqg0;->i:LWT;

    return-void
.end method


# virtual methods
.method public a(Lvi0;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lui0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lqg0;->a:LWT;

    move-object v1, p1

    check-cast v1, Lui0;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    instance-of v0, p1, Lzi0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lqg0;->d:LWT;

    move-object v1, p1

    check-cast v1, Lzi0;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    instance-of v0, p1, Lwi0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lqg0;->b:LWT;

    move-object v1, p1

    check-cast v1, Lwi0;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    instance-of v0, p1, Lti0;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lqg0;->e:LWT;

    move-object v1, p1

    check-cast v1, Lti0;

    invoke-virtual {v0, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    instance-of v0, p1, Lsi0;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lqg0;->i:LWT;

    check-cast p1, Lsi0;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public b(Lvi0;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lui0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lqg0;->a:LWT;

    move-object v1, p1

    check-cast v1, Lui0;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    instance-of v0, p1, Lzi0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lqg0;->d:LWT;

    move-object v1, p1

    check-cast v1, Lzi0;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    instance-of v0, p1, Lwi0;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lqg0;->b:LWT;

    move-object v1, p1

    check-cast v1, Lwi0;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    instance-of v0, p1, Lti0;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lqg0;->e:LWT;

    move-object v1, p1

    check-cast v1, Lti0;

    invoke-virtual {v0, v1}, LWT;->b(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    instance-of v0, p1, Lsi0;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lqg0;->i:LWT;

    check-cast p1, Lsi0;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
