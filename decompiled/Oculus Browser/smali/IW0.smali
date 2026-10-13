.class public LIW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKV;


# instance fields
.field public final synthetic a:LKW0;


# direct methods
.method public constructor <init>(LKW0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIW0;->a:LKW0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LIW0;->a:LKW0;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LKW0;->c:Z

    .line 3
    iget-object v0, v0, LKW0;->d:LKV;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, LKV;->a()V

    .line 5
    iget-object v0, p0, LIW0;->a:LKW0;

    invoke-static {v0}, LKW0;->a(LKW0;)V

    :cond_0
    return-void
.end method

.method public a(LLV;)V
    .locals 1

    .line 6
    iget-object v0, p0, LIW0;->a:LKW0;

    .line 7
    iget-object v0, v0, LKW0;->d:LKV;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, LKV;->a(LLV;)V

    .line 9
    :cond_0
    iget-object p1, p0, LIW0;->a:LKW0;

    .line 10
    iget-object v0, p1, LKW0;->b:LLV;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, LKW0;->a(LKW0;)V

    :cond_1
    return-void
.end method

.method public b(LLV;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SpareChildConn"

    const-string v2, "Failed to warm up the spare sandbox service"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, LIW0;->a:LKW0;

    .line 3
    iget-object v0, v0, LKW0;->d:LKV;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, LKV;->b(LLV;)V

    .line 5
    :cond_0
    iget-object p1, p0, LIW0;->a:LKW0;

    invoke-static {p1}, LKW0;->a(LKW0;)V

    return-void
.end method
