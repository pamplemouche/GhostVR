.class public LQY0;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "PG"

# interfaces
.implements LOX0;


# static fields
.field public static final m:LtY0;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Runnable;

.field public final e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

.field public final f:Landroid/os/Handler;

.field public g:I

.field public final h:Ljava/util/concurrent/BlockingQueue;

.field public i:I

.field public j:LtY0;

.field public k:I

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, LHY0;

    new-instance v2, LaY0;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, LaY0;-><init>(II)V

    new-instance v3, LaY0;

    const/4 v0, -0x1

    invoke-direct {v3, v0, v0}, LaY0;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LHY0;-><init>(Ljava/lang/CharSequence;LaY0;LaY0;ZZ)V

    sput-object v6, LQY0;->m:LtY0;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 2
    new-instance p1, LIY0;

    invoke-direct {p1, p0}, LIY0;-><init>(LQY0;)V

    iput-object p1, p0, LQY0;->a:Ljava/lang/Runnable;

    .line 3
    new-instance p1, LJY0;

    invoke-direct {p1, p0}, LJY0;-><init>(LQY0;)V

    iput-object p1, p0, LQY0;->b:Ljava/lang/Runnable;

    .line 4
    new-instance p1, LKY0;

    invoke-direct {p1, p0}, LKY0;-><init>(LQY0;)V

    iput-object p1, p0, LQY0;->c:Ljava/lang/Runnable;

    .line 5
    new-instance p1, LLY0;

    invoke-direct {p1, p0}, LLY0;-><init>(LQY0;)V

    iput-object p1, p0, LQY0;->d:Ljava/lang/Runnable;

    .line 6
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, LQY0;->h:Ljava/util/concurrent/BlockingQueue;

    .line 7
    invoke-static {}, LXX0;->a()V

    .line 8
    iput-object p2, p0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 9
    iput-object p3, p0, LQY0;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(LQY0;)V
    .locals 2

    .line 11
    iget-object p0, p0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 12
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 14
    invoke-static {v0, v1, p0}, LJ/N;->M_V5g5ie(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 4
    iget-object v0, p0, LQY0;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final a(II)V
    .locals 3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Ljava/lang/CharSequence;IZI)Z

    .line 10
    iput p2, p0, LQY0;->i:I

    return-void
.end method

.method public final a(LtY0;)V
    .locals 2

    .line 1
    invoke-static {}, LXX0;->a()V

    .line 2
    :try_start_0
    iget-object v0, p0, LQY0;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr_Ime"

    const-string v1, "addToQueueOnUiThread interrupted"

    .line 3
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(LtY0;)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 4
    iget-object v1, p1, LtY0;->a:Ljava/lang/CharSequence;

    .line 5
    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 8
    iget-object v1, p1, LtY0;->b:LaY0;

    .line 9
    iget v2, v1, LaY0;->a:I

    .line 10
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 11
    iget v1, v1, LaY0;->b:I

    .line 12
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 13
    iget-boolean p1, p1, LtY0;->d:Z

    .line 14
    iput p1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object v0
.end method

.method public final b()V
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    iget-object v1, p0, LQY0;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public beginBatchEdit()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LQY0;->a()V

    .line 2
    invoke-virtual {p0}, LQY0;->a()V

    .line 3
    iget v0, p0, LQY0;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LQY0;->g:I

    return v1
.end method

