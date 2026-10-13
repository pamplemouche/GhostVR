.class public final synthetic Lov0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lyv0;

.field public final x:LH91;


# direct methods
.method public constructor <init>(Lyv0;LH91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lov0;->w:Lyv0;

    iput-object p2, p0, Lov0;->x:LH91;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lov0;->w:Lyv0;

    iget-object v1, p0, Lov0;->x:LH91;

    .line 1
    iget-object v2, v0, Lyv0;->I:LUt0;

    iget-object v1, v1, LH91;->d:LO81;

    .line 2
    iput-object v1, v2, LUt0;->u:LO81;

    .line 3
    iget-object v1, v0, Lyv0;->h0:LZw0;

    .line 4
    invoke-virtual {v1}, LZw0;->b()LCQ0;

    move-result-object v1

    check-cast v1, Lju0;

    .line 5
    invoke-virtual {v0, v1}, Lyv0;->a(Lju0;)V

    return-void
.end method
