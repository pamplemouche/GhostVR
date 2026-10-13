.class public abstract LD61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LK61;


# instance fields
.field public final w:Lj71;

.field public final x:LE61;


# direct methods
.method public constructor <init>(Lj71;LE61;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LD61;->w:Lj71;

    .line 3
    iput-object p2, p0, LD61;->x:LE61;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LD61;->x:LE61;

    invoke-interface {v0}, LE61;->close()V

    return-void
.end method
