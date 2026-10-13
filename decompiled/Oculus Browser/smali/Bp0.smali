.class public LBp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LSo0;


# static fields
.field public static final n:Ljava/util/regex/Pattern;


# instance fields
.field public final a:LRo0;

.field public final b:LTo0;

.field public final c:LTo0;

.field public final d:LTo0;

.field public final e:LAp0;

.field public f:Lzp0;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\p{script=latin}\\p{script=cyrillic}\\p{script=greek}\\p{script=hebrew}\\p{Punct} 0-9]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LBp0;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(LRo0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LBp0;->g:Z

    .line 3
    iput-boolean v0, p0, LBp0;->h:Z

    .line 4
    iput-boolean v0, p0, LBp0;->m:Z

    .line 5
    iput-object p1, p0, LBp0;->a:LRo0;

    .line 6
    new-instance v0, LTo0;

    invoke-interface {p1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p1}, LRo0;->getSelectionStart()I

    move-result v2

    invoke-interface {p1}, LRo0;->getSelectionEnd()I

    move-result v3

    const-string v4, ""

    invoke-direct {v0, v1, v4, v2, v3}, LTo0;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, LBp0;->b:LTo0;

    .line 8
    new-instance v1, LTo0;

    invoke-direct {v1, v0}, LTo0;-><init>(LTo0;)V

    iput-object v1, p0, LBp0;->c:LTo0;

    .line 9
    new-instance v0, LTo0;

    iget-object v1, p0, LBp0;->b:LTo0;

    invoke-direct {v0, v1}, LTo0;-><init>(LTo0;)V

    iput-object v0, p0, LBp0;->d:LTo0;

    .line 10
    new-instance v0, LAp0;

    invoke-direct {v0, p1}, LAp0;-><init>(LRo0;)V

    iput-object v0, p0, LBp0;->e:LAp0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionStart()I

    move-result v0

    iput v0, p0, LBp0;->k:I

    .line 2
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionEnd()I

    move-result v0

    iput v0, p0, LBp0;->l:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LBp0;->i:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LBp0;->f:Lzp0;

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lzp0;

    invoke-direct {v0, p0}, Lzp0;-><init>(LBp0;)V

    iput-object v0, p0, LBp0;->f:Lzp0;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    .line 7
    iget-object p1, p0, LBp0;->f:Lzp0;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, LBp0;->b:LTo0;

    invoke-virtual {v0}, LTo0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 2

    .line 18
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 19
    iget v1, v0, LTo0;->c:I

    if-ne v1, p1, :cond_0

    .line 20
    iget v0, v0, LTo0;->d:I

    if-ne v0, p2, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 22
    iput p1, v0, LTo0;->c:I

    .line 23
    iput p2, v0, LTo0;->d:I

    .line 24
    iget v1, p0, LBp0;->i:I

    if-lez v1, :cond_1

    return-void

    .line 25
    :cond_1
    iget-object v0, v0, LTo0;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 27
    iget-object v1, p0, LBp0;->b:LTo0;

    invoke-virtual {v1}, LTo0;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    if-gt p1, v0, :cond_3

    if-le p2, v0, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, LBp0;->i()V

    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    iget-object p1, p0, LBp0;->f:Lzp0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lzp0;->a()V

    .line 30
    :cond_4
    :goto_1
    invoke-virtual {p0}, LBp0;->k()V

    .line 31
    invoke-virtual {p0}, LBp0;->j()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 4

    .line 8
    iget-object v0, p0, LBp0;->b:LTo0;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2, p1}, LTo0;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 9
    iget-object p1, p0, LBp0;->e:LAp0;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, LAp0;->a(Z)V

    .line 11
    iget-object v0, p1, LAp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, LAp0;->a(Landroid/text/Editable;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 13
    iget-object v1, p1, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p1, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    .line 15
    iget-object p1, p0, LBp0;->c:LTo0;

    iget-object v0, p0, LBp0;->b:LTo0;

    invoke-virtual {p1, v0}, LTo0;->a(LTo0;)V

    .line 16
    iget-object p1, p0, LBp0;->d:LTo0;

    iget-object v0, p0, LBp0;->b:LTo0;

    invoke-virtual {p1, v0}, LTo0;->a(LTo0;)V

    .line 17
    iget p1, p0, LBp0;->i:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, LBp0;->k()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    iget-object v0, p0, LBp0;->d:LTo0;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 41
    iput-object p1, v0, LTo0;->a:Ljava/lang/String;

    .line 42
    iput-object p2, v0, LTo0;->b:Ljava/lang/String;

    .line 43
    iput v1, v0, LTo0;->c:I

    .line 44
    iput v2, v0, LTo0;->d:I

    .line 45
    iget-object p1, p0, LBp0;->f:Lzp0;

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lzp0;->d()Z

    .line 47
    iget-object p1, p0, LBp0;->f:Lzp0;

    invoke-virtual {p1}, Lzp0;->e()Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, LBp0;->c:LTo0;

    const/4 v0, -0x1

    .line 33
    iput v0, p1, LTo0;->c:I

    .line 34
    iput v0, p1, LTo0;->d:I

    .line 35
    iget-object p1, p0, LBp0;->b:LTo0;

    .line 36
    iput v0, p1, LTo0;->c:I

    .line 37
    iput v0, p1, LTo0;->d:I

    :cond_0
    return-void
.end method

.method public b()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 2
    iget-object v0, p0, LBp0;->f:Lzp0;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LBp0;->h:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 2
    iget-object v0, v0, LTo0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, LBp0;->f:Lzp0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0, p1}, LRo0;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lzp0;->d()Z

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, LBp0;->f:Lzp0;

    invoke-virtual {v0}, Lzp0;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0, p1}, LRo0;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    .line 8
    iget-object v0, p0, LBp0;->f:Lzp0;

    invoke-virtual {v0}, Lzp0;->e()Z

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 2
    iget-object v0, v0, LTo0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LBp0;->b:LTo0;

    invoke-virtual {v0}, LTo0;->b()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LBp0;->m:Z

    return v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget v0, p0, LBp0;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, LBp0;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LBp0;->b:LTo0;

    .line 2
    invoke-virtual {v0}, LTo0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".iqqi"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "omronsoft"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".iwnn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 7
    iget-object v0, v0, LTo0;->a:Ljava/lang/String;

    .line 8
    sget-object v3, LBp0;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, LBp0;->d:LTo0;

    const-string v1, ""

    .line 2
    iput-object v1, v0, LTo0;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 4
    iput-object v1, v0, LTo0;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p0, LBp0;->f:Lzp0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lzp0;->d()Z

    .line 7
    iget-object v0, p0, LBp0;->f:Lzp0;

    invoke-virtual {v0}, Lzp0;->e()Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LBp0;->e:LAp0;

    invoke-virtual {v0}, LAp0;->a()Z

    .line 9
    invoke-virtual {p0}, LBp0;->j()V

    :goto_0
    return-void
