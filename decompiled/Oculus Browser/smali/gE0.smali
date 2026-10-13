.class public final synthetic LgE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LiE0;


# direct methods
.method public constructor <init>(LiE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgE0;->w:LiE0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LgE0;->w:LiE0;

    .line 1
    iget-object p1, p1, LiE0;->A:LkE0;

    .line 2
    invoke-virtual {p1}, Lz2;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lz2;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lz2;->S:Lz2;

    .line 4
    check-cast p1, LjE0;

    .line 5
    invoke-interface {p1}, LjE0;->e()V

    :cond_1
    :goto_0
    return-void
.end method
