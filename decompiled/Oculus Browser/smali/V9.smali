.class public LV9;
.super Ldh;
.source "PG"


# instance fields
.field public P:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LZ9;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ldh;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b02a4

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LV9;->P:Landroid/widget/TextView;

    return-void
.end method
