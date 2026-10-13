.class public LdK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lyc0;


# instance fields
.field public final synthetic a:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LdK0;->a:LkK0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LdK0;->a:LkK0;

    .line 2
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 3
    iget-object v0, v0, LfL0;->a:LQK0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQK0;->a(Z)V

    .line 4
    iget-object v0, p0, LdK0;->a:LkK0;

    .line 5
    iget-object v1, v0, LkK0;->a0:LOc0;

    if-eqz v1, :cond_0

    .line 6
    iget v0, v0, LkK0;->c0:I

    .line 7
    invoke-virtual {v1, v0}, LOc0;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LdK0;->a:LkK0;

    .line 2
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 3
    iget-object v0, v0, LfL0;->a:LQK0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LQK0;->a(Z)V

    .line 4
    iget-object v0, p0, LdK0;->a:LkK0;

    .line 5
    iget-object v1, v0, LkK0;->a0:LOc0;

    if-eqz v1, :cond_0

    .line 6
    iget v2, v0, LkK0;->c0:I

    .line 7
    invoke-virtual {v1, v2}, LOc0;->b(I)I

    move-result v1

    .line 8
    iput v1, v0, LkK0;->c0:I

    :cond_0
    return-void
.end method
