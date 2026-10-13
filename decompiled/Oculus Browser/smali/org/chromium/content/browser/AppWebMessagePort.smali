.class public Lorg/chromium/content/browser/AppWebMessagePort;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/content_public/browser/MessagePort;


# static fields
.field public static final g:LI61;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lj71;

.field public f:Lj61;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LI61;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI61;-><init>(I)V

    sput-object v0, Lorg/chromium/content/browser/AppWebMessagePort;->g:LI61;

    return-void
.end method

.method public constructor <init>(Lx71;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lq71;->c()Lj71;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->e:Lj71;

    .line 3
    new-instance v0, Lj61;

    invoke-direct {v0, p1}, Lj61;-><init>(Lx71;)V

    iput-object v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    return-void
.end method

.method public static c()[Lorg/chromium/content/browser/AppWebMessagePort;
    .locals 4

    .line 1
    sget-object v0, LK71;->a:Lj71;

    .line 2
    new-instance v1, Lt71;

    invoke-direct {v1}, Lt71;-><init>()V

    invoke-interface {v0, v1}, Lj71;->a(Lt71;)Lz71;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/chromium/content/browser/AppWebMessagePort;

    .line 3
    new-instance v2, Lorg/chromium/content/browser/AppWebMessagePort;

    iget-object v3, v0, Lz71;->a:Ljava/lang/Object;

    check-cast v3, Lx71;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/AppWebMessagePort;-><init>(Lx71;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/chromium/content/browser/AppWebMessagePort;

    iget-object v0, v0, Lz71;->b:Ljava/lang/Object;

    check-cast v0, Lx71;

    invoke-direct {v2, v0}, Lorg/chromium/content/browser/AppWebMessagePort;-><init>(Lx71;)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    return-object v1
.end method

.method private releaseNativeHandle()I
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    invoke-virtual {v0}, Lj61;->y()Lx71;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    .line 4
    invoke-interface {v0}, Lq71;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(LQ01;Landroid/os/Handler;)V
    .locals 3

    .line 43
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->a:Z

    if-nez v0, :cond_3

    .line 44
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->c:Z

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p1, Lj61;->z:LJ61;

    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    new-instance v2, LGV0;

    if-nez p2, :cond_1

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {v2, p2, p1}, LGV0;-><init>(Landroid/os/Looper;LQ01;)V

    .line 50
    iput-object v2, v1, Lj61;->z:LJ61;

    .line 51
    :goto_1
    iget-boolean p1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->d:Z

    if-nez p1, :cond_2

    .line 52
    iget-object p1, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    .line 53
    iget-object p2, p1, Lj61;->y:LH71;

    iget-object v1, p1, Lj61;->x:Lx71;

    sget-object v2, Li71;->c:Li71;

    iget-object p1, p1, Lj61;->w:Li61;

    invoke-interface {p2, v1, v2, p1}, LH71;->a(Lq71;Li71;LG71;)I

    .line 54
    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->d:Z

    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Port is already closed or transferred"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lorg/chromium/content/browser/AppWebMessagePort;->a:Z

    const-string v3, "Port is already closed or transferred"

    if-nez v2, :cond_7

    .line 2
    iget-boolean v2, v0, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    if-nez v2, :cond_7

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v1

    :goto_0
    new-array v4, v4, [Lx71;

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 4
    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v1, v7

    .line 5
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 6
    invoke-interface {v8}, Lorg/chromium/content_public/browser/MessagePort;->isClosed()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v8}, Lorg/chromium/content_public/browser/MessagePort;->a()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7
    invoke-interface {v8}, Lorg/chromium/content_public/browser/MessagePort;->b()Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Port is already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Source port cannot be transferred"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_5

    .line 12
    aget-object v6, v1, v3

    check-cast v6, Lorg/chromium/content/browser/AppWebMessagePort;

    .line 13
    iput-boolean v5, v6, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    .line 14
    iget-object v7, v6, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    invoke-virtual {v7}, Lj61;->y()Lx71;

    move-result-object v7

    const/4 v8, 0x0

    .line 15
    iput-object v8, v6, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    .line 16
    aput-object v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_5
    iput-boolean v5, v0, Lorg/chromium/content/browser/AppWebMessagePort;->c:Z

    .line 18
    new-instance v1, LXX;

    invoke-direct {v1}, LXX;-><init>()V

    .line 19
    new-instance v3, LKX;

    invoke-direct {v3}, LKX;-><init>()V

    iput-object v3, v1, LXX;->b:LKX;

    .line 20
    invoke-static/range {p1 .. p1}, LJ/N;->Mk6SEKCp(Ljava/lang/String;)[B

    move-result-object v6

    .line 21
    new-instance v7, LS71;

    invoke-direct {v7}, LS71;-><init>()V

    .line 22
    array-length v8, v6

    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_6

    .line 23
    iput v2, v7, LU61;->a:I

    .line 24
    iput-object v6, v7, LS71;->b:[B

    goto :goto_3

    .line 25
    :cond_6
    sget-object v8, LK71;->a:Lj71;

    .line 26
    new-instance v9, LT71;

    invoke-direct {v9}, LT71;-><init>()V

    .line 27
    new-instance v10, LC71;

    invoke-direct {v10}, LC71;-><init>()V

    array-length v11, v6

    int-to-long v11, v11

    .line 28
    invoke-interface {v8, v10, v11, v12}, Lj71;->a(LC71;J)LE71;

    move-result-object v13

    iput-object v13, v9, LT71;->b:LE71;

    .line 29
    array-length v8, v6

    iput v8, v9, LT71;->c:I

    const-wide/16 v14, 0x0

    .line 30
    array-length v8, v6

    int-to-long v10, v8

    sget-object v18, LD71;->c:LD71;

    move-wide/from16 v16, v10

    .line 31
    invoke-interface/range {v13 .. v18}, LE71;->a(JJLD71;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 32
    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 33
    iput v5, v7, LU61;->a:I

    .line 34
    iput-object v9, v7, LS71;->c:LT71;

    .line 35
    :goto_3
    iput-object v7, v3, LKX;->b:LS71;

    .line 36
    iget-object v3, v1, LXX;->b:LKX;

    new-array v5, v2, [LWX;

    iput-object v5, v3, LKX;->c:[LWX;

    new-array v3, v2, [LVX;

    .line 37
    iput-object v3, v1, LXX;->e:[LVX;

    new-array v3, v2, [Lxb1;

    .line 38
    iput-object v3, v1, LXX;->f:[Lxb1;

    .line 39
    iput-object v4, v1, LXX;->c:[Lx71;

    new-array v2, v2, [Lx71;

    .line 40
    iput-object v2, v1, LXX;->d:[Lx71;

    .line 41
    iget-object v2, v0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    iget-object v3, v0, Lorg/chromium/content/browser/AppWebMessagePort;->e:Lj71;

    sget-object v4, Lorg/chromium/content/browser/AppWebMessagePort;->g:LI61;

    invoke-virtual {v1, v3, v4}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object v1

    invoke-virtual {v2, v1}, Lj61;->a(LH61;)Z

    return-void

    .line 42
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->c:Z

    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->b:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->a:Z

    .line 4
    iget-object v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    invoke-virtual {v0}, Lj61;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->f:Lj61;

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Port is already transferred"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/AppWebMessagePort;->a:Z

    return v0
.end method
