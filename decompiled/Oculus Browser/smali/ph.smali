.class public Lph;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lph;->w:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lph;->w:Landroid/support/v7/widget/SearchView;

    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->P:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->g()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->R:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->f()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->Q:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->h()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->S:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v1, :cond_5

    .line 10
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->e()V

    :cond_5
    :goto_0
    return-void
.end method
