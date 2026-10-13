.class public LMw0;
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
    iput-object p1, p0, LMw0;->a:LXw0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lzw0;

    .line 2
    iget-object v0, p0, LMw0;->a:LXw0;

    .line 3
    iget-object v1, p1, Lzw0;->a:Lcx0;

    .line 4
    invoke-virtual {v0, v1}, LXw0;->a(Lcx0;)V

    .line 5
    iget-object v0, p0, LMw0;->a:LXw0;

    .line 6
    iget-boolean v1, v0, LXw0;->z:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 7
    iget-object v2, p1, Lzw0;->b:LZw0;

    .line 8
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 9
    :cond_0
    iget-object v0, p0, LMw0;->a:LXw0;

    .line 10
    iget-boolean v1, v0, LXw0;->A:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 11
    iget-object v2, p1, Lzw0;->c:LZw0;

    .line 12
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 13
    :cond_1
    iget-object v0, p0, LMw0;->a:LXw0;

    .line 14
    iget-boolean v1, v0, LXw0;->B:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 15
    iget-object v2, p1, Lzw0;->d:LZw0;

    .line 16
    invoke-virtual {v0, v1, v2}, LXw0;->a(ILZw0;)V

    .line 17
    :cond_2
    iget-object v0, p0, LMw0;->a:LXw0;

    .line 18
    iget-object v1, v0, LXw0;->W:LFw0;

    .line 19
    iget-object p1, p1, Lzw0;->e:LZw0;

    .line 20
    iget-boolean v2, p1, LZw0;->d:Z

    .line 21
    iput-boolean v2, v1, LFw0;->a0:Z

    const/4 v1, 0x4

    .line 22
    invoke-virtual {v0, v1, p1}, LXw0;->a(ILZw0;)V

    .line 23
    iget-object p1, p0, LMw0;->a:LXw0;

    .line 24
    invoke-virtual {p1}, LXw0;->d()V

    .line 25
    iget-object p1, p0, LMw0;->a:LXw0;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, LXw0;->a(Z)V

    .line 27
    iget-object p1, p0, LMw0;->a:LXw0;

    .line 28
    iget-object p1, p1, LXw0;->G:Landroid/view/ViewGroup;

    .line 29
    new-instance v1, LWw0;

    iget-object v2, p0, LMw0;->a:LXw0;

    invoke-direct {v1, v2, v0}, LWw0;-><init>(LXw0;Z)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
