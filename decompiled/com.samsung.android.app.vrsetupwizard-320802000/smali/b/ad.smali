.class public final Lb/ad;
.super Lb/az;


# static fields
.field private static final a:Lb/an;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lb/an;->a(Ljava/lang/String;)Lb/an;

    move-result-object v0

    sput-object v0, Lb/ad;->a:Lb/an;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/az;-><init>()V

    invoke-static {p1}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/ad;->b:Ljava/util/List;

    invoke-static {p2}, Lb/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lb/ad;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lc/i;Z)J
    .locals 3
    .param p1    # Lc/i;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lc/i;->c()Lc/f;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lb/ad;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lc/f;->b(I)Lc/f;

    :cond_1
    iget-object v2, p0, Lb/ad;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lc/f;->b(I)Lc/f;

    iget-object v2, p0, Lb/ad;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lc/f;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lc/f;->t()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public a()Lb/an;
    .locals 1

    sget-object v0, Lb/ad;->a:Lb/an;

    return-object v0
.end method

.method public a(Lc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/ad;->a(Lc/i;Z)J

    return-void
.end method

.method public b()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/ad;->a(Lc/i;Z)J

    move-result-wide v0

    return-wide v0
.end method
