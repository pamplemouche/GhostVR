.class public Luv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lnu0;

.field public final synthetic b:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;Lnu0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luv0;->b:Lyv0;

    iput-object p2, p0, Luv0;->a:Lnu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lnu0;

    .line 2
    iget-object v0, p0, Luv0;->b:Lyv0;

    .line 3
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    iget-boolean v1, p1, LCQ0;->w:Z

    if-nez v1, :cond_1

    .line 5
    iget-object p1, v0, Lyv0;->n0:LZw0;

    const/4 v0, -0x1

    .line 6
    iput v0, p1, LZw0;->c:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Luv0;->a:Lnu0;

    if-nez v1, :cond_2

    .line 8
    iget-object v0, v0, Lyv0;->n0:LZw0;

    .line 9
    invoke-virtual {v0, p1}, LZw0;->a(LCQ0;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Luv0;->b:Lyv0;

    .line 11
    invoke-virtual {p1}, Lyv0;->m()V

    .line 12
    iget-object p1, p0, Luv0;->b:Lyv0;

    .line 13
    iget-object v0, p1, Lyv0;->o0:LXw0;

    const/4 v1, 0x4

    .line 14
    iget-object p1, p1, Lyv0;->n0:LZw0;

    .line 15
    invoke-virtual {v0, v1, p1}, LXw0;->a(ILZw0;)V

    :goto_1
    return-void
.end method