.end method

.method public final j()V
    .locals 10

    .line 1
    iget v0, p0, LBp0;->i:I

    const-string v1, "cr_SpanAutocomplete"

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Did not notify - in batch edit."

    .line 2
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LBp0;->b:LTo0;

    iget-object v3, p0, LBp0;->c:LTo0;

    invoke-virtual {v0, v3}, LTo0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Did not notify - no change."

    .line 4
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, LBp0;->b:LTo0;

    iget-object v3, p0, LBp0;->c:LTo0;

    invoke-virtual {v0, v3}, LTo0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, LBp0;->c:LTo0;

    iget-object v3, p0, LBp0;->b:LTo0;

    .line 8
    invoke-virtual {v3, v0}, LTo0;->b(LTo0;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v0}, LTo0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 10
    iget-object v5, v3, LTo0;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 12
    iget-object v5, v3, LTo0;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v3, v0}, LTo0;->c(LTo0;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    iget-object v4, v3, LTo0;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 17
    iget-object v5, v0, LTo0;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 19
    iget-object v5, v0, LTo0;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 21
    iget-object v6, v0, LTo0;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    .line 23
    :cond_5
    iget-object v4, v3, LTo0;->a:Ljava/lang/String;

    iget-object v5, v0, LTo0;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-object v4, v0, LTo0;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 27
    iget-object v5, v0, LTo0;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v3}, LTo0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 30
    iget-object v5, v0, LTo0;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    .line 32
    :goto_1
    iput-boolean v2, p0, LBp0;->m:Z

    .line 33
    invoke-virtual {v0}, LTo0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, LTo0;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x10

    if-nez v7, :cond_8

    if-nez v4, :cond_7

    if-eqz v5, :cond_8

    .line 34
    :cond_7
    invoke-static {v8}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 35
    invoke-virtual {v0}, LTo0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v7, v6}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 37
    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 38
    invoke-virtual {v7, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 39
    iget-object v4, p0, LBp0;->a:LRo0;

    invoke-interface {v4, v7}, LRo0;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 40
    :cond_8
    iget v4, v0, LTo0;->c:I

    iget v5, v3, LTo0;->c:I

    if-ne v4, v5, :cond_9

    .line 41
    iget v0, v0, LTo0;->d:I

    iget v3, v3, LTo0;->d:I

    if-eq v0, v3, :cond_a

    .line 42
    :cond_9
    iget-object v0, p0, LBp0;->a:LRo0;

    const/16 v3, 0x2000

    .line 43
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 44
    invoke-interface {v0, v3}, LRo0;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_a
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, LBp0;->m:Z

    .line 46
    iget-object v3, p0, LBp0;->b:LTo0;

    .line 47
    invoke-virtual {v3}, LTo0;->b()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_2

    .line 48
    :cond_b
    invoke-static {v8}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 49
    iget-object v5, v3, LTo0;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v5, v3, LTo0;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 53
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 54
    iget-object v3, v3, LTo0;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 56
    iput-boolean v2, p0, LBp0;->m:Z

    .line 57
    iget-object v3, p0, LBp0;->a:LRo0;

    invoke-interface {v3, v4}, LRo0;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 58
    iput-boolean v0, p0, LBp0;->m:Z

    .line 59
    :goto_2
    iget-object v0, p0, LBp0;->b:LTo0;

    .line 60
    iget-object v0, v0, LTo0;->a:Ljava/lang/String;

    .line 61
    iget-object v3, p0, LBp0;->c:LTo0;

    .line 62
    iget-object v3, v3, LTo0;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, LBp0;->b:LTo0;

    .line 64
    invoke-virtual {v0}, LTo0;->b()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, LBp0;->c:LTo0;

    .line 65
    invoke-virtual {v0}, LTo0;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 66
    :cond_c
    iget-object v0, p0, LBp0;->c:LTo0;

    iget-object v1, p0, LBp0;->b:LTo0;

    invoke-virtual {v0, v1}, LTo0;->a(LTo0;)V

    return-void

    .line 67
    :cond_d
    iget-object v0, p0, LBp0;->c:LTo0;

    iget-object v3, p0, LBp0;->b:LTo0;

    invoke-virtual {v0, v3}, LTo0;->a(LTo0;)V

    .line 68
    iget-boolean v0, p0, LBp0;->h:Z

    if-eqz v0, :cond_e

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Did not notify - ignored."

    .line 69
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_e
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0, v2}, LRo0;->a(Z)V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, LBp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getSelectionStart()I

    move-result v0

    .line 2
    iget-object v1, p0, LBp0;->a:LRo0;

    invoke-interface {v1}, LRo0;->getSelectionEnd()I

    move-result v1

    .line 3
    iget v2, p0, LBp0;->k:I

    if-ne v0, v2, :cond_0

    iget v2, p0, LBp0;->l:I

    if-ne v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iput v0, p0, LBp0;->k:I

    .line 5
    iput v1, p0, LBp0;->l:I

    .line 6
    iget-object v2, p0, LBp0;->a:LRo0;

    invoke-interface {v2, v0, v1}, LRo0;->a(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    iget-object p2, p0, LBp0;->e:LAp0;

    iget-object p3, p0, LBp0;->b:LTo0;

    if-eqz p2, :cond_2

    .line 2
    instance-of p4, p1, Landroid/text/Editable;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    move-object p4, p1

    check-cast p4, Landroid/text/Editable;

    .line 4
    invoke-virtual {p2, p4}, LAp0;->a(Landroid/text/Editable;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, p3, LTo0;->a:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, p3, LTo0;->a:Ljava/lang/String;

    .line 9
    :goto_0
    iget p1, p0, LBp0;->i:I

    if-lez p1, :cond_1

    return-void

    .line 10
    :cond_1
    iput-boolean v0, p0, LBp0;->g:Z

    .line 11
    invoke-virtual {p0}, LBp0;->i()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
