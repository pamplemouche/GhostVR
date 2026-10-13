.class public final Lz21;
.super Lz61;
.source "PG"

# interfaces
.implements Lv21;


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz61;-><init>(Lj71;LK61;)V

    return-void
.end method


# virtual methods
.method public a([ILjava/lang/String;Ll21;)V
    .locals 2

    .line 1
    new-instance v0, Ly21;

    invoke-direct {v0}, Ly21;-><init>()V

    .line 2
    iput-object p1, v0, Ly21;->b:[I

    .line 3
    iput-object p2, v0, Ly21;->c:Ljava/lang/String;

    .line 4
    iput-object p3, v0, Ly21;->d:Ll21;

    .line 5
    iget-object p1, p0, Lz61;->w:Ly61;

    .line 6
    iget-object p2, p1, Ly61;->x:LK61;

    .line 7
    iget-object p1, p1, Ly61;->w:Lj71;

    .line 8
    new-instance p3, LI61;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, LI61;-><init>(I)V

    .line 9
    invoke-virtual {v0, p1, p3}, LT61;->a(Lj71;LI61;)LR61;

    move-result-object p1

    .line 10
    invoke-interface {p2, p1}, LJ61;->a(LH61;)Z

    return-void
.end method
