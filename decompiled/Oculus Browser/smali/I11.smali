.class public LI11;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public final g:[F

.field public h:Ljava/lang/String;

.field public i:[I

.field public j:LT11;


# direct methods
.method public constructor <init>(ILandroid/view/InputDevice;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, LI11;->d:[F

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, LI11;->e:[F

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, LI11;->f:[F

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, LI11;->g:[F

    .line 6
    iput p1, p0, LI11;->b:I

    .line 7
    invoke-virtual {p2}, Landroid/view/InputDevice;->getId()I

    move-result p1

    iput p1, p0, LI11;->a:I

    .line 8
    invoke-virtual {p2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LI11;->h:Ljava/lang/String;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LI11;->c:J

    .line 10
    invoke-virtual {p2}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, LI11;->i:[I

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice$MotionRange;

    .line 13
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v1

    .line 15
    iget-object v2, p0, LI11;->i:[I

    add-int/lit8 v3, v0, 0x1

    aput v1, v2, v0

    move v0, v3

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, LI11;->i:[I

    .line 17
    invoke-virtual {p2}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x54c

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/16 v2, 0x5c4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9cc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xba0

    if-ne v0, v2, :cond_3

    .line 18
    :cond_2
    new-instance v0, LO11;

    invoke-direct {v0}, LO11;-><init>()V

    goto :goto_1

    :cond_3
    const/16 v2, 0x45e

    if-ne v1, v2, :cond_4

    const/16 v1, 0x2e0

    if-ne v0, v1, :cond_4

    .line 19
    new-instance v0, LS11;

    invoke-direct {v0, v3}, LS11;-><init>(LL11;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_9

    .line 20
    invoke-virtual {p2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NVIDIA Corporation NVIDIA Controller"

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Microsoft X-Box 360 pad"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Sony PLAYSTATION(R)3 Controller"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance p2, LN11;

    invoke-direct {p2, v3}, LN11;-><init>(LL11;)V

    goto :goto_3

    :cond_6
    const-string v0, "Samsung Game Pad EI-GP20"

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    new-instance p2, LP11;

    invoke-direct {p2, v3}, LP11;-><init>(LL11;)V

    goto :goto_3

    :cond_7
    const-string v0, "Amazon Fire Game Controller"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 28
    new-instance p2, LM11;

    invoke-direct {p2, v3}, LM11;-><init>(LL11;)V

    goto :goto_3

    .line 29
    :cond_8
    :goto_2
    new-instance p2, LR11;

    invoke-direct {p2, v3}, LR11;-><init>(LL11;)V

    :goto_3
    move-object v3, p2

    goto :goto_4

    :cond_9
    move-object v3, v0

    :cond_a
    :goto_4
    if-nez v3, :cond_b

    .line 30
    new-instance v3, LQ11;

    invoke-direct {v3, p1}, LQ11;-><init>([I)V

    .line 31
    :cond_b
    iput-object v3, p0, LI11;->j:LT11;

    return-void
.end method
