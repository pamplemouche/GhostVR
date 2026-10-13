.class public Lha1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LX91;


# instance fields
.field public final w:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lha1;->w:Ljava/util/Map;

    return-void
.end method

.method public static a(Lx71;)Lha1;
    .locals 2

    .line 1
    new-instance v0, Lha1;

    invoke-direct {v0}, Lha1;-><init>()V

    .line 2
    sget-object v1, LX91;->p:LA61;

    invoke-virtual {v1, v0, p0}, LA61;->a(LE61;Lx71;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lx71;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lha1;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lga1;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lga1;->b:Lea1;

    invoke-interface {v0}, Lea1;->a()LE61;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p2}, Lq71;->close()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Lga1;->a:LA61;

    invoke-virtual {p1, v0, p2}, LA61;->a(LE61;Lx71;)V

    :goto_0
    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lha1;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lha1;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
