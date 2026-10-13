.class public LG1;
.super LF1;
.source "PG"


# instance fields
.field public final synthetic w:LJ6;

.field public final synthetic x:LH1;


# direct methods
.method public constructor <init>(LH1;LJ6;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG1;->x:LH1;

    iput-object p2, p0, LG1;->w:LJ6;

    invoke-direct {p0}, LF1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LE1;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG1;->w:LJ6;

    iget-object v1, p0, LG1;->x:LH1;

    iget-object v1, v1, LH1;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
