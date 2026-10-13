.class public abstract Ldd;
.super Led;
.source "PG"


# instance fields
.field public final x:Landroid/content/Context;

.field public y:Ljava/util/Map;

.field public z:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Led;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Ldd;->x:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, LI4;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, LI4;

    .line 3
    iget-object v1, p0, Ldd;->y:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, LJ6;

    invoke-direct {v1}, LJ6;-><init>()V

    iput-object v1, p0, Ldd;->y:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object v1, p0, Ldd;->y:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Ldd;->x:Landroid/content/Context;

    .line 7
    new-instance v1, LAd;

    invoke-direct {v1, p1, v0}, LAd;-><init>(Landroid/content/Context;LI4;)V

    .line 8
    iget-object p1, p0, Ldd;->y:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_1
    return-object p1
.end method
