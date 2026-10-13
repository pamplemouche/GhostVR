.class public final synthetic LfE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LiE0;

.field public final x:Ljava/lang/String;

.field public final y:Z


# direct methods
.method public constructor <init>(LiE0;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfE0;->w:LiE0;

    iput-object p2, p0, LfE0;->x:Ljava/lang/String;

    iput-boolean p3, p0, LfE0;->y:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LfE0;->w:LiE0;

    iget-object v0, p0, LfE0;->x:Ljava/lang/String;

    iget-boolean v1, p0, LfE0;->y:Z

    .line 1
    iget-object p1, p1, LiE0;->A:LkE0;

    .line 2
    invoke-virtual {p1}, Lz2;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lz2;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p1, Lz2;->S:Lz2;

    .line 4
    check-cast v2, LjE0;

    .line 5
    invoke-interface {v2, v0, v1}, LjE0;->a(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ls2;->g(Z)V

    :cond_1
    :goto_0
    return-void
.end method
