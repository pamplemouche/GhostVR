.class public final synthetic LzL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LzL0;

    invoke-direct {v0}, LzL0;-><init>()V

    sput-object v0, LzL0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/View;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LrL0;->a:Lfe1;

    if-eq p3, v0, :cond_0

    sget-object v0, LrL0;->b:Lce1;

    if-ne p3, v0, :cond_2

    :cond_0
    const p3, 0x7f0b04b3

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3
    sget-object v0, LrL0;->b:Lce1;

    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p2, LrL0;->a:Lfe1;

    invoke-virtual {p1, p2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f130616

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, LrL0;->a:Lfe1;

    .line 6
    invoke-virtual {p1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    .line 7
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
