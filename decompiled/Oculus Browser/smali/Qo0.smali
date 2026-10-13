.class public LQo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSo0;


# instance fields
.field public final a:LRo0;

.field public final b:LPo0;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public final m:Landroid/view/inputmethod/InputConnectionWrapper;


# direct methods
.method public constructor <init>(LRo0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LQo0;->d:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LQo0;->h:Z

    .line 4
    new-instance v1, LOo0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, LOo0;-><init>(LQo0;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v1, p0, LQo0;->m:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 5
    iput-object p1, p0, LQo0;->a:LRo0;

    .line 6
    new-instance p1, LPo0;

    invoke-direct {p1, p0, v2}, LPo0;-><init>(LQo0;LOo0;)V

    iput-object p1, p0, LQo0;->b:LPo0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 40
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionStart()I

    move-result v0

    iput v0, p0, LQo0;->k:I

    .line 41
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionEnd()I

    move-result v0

    iput v0, p0, LQo0;->l:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, LQo0;->c:I

    .line 43
    iget-object v0, p0, LQo0;->m:Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 44
    iget-object p1, p0, LQo0;->m:Landroid/view/inputmethod/InputConnectionWrapper;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget v0, p0, LQo0;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, p2}, LQo0;->b(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, LQo0;->a:LRo0;

    invoke-interface {p1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, v1, p2}, LQo0;->a(ZZ)V

    .line 7
    :cond_1
    invoke-virtual {p0}, LQo0;->j()V

    goto :goto_1

    .line 8
    :cond_2
    iput-boolean v1, p0, LQo0;->f:Z

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 34
    iget-object p1, p0, LQo0;->b:LPo0;

    .line 35
    iget-object v0, p1, LPo0;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 36
    iget-object p1, p1, LPo0;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, LQo0;->a:LRo0;

    invoke-interface {p1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, LQo0;->b:LPo0;

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    .line 38
    iget-object p1, p0, LQo0;->b:LPo0;

    invoke-virtual {p1}, LPo0;->a()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, LQo0;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 11
    invoke-virtual {p0}, LQo0;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 13
    iput-boolean v4, p0, LQo0;->h:Z

    .line 14
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15
    invoke-static {v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_0

    .line 16
    iget-object v4, p0, LQo0;->a:LRo0;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v4, v1}, LRo0;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, LQo0;->a:LRo0;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LRo0;->a(Ljava/lang/String;)V

    .line 18
    :cond_1
    :goto_0
    iget-object v1, p0, LQo0;->a:LRo0;

    invoke-interface {v1}, LRo0;->getSelectionStart()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, LQo0;->a:LRo0;

    .line 19
    invoke-interface {v1}, LRo0;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, LQo0;->a:LRo0;

    invoke-interface {v2}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 20
    :cond_2
    iget-object v1, p0, LQo0;->a:LRo0;

    invoke-interface {v1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, LRo0;->setSelection(II)V

    .line 21
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0, p2}, LRo0;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 23
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object p1, p0, LQo0;->b:LPo0;

    invoke-virtual {p1}, LPo0;->a()V

    goto :goto_1

    .line 25
    :cond_4
    iget-object v0, p0, LQo0;->b:LPo0;

    .line 26
    iget-object v1, v0, LPo0;->c:LQo0;

    .line 27
    iget-object v1, v1, LQo0;->a:LRo0;

    .line 28
    invoke-interface {v1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 30
    iput-object p2, v0, LPo0;->b:Ljava/lang/CharSequence;

    .line 31
    iput-object p1, v0, LPo0;->a:Ljava/lang/CharSequence;

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result p2

    const/16 v2, 0x21

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    :goto_1
    iput-boolean v3, p0, LQo0;->h:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, LQo0;->b:LPo0;

    invoke-virtual {p1}, LPo0;->a()V

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .line 45
    iget-boolean v0, p0, LQo0;->h:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "cr_AutocompleteModel"

    const-string v0, "notification ignored"

    .line 46
    invoke-static {p2, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    iput-boolean p1, p0, LQo0;->i:Z

    .line 48
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0, p2}, LRo0;->a(Z)V

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, LQo0;->a:LRo0;

    invoke-interface {p1}, LRo0;->getSelectionStart()I

    move-result p2

    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionStart()I

    move-result v0

    invoke-interface {p1, p2, v0}, LRo0;->setSelection(II)V

    :cond_1
    return-void
.end method

.method public b()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 11
    iget-object v0, p0, LQo0;->m:Landroid/view/inputmethod/InputConnectionWrapper;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LQo0;->h:Z

    return-void
.end method

.method public final b(II)Z
    .locals 3

    .line 2
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    iget-object v1, p0, LQo0;->b:LPo0;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 4
    iget-object v2, p0, LQo0;->b:LPo0;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ltz v1, :cond_2

    if-ne v1, p1, :cond_0

    if-eq v2, p2, :cond_2

    .line 5
    :cond_0
    iget-object p1, p0, LQo0;->b:LPo0;

    .line 6
    iget-object v2, p1, LPo0;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, LPo0;->a()V

    if-gt p2, v1, :cond_1

    .line 8
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 9
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LQo0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, LQo0;->b:LPo0;

    .line 3
    iget-object v0, v0, LPo0;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LQo0;->j:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0, p1}, LRo0;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, LQo0;->b:LPo0;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, LQo0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, LQo0;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, LQo0;->b:LPo0;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, LQo0;->b:LPo0;

    .line 2
    iget-object v1, v0, LPo0;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 3
    iget-object v0, v0, LPo0;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, LQo0;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    iget-object v2, p0, LQo0;->a:LRo0;

    invoke-interface {v2}, LRo0;->getSelectionStart()I

    move-result v2

    .line 4
    iget-object v3, p0, LQo0;->a:LRo0;

    invoke-interface {v3}, LRo0;->getSelectionEnd()I

    move-result v3

    .line 5
    iget-object v4, p0, LQo0;->a:LRo0;

    invoke-interface {v4}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v5, p0, LQo0;->b:LPo0;

    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 6
    iget-object v5, p0, LQo0;->a:LRo0;

    invoke-interface {v5}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-gez v4, :cond_1

    move v4, v5

    :cond_1
    const/4 v6, 0x1

    if-ne v2, v4, :cond_2

    if-ne v3, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 7
    iget-boolean v2, p0, LQo0;->j:Z

    if-nez v2, :cond_3

    iget v2, p0, LQo0;->c:I

    if-nez v2, :cond_3

    .line 8
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 9
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    if-ne v2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iget-object v1, p0, LQo0;->b:LPo0;

    .line 3
    iget-object v2, v1, LPo0;->a:Ljava/lang/CharSequence;

    .line 4
    iget-object v1, v1, LPo0;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    if-eq v0, v4, :cond_0

    .line 7
    iget-object v0, p0, LQo0;->b:LPo0;

    invoke-virtual {v0}, LPo0;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LQo0;->a:LRo0;

    .line 9
    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 10
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, LQo0;->b:LPo0;

    invoke-virtual {v0}, LPo0;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, LQo0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionStart()I

    move-result v0

    .line 2
    iget-object v1, p0, LQo0;->a:LRo0;

    invoke-interface {v1}, LRo0;->getSelectionEnd()I

    move-result v1

    .line 3
    iget v2, p0, LQo0;->k:I

    if-ne v0, v2, :cond_0

    iget v2, p0, LQo0;->l:I

    if-ne v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iput v0, p0, LQo0;->k:I

    .line 5
    iput v1, p0, LQo0;->l:I

    .line 6
    iget-object v2, p0, LQo0;->a:LRo0;

    invoke-interface {v2, v0, v1}, LRo0;->a(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1
    :goto_0
    iget p4, p0, LQo0;->c:I

    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0, p3, p1}, LQo0;->a(ZZ)V

    goto :goto_1

    :cond_1
    new-array p1, p2, [Ljava/lang/Object;

    const-string p4, "cr_AutocompleteModel"

    const-string v0, "onTextChanged: in batch edit"

    .line 3
    invoke-static {p4, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-boolean p3, p0, LQo0;->g:Z

    .line 5
    :goto_1
    iput-boolean p2, p0, LQo0;->j:Z

    return-void
.end method
