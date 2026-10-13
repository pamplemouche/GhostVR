.class public LGe;
.super Landroid/widget/RadioButton;
.source "PG"


# instance fields
.field public final w:Lse;

.field public final x:LRe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-static {p1}, LKh;->a(Landroid/content/Context;)Landroid/content/Context;

    const v0, 0x7f0401cc

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lse;

    invoke-direct {p1, p0}, Lse;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, LGe;->w:Lse;

    .line 3
    invoke-virtual {p1, p2, v0}, Lse;->a(Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, LRe;

    invoke-direct {p1, p0}, LRe;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, LGe;->x:LRe;

    .line 5
    invoke-virtual {p1, p2, v0}, LRe;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, LGe;->w:Lse;

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, LGe;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, LGe;->w:Lse;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p1, Lse;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lse;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lse;->f:Z

    .line 6
    invoke-virtual {p1}, Lse;->a()V

    :cond_1
    :goto_0
    return-void
.end method
