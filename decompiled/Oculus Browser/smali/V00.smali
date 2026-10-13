.class public final synthetic LV00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:La10;


# direct methods
.method public constructor <init>(La10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV00;->w:La10;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, LV00;->w:La10;

    .line 1
    iget-object v0, p1, La10;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p1, La10;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, La10;->B:Landroid/widget/PopupWindow;

    .line 3
    new-instance v7, LX00;

    invoke-direct {v7, p1}, LX00;-><init>(La10;)V

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, LH6;->a(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p1, La10;->D:Landroid/content/Context;

    iget-object v3, p1, La10;->B:Landroid/widget/PopupWindow;

    const v4, 0x7f130186

    new-instance v5, LY00;

    invoke-direct {v5, p1}, LY00;-><init>(La10;)V

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, La10;->z:Landroid/widget/EditText;

    goto :goto_1

    :cond_2
    iget-object p1, p1, La10;->A:Landroid/widget/ImageView;

    :goto_1
    move-object v6, p1

    .line 7
    invoke-static/range {v2 .. v7}, Le10;->a(Landroid/content/Context;Landroid/widget/PopupWindow;ILd10;Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
