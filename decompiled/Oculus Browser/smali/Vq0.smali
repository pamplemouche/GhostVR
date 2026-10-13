.class public final synthetic LVq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LVq0;

    invoke-direct {v0}, LVq0;-><init>()V

    sput-object v0, LVq0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, Lks0;->a:Lke1;

    if-ne v0, p3, :cond_0

    const p3, 0x7f0b049e

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    sget-object p3, Lks0;->a:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    sget-object v0, Lks0;->b:Lke1;

    if-ne v0, p3, :cond_1

    const p3, 0x7f0b01e8

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    sget-object p3, Lks0;->b:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    sget-object v0, Lks0;->c:Lke1;

    if-ne v0, p3, :cond_2

    const p3, 0x7f0b04d5

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget-object v0, Lks0;->c:Lke1;

    .line 9
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 10
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0b04d4

    .line 11
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget-object v0, Lks0;->c:Lke1;

    .line 12
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0b04d9

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object p3, Lks0;->c:Lke1;

    .line 15
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 17
    :cond_2
    sget-object v0, Lks0;->d:Lke1;

    if-ne v0, p3, :cond_3

    .line 18
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 19
    :cond_3
    sget-object v0, Lsr0;->c:Lhe1;

    const v1, 0x7f0b017d

    if-ne v0, p3, :cond_6

    .line 20
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p3

    const v0, 0x7f0b017e

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p3, :cond_4

    const/16 v4, 0x8

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    .line 24
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lls0;->a(Landroid/widget/ImageView;Lle1;)V

    goto :goto_2

    .line 26
    :cond_6
    sget-object v0, Lks0;->e:Lke1;

    if-eq v0, p3, :cond_7

    sget-object v0, Lsr0;->a:Lhe1;

    if-ne v0, p3, :cond_8

    .line 27
    :cond_7
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lls0;->a(Landroid/widget/ImageView;Lle1;)V

    :cond_8
    :goto_2
    return-void
.end method
