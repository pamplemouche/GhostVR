.class public LLw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LXw0;


# direct methods
.method public constructor <init>(LXw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLw0;->a:LXw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lzw0;

    .line 2
    iget-object v0, p0, LLw0;->a:LXw0;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, LXw0;->c0:Z

    .line 4
    iget-object v1, p1, Lzw0;->a:Lcx0;

    .line 5
    invoke-virtual {v0, v1}, LXw0;->a(Lcx0;)V

    .line 6
    iget-object v0, p0, LLw0;->a:LXw0;

    .line 7
    iget-boolean v1, v0, LXw0;->z:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 8
    iget-object v2, p1, Lzw0;->b:LZw0;

    .line 9
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 10
    :cond_0
    iget-object v0, p0, LLw0;->a:LXw0;

    .line 11
    iget-boolean v1, v0, LXw0;->A:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 12
    iget-object v2, p1, Lzw0;->c:LZw0;

    .line 13
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 14
    :cond_1
    iget-object v0, p0, LLw0;->a:LXw0;

    .line 15
    iget-boolean v1, v0, LXw0;->B:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 16
    iget-object v2, p1, Lzw0;->d:LZw0;

    .line 17
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 18
    :cond_2
    iget-object v0, p0, LLw0;->a:LXw0;

    const/4 v1, 0x4

    .line 19
    iget-object p1, p1, Lzw0;->e:LZw0;

    .line 20
    invoke-virtual {v0, v1, p1}, LXw0;->a(ILZw0;)V

    .line 21
    iget-object p1, p0, LLw0;->a:LXw0;

    .line 22
    iget-object p1, p1, LXw0;->h0:LZw0;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, LZw0;->b()LCQ0;

    move-result-object p1

    if-nez p1, :cond_3

    .line 24
    iget-object p1, p0, LLw0;->a:LXw0;

    .line 25
    iget-object v1, p1, LXw0;->T:LFw0;

    .line 26
    invoke-virtual {p1, v1}, LXw0;->a(LIw0;)V

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, LLw0;->a:LXw0;

    .line 28
    invoke-virtual {p1, v0}, LXw0;->a(LIw0;)V

    .line 29
    :goto_0
    iget-object p1, p0, LLw0;->a:LXw0;

    .line 30
    invoke-virtual {p1}, LXw0;->d()V

    .line 31
    iget-object p1, p0, LLw0;->a:LXw0;

    if-eqz p1, :cond_4

    return-void

    .line 32
    :cond_4
    throw v0
.end method
