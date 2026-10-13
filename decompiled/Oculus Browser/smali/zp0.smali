.class public Lzp0;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "PG"


# instance fields
.field public final a:LTo0;

.field public final synthetic b:LBp0;


# direct methods
.method public constructor <init>(LBp0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lzp0;->b:LBp0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 3
    new-instance v0, LTo0;

    .line 4
    iget-object p1, p1, LBp0;->b:LTo0;

    .line 5
    invoke-direct {v0, p1}, LTo0;-><init>(LTo0;)V

    iput-object v0, p0, Lzp0;->a:LTo0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 2
    iget-object v0, v0, LBp0;->b:LTo0;

    invoke-virtual {v0}, LTo0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 4
    iget-object v0, v0, LBp0;->b:LTo0;

    .line 5
    iget-object v1, v0, LTo0;->b:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, LTo0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LTo0;->a:Ljava/lang/String;

    const-string v2, ""

    .line 7
    iput-object v2, v0, LTo0;->b:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 9
    iget-object v2, v0, LBp0;->d:LTo0;

    .line 10
    iget-object v0, v0, LBp0;->b:LTo0;

    .line 11
    invoke-virtual {v2, v0}, LTo0;->a(LTo0;)V

    .line 12
    iget-object v0, p0, Lzp0;->b:LBp0;

    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, LBp0;->g:Z

    .line 14
    iget v2, v0, LBp0;->i:I

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lzp0;->c()Z

    .line 16
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 17
    iget-object v0, v0, LBp0;->e:LAp0;

    .line 18
    iget-object v1, v0, LAp0;->a:LRo0;

    invoke-interface {v1}, LRo0;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, v0, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, LAp0;->a(Z)V

    .line 20
    invoke-virtual {p0}, Lzp0;->b()Z

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v0, LBp0;->a:LRo0;

    .line 22
    invoke-interface {v0, v1}, LRo0;->append(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 2
    iget v1, v0, LBp0;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LBp0;->i:I

    .line 3
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 5
    iget v2, v1, LBp0;->i:I

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, LBp0;->k()V

    :cond_0
    return v0
.end method

.method public beginBatchEdit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-virtual {p0}, Lzp0;->c()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 2
    iget v1, v0, LBp0;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LBp0;->i:I

    .line 3
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->clearMetaKeyStates(I)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public d()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lzp0;->c()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 3
    iget v2, v1, LBp0;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lzp0;->a:LTo0;

    .line 5
    iget-object v1, v1, LBp0;->b:LTo0;

    .line 6
    invoke-virtual {v2, v1}, LTo0;->a(LTo0;)V

    goto :goto_0

    .line 7
    :cond_0
    iget v2, v1, LBp0;->j:I

    if-lez v2, :cond_1

    .line 8
    iget-object v1, v1, LBp0;->a:LRo0;

    .line 9
    invoke-interface {v1}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 10
    iget-object v2, p0, Lzp0;->b:LBp0;

    .line 11
    iget-object v2, v2, LBp0;->a:LRo0;

    .line 12
    invoke-interface {v2}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lzp0;->b:LBp0;

    .line 13
    iget v3, v3, LBp0;->j:I

    sub-int v3, v1, v3

    .line 14
    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lzp0;->b:LBp0;

    const/4 v2, 0x0

    .line 16
    iput v2, v1, LBp0;->j:I

    .line 17
    iget-object v1, v1, LBp0;->e:LAp0;

    .line 18
    invoke-virtual {v1}, LAp0;->a()Z

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public e()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 2
    iget-object v0, v0, LBp0;->b:LTo0;

    .line 3
    iget-object v1, p0, Lzp0;->a:LTo0;

    .line 4
    invoke-virtual {v0, v1}, LTo0;->b(LTo0;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, LTo0;->a:Ljava/lang/String;

    iget-object v0, v0, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lzp0;->b()Z

    move-result v3

    .line 7
    iget-object v5, p0, Lzp0;->a:LTo0;

    invoke-virtual {v5}, LTo0;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    iget-object v5, p0, Lzp0;->b:LBp0;

    .line 9
    iget v6, v5, LBp0;->i:I

    if-lez v6, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 11
    iput v6, v5, LBp0;->j:I

    .line 12
    :cond_1
    iget-object v5, p0, Lzp0;->b:LBp0;

    .line 13
    iget v6, v5, LBp0;->i:I

    if-nez v6, :cond_2

    .line 14
    iget-object v5, v5, LBp0;->a:LRo0;

    invoke-interface {v5}, LRo0;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.inputmethod"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 16
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    .line 17
    :cond_2
    invoke-virtual {p0}, Lzp0;->c()Z

    .line 18
    iget-object v4, p0, Lzp0;->b:LBp0;

    .line 19
    iget-object v4, v4, LBp0;->a:LRo0;

    .line 20
    invoke-interface {v4}, LRo0;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 21
    invoke-interface {v4, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 22
    invoke-virtual {p0}, Lzp0;->b()Z

    .line 23
    :cond_3
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 24
    iput-boolean v2, v0, LBp0;->g:Z

    .line 25
    iget-object v2, v0, LBp0;->d:LTo0;

    .line 26
    iput-object v1, v2, LTo0;->b:Ljava/lang/String;

    .line 27
    iget-object v2, v0, LBp0;->b:LTo0;

    .line 28
    iput-object v1, v2, LTo0;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, LBp0;->j()V

    return v3

    .line 30
    :cond_4
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 31
    iget-object v0, v0, LBp0;->e:LAp0;

    .line 32
    invoke-virtual {v0}, LAp0;->a()Z

    .line 33
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 34
    iget-object v0, v0, LBp0;->b:LTo0;

    .line 35
    invoke-virtual {v0}, LTo0;->c()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 36
    :cond_5
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 37
    iget-object v5, v0, LBp0;->b:LTo0;

    .line 38
    iget-object v0, v0, LBp0;->d:LTo0;

    .line 39
    iget-object v6, v5, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-gez v6, :cond_6

    goto :goto_1

    .line 40
    :cond_6
    iget-object v7, v5, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v0}, LTo0;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, LTo0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 41
    :cond_7
    iget-object v0, v0, LTo0;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, LTo0;->b:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_a

    .line 42
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 43
    iget-object v5, v0, LBp0;->e:LAp0;

    .line 44
    iget-object v0, v0, LBp0;->b:LTo0;

    if-eqz v5, :cond_9

    .line 45
    iget v3, v0, LTo0;->c:I

    .line 46
    iget-object v6, v5, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    if-nez v6, :cond_8

    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    iget-object v7, v5, LAp0;->a:LRo0;

    invoke-interface {v7}, LRo0;->getHighlightColor()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, v5, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    .line 47
    :cond_8
    new-instance v6, Landroid/text/SpannableString;

    .line 48
    iget-object v7, v0, LTo0;->b:Ljava/lang/String;

    .line 49
    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v7, v5, LAp0;->b:Landroid/text/style/BackgroundColorSpan;

    .line 51
    iget-object v0, v0, LTo0;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v2, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 53
    iget-object v0, v5, LAp0;->a:LRo0;

    invoke-interface {v0}, LRo0;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 54
    invoke-interface {v0, v6}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 55
    invoke-static {v0, v3, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 56
    invoke-virtual {v5, v2}, LAp0;->a(Z)V

    const/4 v0, 0x1

    goto :goto_4

    .line 57
    :cond_9
    throw v3

    :cond_a
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_b

    .line 58
    iget-object v0, p0, Lzp0;->b:LBp0;

    .line 59
    iget-object v3, v0, LBp0;->d:LTo0;

    .line 60
    iput-object v1, v3, LTo0;->b:Ljava/lang/String;

    .line 61
    iget-object v0, v0, LBp0;->b:LTo0;

    .line 62
    iput-object v1, v0, LTo0;->b:Ljava/lang/String;

    .line 63
    :cond_b
    invoke-virtual {p0}, Lzp0;->b()Z

    move-result v0

    .line 64
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 65
    iget-object v1, v1, LBp0;->b:LTo0;

    .line 66
    iget-object v3, p0, Lzp0;->a:LTo0;

    invoke-virtual {v1, v3}, LTo0;->c(LTo0;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lzp0;->a:LTo0;

    .line 67
    iget v3, v1, LTo0;->c:I

    if-nez v3, :cond_c

    iget v3, v1, LTo0;->d:I

    iget-object v1, v1, LTo0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v3, v1, :cond_c

    const/4 v2, 0x1

    :cond_c
    if-eqz v2, :cond_e

    .line 68
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 69
    iget-object v1, v1, LBp0;->b:LTo0;

    .line 70
    iget-object v1, v1, LTo0;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 72
    iget-object v1, v1, LBp0;->b:LTo0;

    .line 73
    invoke-virtual {v1}, LTo0;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 74
    :cond_d
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 75
    iput-boolean v4, v1, LBp0;->g:Z

    .line 76
    :cond_e
    iget-object v1, p0, Lzp0;->b:LBp0;

    .line 77
    invoke-virtual {v1}, LBp0;->j()V

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-virtual {p0}, Lzp0;->b()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->getCursorCapsMode(I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return-object p1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return-object p1
.end method

.method public performEditorAction(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-virtual {p0}, Lzp0;->a()V

    .line 3
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->performEditorAction(I)Z

    move-result p1

    .line 4
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->requestCursorUpdates(I)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingRegion(II)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzp0;->d()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lzp0;->e()Z

    return p1
.end method
