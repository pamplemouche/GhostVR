.class public Ly61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LB61;
.implements Lg61;


# instance fields
.field public final w:Lj71;

.field public final x:LK61;

.field public y:Lg61;

.field public z:I


# direct methods
.method public constructor <init>(Lj71;LK61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly61;->w:Lj71;

    .line 3
    iput-object p2, p0, Ly61;->x:LK61;

    return-void
.end method


# virtual methods
.method public a(Ly71;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly61;->y:Lg61;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lg61;->a(Ly71;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly61;->x:LK61;

    invoke-interface {v0}, LJ61;->close()V

    return-void
.end method
