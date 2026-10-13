.class public final synthetic LQd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LQd0;

    invoke-direct {v0}, LQd0;-><init>()V

    sput-object v0, LQd0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/View;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LXd0;->a:Lke1;

    if-ne v0, p3, :cond_0

    const p3, 0x7f0b01bc

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget-object p3, LXd0;->a:Lke1;

    .line 3
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LXd0;->b:Lke1;

    if-ne v0, p3, :cond_1

    const p3, 0x7f0b0199

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object p3, LXd0;->b:Lke1;

    .line 6
    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, LXd0;->c:Lke1;

    if-ne v0, p3, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method
