.class public final synthetic LkL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LkL0;

    invoke-direct {v0}, LkL0;-><init>()V

    sput-object v0, LkL0;->a:Lne1;

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

    check-cast p2, LvL0;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LsL0;->c:Lfe1;

    if-ne p3, v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    .line 3
    iput-object p1, p2, LvL0;->f:Lorg/chromium/base/Callback;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LsL0;->a:Lhe1;

    if-ne p3, v0, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p2, LvL0;->c:LtQ0;

    .line 7
    iget-object p1, p1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 8
    iget-object p3, p2, LvL0;->g:LuQ0;

    .line 9
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {p1, p3}, LWT;->a(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p2, LvL0;->c:LtQ0;

    .line 11
    iget-object p1, p1, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 12
    iget-object p1, p1, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_2
    iget-object p1, p2, LvL0;->c:LtQ0;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, LtQ0;->a(LsQ0;Z)V

    goto :goto_0

    .line 15
    :cond_3
    sget-object v0, LsL0;->d:Lke1;

    if-ne p3, v0, :cond_4

    .line 16
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 17
    iget-object p2, p2, LvL0;->e:Landroid/widget/LinearLayout;

    const p3, 0x7f0b04b2

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, LtL0;

    invoke-direct {p3, p1}, LtL0;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 19
    :cond_4
    sget-object v0, LsL0;->b:Lfe1;

    if-ne p3, v0, :cond_5

    .line 20
    new-instance p3, Lte1;

    new-instance v1, Lxe1;

    .line 21
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LKd1;

    sget-object v0, LwL0;->a:Lye1;

    sget-object v2, LxL0;->a:Lwe1;

    invoke-direct {v1, p1, v0, v2}, Lxe1;-><init>(LKd1;Lye1;Lwe1;)V

    sget-object p1, LyL0;->a:Lse1;

    invoke-direct {p3, v1, p1}, Lte1;-><init>(Lre1;Lse1;)V

    .line 22
    iget-object p1, p2, LvL0;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    :cond_5
    :goto_0
    return-void
.end method
