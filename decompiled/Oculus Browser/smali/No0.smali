.class public abstract LNo0;
.super LkN0;
.source "PG"

# interfaces
.implements LRo0;


# instance fields
.field public A:LSo0;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public final z:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LNo0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LkN0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, LNo0;->B:Z

    const-string p2, "accessibility"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, LNo0;->z:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LNo0;->D:Z

    .line 3
    :cond_0
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, LSo0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-object v0, p0, LNo0;->z:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 3
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LNo0;->E:Z

    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LNo0;->D:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, LkN0;->bringPointIntoView(I)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LNo0;->E:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-interface {v0, p1}, LSo0;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->z:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public g()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->b()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->f()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LNo0;->C:Z

    .line 2
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LSo0;->d()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, LSo0;->h()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LNo0;->C:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lze;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object v1, p0, LNo0;->A:LSo0;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, LNo0;->A:LSo0;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-static {}, LPY;->a()Z

    move-result v1

    const-string v2, "cr_AutocompleteEdit"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v1, "SpannableInlineAutocomplete"

    .line 5
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Using non-spannable model..."

    .line 6
    invoke-static {v2, v4, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v1, LQo0;

    invoke-direct {v1, p0}, LQo0;-><init>(LRo0;)V

    iput-object v1, p0, LNo0;->A:LSo0;

    goto :goto_1

    :cond_3
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Using spannable model..."

    .line 8
    invoke-static {v2, v4, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, LBp0;

    invoke-direct {v1, p0}, LBp0;-><init>(LRo0;)V

    iput-object v1, p0, LNo0;->A:LSo0;

    .line 10
    :goto_1
    iget-object v1, p0, LNo0;->A:LSo0;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, LSo0;->b(Z)V

    .line 11
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    invoke-interface {v1, v2}, LSo0;->a(Z)V

    .line 12
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-virtual {p0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2}, LSo0;->a(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-virtual {p0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v3, v4}, LSo0;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 14
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    invoke-interface {v1, v2, v4}, LSo0;->a(II)V

    .line 15
    iget-boolean v1, p0, LNo0;->C:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-interface {v1}, LSo0;->d()V

    .line 16
    :cond_4
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-interface {v1, v3}, LSo0;->b(Z)V

    .line 17
    iget-object v1, p0, LNo0;->A:LSo0;

    iget-boolean v2, p0, LNo0;->B:Z

    invoke-interface {v1, v2}, LSo0;->b(Z)V

    .line 18
    :goto_2
    iget-object v1, p0, LNo0;->A:LSo0;

    invoke-interface {v1, p1}, LSo0;->a(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 19
    iget-boolean v1, p0, LNo0;->E:Z

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    return-object p1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LSo0;->a(Z)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, v0}, LNo0;->a(Ljava/lang/Throwable;LqU;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 5
    invoke-static {p1, v0}, LNo0;->a(Ljava/lang/Throwable;LqU;)V

    throw v1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, LNo0;->D:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LNo0;->D:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, LNo0;->bringPointIntoView(I)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, LSo0;->a(II)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LNo0;->C:Z

    .line 3
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, LSo0;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LNo0;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, LSo0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LNo0;->D:Z

    .line 2
    invoke-static {}, LqU;->a()LqU;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 4
    invoke-static {p2, v0}, LNo0;->a(Ljava/lang/Throwable;LqU;)V

    .line 5
    iget-object p2, p0, LNo0;->A:LSo0;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, LSo0;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 7
    invoke-static {p1, v0}, LNo0;->a(Ljava/lang/Throwable;LqU;)V

    throw p2
.end method
