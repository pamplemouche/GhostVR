.class public Lne;
.super Landroid/widget/AutoCompleteTextView;
.source "PG"


# static fields
.field public static final y:[I


# instance fields
.field public final w:Loe;

.field public final x:LRe;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    .line 1
    sput-object v0, Lne;->y:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-static {p1}, LKh;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lne;->y:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1}, LNh;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iget-object p1, p1, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    new-instance p1, Loe;

    invoke-direct {p1, p0}, Loe;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lne;->w:Loe;

    .line 7
    invoke-virtual {p1, p2, p3}, Loe;->a(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, LRe;

    invoke-direct {p1, p0}, LRe;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lne;->x:LRe;

    .line 9
    invoke-virtual {p1, p2, p3}, LRe;->a(Landroid/util/AttributeSet;I)V

    .line 10
    iget-object p1, p0, Lne;->x:LRe;

    invoke-virtual {p1}, LRe;->a()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lne;->w:Loe;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Loe;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lne;->x:LRe;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, LRe;->a()V

    :cond_1
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, LAe;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lne;->w:Loe;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Loe;->d()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lne;->w:Loe;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Loe;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw8;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lne;->x:LRe;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, LRe;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
