.class public LWv0;
.super LzQ0;
.source "PG"


# instance fields
.field public final w:Ljava/lang/Runnable;

.field public final x:LUv0;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;LUv0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LzQ0;-><init>()V

    .line 2
    iput-object p1, p0, LWv0;->w:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, LWv0;->x:LUv0;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object p1, p0, LWv0;->w:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object p1, p0, LWv0;->x:LUv0;

    check-cast p1, Liv0;

    .line 3
    iget-object p1, p1, Liv0;->a:Lyv0;

    .line 4
    iget-object v0, p1, Lyv0;->s0:LVv0;

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, v0, LVv0;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p1, Lyv0;->s0:LVv0;

    .line 8
    :goto_1
    iget-object p1, p1, Lyv0;->D:Lorg/chromium/content_public/browser/WebContents;

    const/4 v0, 0x3

    .line 9
    invoke-static {p1, v0}, LJ/N;->MAan0VNK(Ljava/lang/Object;I)V

    :goto_2
    return-void
.end method
