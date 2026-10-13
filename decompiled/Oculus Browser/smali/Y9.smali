.class public LY9;
.super Ldh;
.source "PG"


# instance fields
.field public P:Landroid/view/View;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/ImageView;

.field public final synthetic S:LZ9;


# direct methods
.method public constructor <init>(LZ9;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY9;->S:LZ9;

    .line 2
    invoke-direct {p0, p2}, Ldh;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, LY9;->P:Landroid/view/View;

    const p1, 0x7f0b02ae

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LY9;->Q:Landroid/widget/TextView;

    const p1, 0x7f0b02ad

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LY9;->R:Landroid/widget/ImageView;

    return-void
.end method
