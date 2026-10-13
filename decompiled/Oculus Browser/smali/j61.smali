.class public Lj61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJ61;
.implements Lx61;


# instance fields
.field public A:Lg61;

.field public final w:Li61;

.field public final x:Lx71;

.field public final y:LH71;

.field public z:LJ61;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lj61;

    return-void
.end method

.method public constructor <init>(Lx71;)V
    .locals 3

    .line 5
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object v0

    invoke-interface {v0}, Lj71;->a()LH71;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v2, Li61;

    invoke-direct {v2, p0, v1}, Li61;-><init>(Lj61;Lh61;)V

    iput-object v2, p0, Lj61;->w:Li61;

    .line 9
    iput-object p1, p0, Lj61;->x:Lx71;

    .line 10
    iput-object v0, p0, Lj61;->y:LH71;

    return-void
.end method

.method public constructor <init>(Lx71;LH71;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li61;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Li61;-><init>(Lj61;Lh61;)V

    iput-object v0, p0, Lj61;->w:Li61;

    .line 3
    iput-object p1, p0, Lj61;->x:Lx71;

    .line 4
    iput-object p2, p0, Lj61;->y:LH71;

    return-void
.end method

.method public static a(Lx71;LJ61;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 3

    .line 12
    sget-object v0, Lu71;->c:Lu71;

    invoke-interface {p0, v0}, Lx71;->a(Lu71;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p0

    .line 13
    iget v0, p0, Lorg/chromium/mojo/system/ResultAnd;->a:I

    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance p0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object p0

    .line 15
    :cond_0
    iget-object v2, p0, Lorg/chromium/mojo/system/ResultAnd;->b:Ljava/lang/Object;

    .line 16
    check-cast v2, Lv71;

    if-eqz p1, :cond_1

    .line 17
    :try_start_0
    new-instance v0, LH61;

    iget-object v1, v2, Lv71;->a:[B

    .line 18
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, v2, Lv71;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, LH61;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    .line 19
    invoke-interface {p1, v0}, LJ61;->a(LH61;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    .line 21
    iget p0, p0, Lorg/chromium/mojo/system/ResultAnd;->a:I

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 23
    sget-object p1, Lt61;->a:Lu61;

    .line 24
    throw p0

    .line 25
    :cond_1
    new-instance p0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ly71;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lj61;->close()V

    .line 8
    iget-object v0, p0, Lj61;->A:Lg61;

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-interface {v0, p1}, Lg61;->a(Ly71;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lt61;->a:Lu61;

    .line 11
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(LH61;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lj61;->x:Lx71;

    .line 2
    iget-object v1, p1, LH61;->a:Ljava/nio/ByteBuffer;

    .line 3
    iget-object p1, p1, LH61;->b:Ljava/util/List;

    .line 4
    sget-object v2, Lw71;->c:Lw71;

    .line 5
    invoke-interface {v0, v1, p1, v2}, Lx71;->a(Ljava/nio/ByteBuffer;Ljava/util/List;Lw71;)V
    :try_end_0
    .catch Ly71; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lj61;->a(Ly71;)V

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj61;->y:LH71;

    invoke-interface {v0}, LH71;->cancel()V

    .line 2
    iget-object v0, p0, Lj61;->y:LH71;

    invoke-interface {v0}, LH71;->destroy()V

    .line 3
    iget-object v0, p0, Lj61;->x:Lx71;

    invoke-interface {v0}, Lq71;->close()V

    .line 4
    iget-object v0, p0, Lj61;->z:LJ61;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lj61;->z:LJ61;

    .line 6
    invoke-interface {v0}, LJ61;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic y()Lq71;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj61;->y()Lx71;

    move-result-object v0

    return-object v0
.end method

.method public y()Lx71;
    .locals 2

    .line 2
    iget-object v0, p0, Lj61;->y:LH71;

    invoke-interface {v0}, LH71;->cancel()V

    .line 3
    iget-object v0, p0, Lj61;->y:LH71;

    invoke-interface {v0}, LH71;->destroy()V

    .line 4
    iget-object v0, p0, Lj61;->x:Lx71;

    invoke-interface {v0}, Lx71;->F()Lx71;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lj61;->z:LJ61;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, LJ61;->close()V

    :cond_0
    return-object v0
.end method
