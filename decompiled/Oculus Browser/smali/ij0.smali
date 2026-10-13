.class public Lij0;
.super Lv9;
.source "PG"


# instance fields
.field public final synthetic I:Ljj0;


# direct methods
.method public constructor <init>(Ljj0;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lij0;->I:Ljj0;

    .line 2
    invoke-direct {p0, p2, p3}, Lv9;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lv9;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0296

    .line 2
    invoke-virtual {p0, p1}, Lm9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lhj0;

    iget-object v1, p0, Lij0;->I:Ljj0;

    invoke-direct {v0, v1}, Lhj0;-><init>(Ljj0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method
