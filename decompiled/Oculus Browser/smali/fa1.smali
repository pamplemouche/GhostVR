.class public Lfa1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lg61;


# instance fields
.field public w:LW91;


# direct methods
.method public constructor <init>(Lx71;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lq71;->c()Lj71;

    .line 3
    sget-object v0, LX91;->p:LA61;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, LA61;->a(Lx71;I)LC61;

    move-result-object p1

    check-cast p1, LW91;

    iput-object p1, p0, Lfa1;->w:LW91;

    .line 5
    check-cast p1, Lz61;

    .line 6
    iget-object p1, p1, Lz61;->w:Ly61;

    .line 7
    iput-object p0, p1, Ly61;->y:Lg61;

    return-void
.end method


# virtual methods
.method public a(Ly71;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfa1;->w:LW91;

    check-cast p1, Lz61;

    invoke-virtual {p1}, Lz61;->close()V

    return-void
.end method
