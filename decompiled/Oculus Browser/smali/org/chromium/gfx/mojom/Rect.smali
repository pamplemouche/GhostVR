.class public final Lorg/chromium/gfx/mojom/Rect;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/gfx/mojom/Rect;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/gfx/mojom/Rect;->g:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)Lorg/chromium/gfx/mojom/Rect;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, Lorg/chromium/gfx/mojom/Rect;->f:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {v1, v0}, Lorg/chromium/gfx/mojom/Rect;-><init>(I)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/gfx/mojom/Rect;->b:I

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/gfx/mojom/Rect;->c:I

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/gfx/mojom/Rect;->d:I

    const/16 v0, 0x14

    .line 8
    invoke-virtual {p0, v0}, Lm61;->e(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/gfx/mojom/Rect;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 2

    .line 10
    sget-object v0, Lorg/chromium/gfx/mojom/Rect;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 11
    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->b:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 12
    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->c:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 13
    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->d:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    .line 14
    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->e:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lr61;->a(II)V

    return-void
.end method
