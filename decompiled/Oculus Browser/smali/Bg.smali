.class public abstract LBg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final w:LCg;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LCg;

    invoke-direct {v0}, LCg;-><init>()V

    iput-object v0, p0, LBg;->w:LCg;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LBg;->x:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Ldh;
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Ldh;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ldh;I)V
.end method

.method public a(Ldh;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LBg;->a(Ldh;I)V

    return-void
.end method

.method public b(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method