.method public final c()LtY0;
    .locals 5

    .line 21
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "cr_Ime"

    const-string v2, "InputConnection API is not called on IME thread. Returning cached result."

    .line 22
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, LQY0;->j:LtY0;

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, LQY0;->a()V

    .line 25
    sget-object v0, LZ01;->a:LFW;

    iget-object v2, p0, LQY0;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    .line 26
    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 27
    invoke-virtual {p0}, LQY0;->a()V

    .line 28
    :goto_0
    :try_start_0
    iget-object v0, p0, LQY0;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtY0;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-virtual {v0}, LtY0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 30
    :cond_1
    iget-boolean v2, v0, LtY0;->e:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {p0, v0}, LQY0;->c(LtY0;)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, v0}, LLB;->a(Ljava/lang/Throwable;)V

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final c(LtY0;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, LQY0;->a()V

    .line 2
    iget v0, p0, LQY0;->g:I

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, LtY0;->b:LaY0;

    .line 4
    iget-object v1, p1, LtY0;->c:LaY0;

    .line 5
    iget-boolean v2, p0, LQY0;->l:Z

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0, p1}, LQY0;->b(LtY0;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    .line 7
    iget-object v2, p0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget v3, p0, LQY0;->k:I

    .line 8
    iget-object v4, v2, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v2

    check-cast v4, LYX0;

    .line 9
    invoke-virtual {v4}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v4, v2, v3, p1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 12
    iget v4, v0, LaY0;->a:I

    .line 13
    iget v5, v0, LaY0;->b:I

    .line 14
    iget v6, v1, LaY0;->a:I

    .line 15
    iget v7, v1, LaY0;->b:I

    .line 16
    iget-object v0, p1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    .line 17
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v3

    .line 18
    check-cast v0, LYX0;

    .line 19
    invoke-virtual {v0}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeConnection()V
    .locals 0

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "\n"

    .line 1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, LQY0;->beginBatchEdit()Z

    const-string p1, ""

    .line 3
    invoke-virtual {p0, p1, v3}, LQY0;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4
    sget-object p1, LZ01;->a:LFW;

    new-instance p2, LPY0;

    invoke-direct {p2, p0}, LPY0;-><init>(LQY0;)V

    .line 5
    invoke-static {p1, p2, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 6
    invoke-virtual {p0}, LQY0;->endBatchEdit()Z

    return v3

    .line 7
    :cond_1
    sget-object v0, LZ01;->a:LFW;

    new-instance v4, LxY0;

    invoke-direct {v4, p0, p1, p2}, LxY0;-><init>(LQY0;Ljava/lang/CharSequence;I)V

    .line 8
    invoke-static {v0, v4, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 9
    invoke-virtual {p0}, LQY0;->b()V

    return v3
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, LXX0;->a()V

    .line 2
    sget-object v0, LQY0;->m:LtY0;

    invoke-virtual {p0, v0}, LQY0;->a(LtY0;)V

    .line 3
    iget-object v0, p0, LQY0;->f:Landroid/os/Handler;

    iget-object v1, p0, LQY0;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LAY0;

    invoke-direct {v1, p0, p1, p2}, LAY0;-><init>(LQY0;II)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LBY0;

    invoke-direct {v1, p0, p1, p2}, LBY0;-><init>(LQY0;II)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LQY0;->a()V

    .line 2
    iget v0, p0, LQY0;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 3
    iput v0, p0, LQY0;->g:I

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object v0

    invoke-virtual {p0, v0}, LQY0;->c(LtY0;)V

    .line 5
    :cond_1
    iget v0, p0, LQY0;->g:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public finishComposingText()Z
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    iget-object v1, p0, LQY0;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, LtY0;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, v0, LtY0;->b:LaY0;

    .line 4
    iget v0, v0, LaY0;->a:I

    .line 5
    invoke-static {v1, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 1
    invoke-virtual {p0}, LQY0;->a()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, LQY0;->l:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, LQY0;->k:I

    .line 4
    :cond_2
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, LQY0;->b(LtY0;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, LQY0;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p1, LtY0;->b:LaY0;

    .line 3
    iget v2, v1, LaY0;->a:I

    .line 4
    iget v1, v1, LaY0;->b:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, LtY0;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p2, LtY0;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p2, LtY0;->b:LaY0;

    .line 3
    iget v1, v1, LaY0;->b:I

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget-object v0, p2, LtY0;->a:Ljava/lang/CharSequence;

    iget-object v1, p2, LtY0;->b:LaY0;

    .line 6
    iget v1, v1, LaY0;->b:I

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object p2, p2, LtY0;->b:LaY0;

    .line 8
    iget p2, p2, LaY0;->b:I

    add-int/2addr p2, p1

    .line 9
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, LQY0;->c()LtY0;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p2, LtY0;->b:LaY0;

    .line 3
    iget v0, v0, LaY0;->a:I

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget-object v1, p2, LtY0;->a:Ljava/lang/CharSequence;

    iget-object v2, p2, LtY0;->b:LaY0;

    .line 6
    iget v2, v2, LaY0;->a:I

    sub-int/2addr v2, p1

    .line 7
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p2, LtY0;->b:LaY0;

    .line 8
    iget p2, p2, LaY0;->a:I

    .line 9
    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LzY0;

    invoke-direct {v1, p0, p1}, LzY0;-><init>(LQY0;I)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LyY0;

    invoke-direct {v1, p0, p1}, LyY0;-><init>(LQY0;I)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LFY0;

    invoke-direct {v1, p0, p1, p2}, LFY0;-><init>(LQY0;Ljava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LGY0;

    invoke-direct {v1, p0, p1}, LGY0;-><init>(LQY0;I)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LCY0;

    invoke-direct {v1, p0, p1}, LCY0;-><init>(LQY0;Landroid/view/KeyEvent;)V

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 3
    invoke-virtual {p0}, LQY0;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LEY0;

    invoke-direct {v1, p0, p1, p2}, LEY0;-><init>(LQY0;II)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LOY0;

    invoke-direct {v2, p0, p1, p2, v0}, LOY0;-><init>(LQY0;Ljava/lang/CharSequence;IZ)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v1, v2, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 3
    invoke-virtual {p0}, LQY0;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public setSelection(II)Z
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LDY0;

    invoke-direct {v1, p0, p1, p2}, LDY0;-><init>(LQY0;II)V

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
