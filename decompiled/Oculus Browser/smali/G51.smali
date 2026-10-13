.class public final LG51;
.super LT61;
.source "PG"


# static fields
.field public static final f:[Lk61;

.field public static final g:Lk61;


# instance fields
.field public b:LV71;

.field public c:Lorg/chromium/gfx/mojom/Rect;

.field public d:Z

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lk61;

    .line 1
    new-instance v1, Lk61;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v1, v3, v2}, Lk61;-><init>(II)V

    aput-object v1, v0, v2

    sput-object v0, LG51;->f:[Lk61;

    .line 2
    aget-object v0, v0, v2

    sput-object v0, LG51;->g:Lk61;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, LT61;-><init>(II)V

    return-void
.end method

.method public static a(Lm61;)LG51;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lm61;->b()V

    .line 2
    :try_start_0
    sget-object v0, LG51;->f:[Lk61;

    invoke-virtual {p0, v0}, Lm61;->a([Lk61;)Lk61;

    move-result-object v0

    .line 3
    iget v0, v0, Lk61;->b:I

    .line 4
    new-instance v1, LG51;

    invoke-direct {v1, v0}, LG51;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 6
    invoke-static {v0}, LV71;->a(Lm61;)LV71;

    move-result-object v0

    iput-object v0, v1, LG51;->b:LV71;

    const/16 v0, 0x10

    .line 7
    invoke-virtual {p0, v0, v2}, Lm61;->d(IZ)Lm61;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->a(Lm61;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, LG51;->c:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x18

    .line 9
    invoke-virtual {p0, v0, v2}, Lm61;->a(II)Z

    move-result v2

    iput-boolean v2, v1, LG51;->d:Z

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v0, v2}, Lm61;->a(II)Z

    move-result v0

    iput-boolean v0, v1, LG51;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Lm61;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lm61;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Lr61;)V
    .locals 3

    .line 12
    sget-object v0, LG51;->g:Lk61;

    invoke-virtual {p1, v0}, Lr61;->b(Lk61;)Lr61;

    move-result-object p1

    .line 13
    iget-object v0, p0, LG51;->b:LV71;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LT61;IZ)V

    .line 14
    iget-object v0, p0, LG51;->c:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(LT61;IZ)V

    .line 15
    iget-boolean v0, p0, LG51;->d:Z

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    .line 16
    iget-boolean v0, p0, LG51;->e:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lr61;->a(ZII)V

    return-void
.end method
