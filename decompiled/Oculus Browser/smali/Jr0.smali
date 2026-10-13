.class public abstract LJr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwr0;


# instance fields
.field public final w:Landroid/content/Context;

.field public final x:LTr0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LTr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJr0;->w:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LJr0;->x:LTr0;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LJr0;->x:LTr0;

    .line 2
    check-cast v0, Lmr0;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lhr0;

    invoke-direct {v1, v0, p1, p3}, Lhr0;-><init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    .line 4
    sget-object p1, LKr0;->c:Lke1;

    invoke-virtual {p2, p1, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, LJr0;->w:Landroid/content/Context;

    const p3, 0x7f0800a9

    .line 6
    new-instance v0, LPr0;

    invoke-static {p1, p3}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p1}, LPr0;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, LPr0;->c:Z

    .line 8
    iput-boolean p1, v0, LPr0;->b:Z

    .line 9
    invoke-virtual {v0}, LPr0;->a()LQr0;

    move-result-object p1

    .line 10
    sget-object p3, LKr0;->b:Lke1;

    invoke-virtual {p2, p3, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
