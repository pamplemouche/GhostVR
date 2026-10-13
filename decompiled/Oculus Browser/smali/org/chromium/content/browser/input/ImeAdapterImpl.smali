.class public Lorg/chromium/content/browser/input/ImeAdapterImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJ01;
.implements LcX0;
.implements LxU;


# instance fields
.field public A:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

.field public final B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field public C:Lorg/chromium/ui/base/ViewAndroidDelegate;

.field public D:LSX0;

.field public final E:Ljava/util/List;

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public final L:Landroid/graphics/Rect;

.field public M:Landroid/content/res/Configuration;

.field public N:I

.field public O:I

.field public P:Ljava/lang/String;

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public w:J

.field public x:LL01;

.field public y:LOX0;

.field public z:LNX0;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    .line 4
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    .line 5
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->I:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    .line 7
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->p()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->C:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 9
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 10
    new-instance v0, LYX0;

    invoke-direct {v0, p1}, LYX0;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->M:Landroid/content/res/Configuration;

    .line 12
    new-instance p1, LUX0;

    invoke-direct {p1, p0}, LUX0;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;)V

    .line 13
    new-instance v1, LSX0;

    new-instance v2, LPX0;

    invoke-direct {v2}, LPX0;-><init>()V

    invoke-direct {v1, v0, p1, v2}, LSX0;-><init>(LL01;LQX0;LRX0;)V

    .line 14
    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    .line 15
    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    .line 16
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 17
    invoke-static {p0, p1}, LJ/N;->MhbsQh1H(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 19
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, LgX0;->a(Lorg/chromium/content_public/browser/WebContents;)LgX0;

    move-result-object p1

    .line 20
    iget-object v0, p1, LgX0;->w:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 21
    iget-boolean p1, p1, LgX0;->z:Z

    if-eqz p1, :cond_0

    invoke-interface {p0}, LcX0;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public static a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;
    .locals 2

    .line 1
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const-class v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 2
    sget-object v1, LWX0;->a:Lt01;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Ljava/lang/Class;Lt01;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    return-object p0
.end method

.method private cancelComposition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->h()V

    :cond_0
    return-void
.end method

.method private focusedNodeChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, v0, LSX0;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, LSX0;->d:[F

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, LSX0;->e:Z

    .line 5
    iput-object v1, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 6
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->S:Z

    :cond_1
    return-void
.end method

.method private onConnectedToRenderProcess()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->T:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, LWY0;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    invoke-direct {v0, v1}, LWY0;-><init>(LL01;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->g()V

    return-void
.end method

.method private onNativeDestroyed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->g()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->T:Z

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v0, v1, LSX0;->a:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v1, LSX0;->d:[F

    .line 7
    iput-boolean v0, v1, LSX0;->e:Z

    .line 8
    iput-object v2, v1, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    :cond_0
    return-void
.end method

.method private onResizeScrollableViewport(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->s()V

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    return-void
.end method

.method private populateImeTextSpansFromJava(Ljava/lang/CharSequence;J)V
    .locals 19

    move-object/from16 v0, p1

    move-wide/from16 v9, p2

    .line 1
    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    move-object v11, v0

    check-cast v11, Landroid/text/SpannableString;

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Landroid/text/style/CharacterStyle;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Landroid/text/style/CharacterStyle;

    .line 4
    array-length v14, v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_c

    aget-object v0, v13, v15

    .line 5
    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 6
    instance-of v2, v0, Landroid/text/style/BackgroundColorSpan;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    check-cast v0, Landroid/text/style/BackgroundColorSpan;

    .line 8
    invoke-virtual {v0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v0

    .line 9
    invoke-static {v9, v10, v1, v2, v0}, LJ/N;->MqqhDONa(JIII)V

    goto/16 :goto_9

    .line 10
    :cond_1
    instance-of v2, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 12
    invoke-static {v9, v10, v1, v0}, LJ/N;->MFfRzF$Z(JII)V

    goto/16 :goto_9

    .line 13
    :cond_2
    instance-of v2, v0, Landroid/text/style/SuggestionSpan;

    if-eqz v2, :cond_b

    .line 14
    check-cast v0, Landroid/text/style/SuggestionSpan;

    and-int/lit16 v1, v1, 0x100

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 15
    :goto_1
    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 16
    :goto_2
    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 17
    :goto_3
    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    goto :goto_9

    :cond_7
    const v1, -0x77373738

    .line 18
    :try_start_0
    const-class v6, Landroid/text/style/SuggestionSpan;

    const-string v7, "getUnderlineColor"

    new-array v8, v12, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v1

    goto :goto_5

    :catch_0
    const v6, -0x77373738

    .line 20
    :goto_5
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const v7, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v7

    float-to-int v1, v1

    const v7, 0xffffff

    and-int/2addr v7, v6

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v7, v1

    .line 21
    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 22
    invoke-virtual {v11, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    const/16 v17, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v17, 0x1

    :goto_7
    if-eqz v4, :cond_a

    new-array v0, v12, [Ljava/lang/String;

    goto :goto_8

    .line 23
    :cond_a
    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object/from16 v18, v0

    move-wide/from16 v0, p2

    move v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v8, v18

    .line 24
    invoke-static/range {v0 .. v8}, LJ/N;->M$b45Vvn(JIIZZII[Ljava/lang/String;)V

    :cond_b
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private setCharacterBounds([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v1

    .line 3
    iget-boolean v2, v0, LSX0;->a:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, LSX0;->d:[F

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 6
    iput-object p1, v0, LSX0;->d:[F

    .line 7
    iget-boolean p1, v0, LSX0;->e:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, LSX0;->a(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateFrameInfo(FFZZFFF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v1

    .line 3
    iget-boolean v2, v0, LSX0;->a:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v0, LSX0;->t:LRX0;

    iget-object v3, v0, LSX0;->p:[I

    check-cast v2, LPX0;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    iget-object v2, v0, LSX0;->p:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v5, 0x1

    .line 7
    aget v2, v2, v5

    int-to-float v2, v2

    add-float/2addr v2, p2

    .line 8
    iget-boolean p2, v0, LSX0;->e:Z

    if-eqz p2, :cond_2

    iget p2, v0, LSX0;->f:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    iget p2, v0, LSX0;->g:F

    cmpl-float p2, v3, p2

    if-nez p2, :cond_2

    iget p2, v0, LSX0;->h:F

    cmpl-float p2, v2, p2

    if-nez p2, :cond_2

    iget-boolean p2, v0, LSX0;->i:Z

    if-ne p3, p2, :cond_2

    iget-boolean p2, v0, LSX0;->j:Z

    if-ne p4, p2, :cond_2

    iget p2, v0, LSX0;->k:F

    cmpl-float p2, p5, p2

    if-nez p2, :cond_2

    iget p2, v0, LSX0;->l:F

    cmpl-float p2, p6, p2

    if-nez p2, :cond_2

    iget p2, v0, LSX0;->m:F

    cmpl-float p2, p7, p2

    if-eqz p2, :cond_3

    .line 9
    :cond_2
    iput-object v4, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 10
    iput-boolean v5, v0, LSX0;->e:Z

    .line 11
    iput p1, v0, LSX0;->f:F

    .line 12
    iput v3, v0, LSX0;->g:F

    .line 13
    iput v2, v0, LSX0;->h:F

    .line 14
    iput-boolean p3, v0, LSX0;->i:Z

    .line 15
    iput-boolean p4, v0, LSX0;->j:Z

    .line 16
    iput p5, v0, LSX0;->k:F

    .line 17
    iput p6, v0, LSX0;->l:F

    .line 18
    iput p7, v0, LSX0;->m:F

    .line 19
    :cond_3
    iget-boolean p1, v0, LSX0;->b:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, LSX0;->c:Z

    if-eqz p1, :cond_5

    iget-object p1, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez p1, :cond_5

    .line 20
    :cond_4
    invoke-virtual {v0, v1}, LSX0;->a(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void

    .line 21
    :cond_6
    throw v4
.end method

.method private updateOnTouchDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->L:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private updateState(IIIIZZLjava/lang/String;IIIIZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    const/4 v9, 0x0

    const-string v10, "ImeAdapter.updateState"

    .line 1
    invoke-static {v10, v9}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-boolean v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->S:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    .line 3
    iput-boolean v12, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->S:Z

    move/from16 v11, p2

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    const/4 v14, 0x0

    .line 4
    :goto_0
    iput v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->G:I

    .line 5
    iget v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    if-eq v11, v2, :cond_3

    .line 6
    iput v2, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    if-ne v2, v13, :cond_2

    .line 7
    iget-object v2, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->M:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v13, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_3
    iget v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    if-eq v11, v0, :cond_5

    .line 9
    iput v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    if-nez v0, :cond_6

    :goto_4
    const/4 v2, 0x1

    .line 10
    :cond_6
    :goto_5
    iget v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->I:I

    if-eq v11, v3, :cond_7

    .line 11
    iput v3, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->I:I

    const/4 v14, 0x1

    .line 12
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->b()Z

    move-result v3

    const/4 v11, 0x2

    if-ne v0, v11, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    .line 13
    :goto_6
    iget-boolean v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->J:Z

    if-ne v11, v3, :cond_9

    iget-boolean v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->K:Z

    if-eq v11, v0, :cond_b

    .line 14
    :cond_9
    iget-object v11, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LK01;

    .line 15
    invoke-interface {v15, v3, v0}, LK01;->b(ZZ)V

    goto :goto_7

    .line 16
    :cond_a
    iput-boolean v3, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->J:Z

    .line 17
    iput-boolean v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->K:Z

    .line 18
    :cond_b
    iget-object v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->P:Ljava/lang/String;

    .line 19
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->N:I

    if-ne v0, v5, :cond_c

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->O:I

    if-ne v0, v6, :cond_c

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->Q:I

    if-ne v0, v7, :cond_c

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->R:I

    if-eq v0, v8, :cond_e

    .line 20
    :cond_c
    iget-object v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    .line 21
    iget-boolean v3, v0, LSX0;->a:Z

    if-nez v3, :cond_d

    goto :goto_8

    .line 22
    :cond_d
    iput-object v9, v0, LSX0;->n:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 23
    :cond_e
    :goto_8
    iput-object v4, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->P:Ljava/lang/String;

    .line 24
    iput v5, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->N:I

    .line 25
    iput v6, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->O:I

    .line 26
    iput v7, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->Q:I

    .line 27
    iput v8, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->R:I

    if-nez v2, :cond_12

    if-eqz p6, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v14, :cond_10

    .line 28
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->h()V

    :cond_10
    if-eqz p5, :cond_13

    .line 29
    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    if-eqz v0, :cond_11

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    if-eq v0, v13, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_13

    .line 30
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->i()V

    goto :goto_b

    .line 31
    :cond_12
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->d()V

    .line 32
    :cond_13
    :goto_b
    iget-object v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v0, :cond_16

    .line 33
    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_14

    iget v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_14

    const/4 v12, 0x1

    .line 34
    :cond_14
    iget-object v0, v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    check-cast v0, LQY0;

    if-eqz v0, :cond_15

    .line 35
    invoke-static {}, LXX0;->a()V

    .line 36
    new-instance v2, LtY0;

    new-instance v3, LaY0;

    invoke-direct {v3, v5, v6}, LaY0;-><init>(II)V

    new-instance v5, LaY0;

    invoke-direct {v5, v7, v8}, LaY0;-><init>(II)V

    move-object/from16 p1, v2

    move-object/from16 p2, p7

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v12

    move/from16 p6, p12

    invoke-direct/range {p1 .. p6}, LtY0;-><init>(Ljava/lang/CharSequence;LaY0;LaY0;ZZ)V

    iput-object v2, v0, LQY0;->j:LtY0;

    .line 37
    invoke-virtual {v0, v2}, LQY0;->a(LtY0;)V

    if-nez p12, :cond_16

    .line 38
    iget-object v2, v0, LQY0;->f:Landroid/os/Handler;

    iget-object v0, v0, LQY0;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 39
    :cond_15
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_16
    :goto_c
    invoke-static {v10}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v5, 0x12000000

    .line 5
    iput v5, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v2, :cond_1

    const/high16 v2, 0x13000000

    .line 6
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->b()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 8
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-nez v1, :cond_2

    goto/16 :goto_d

    .line 9
    :cond_2
    check-cast v1, LQY0;

    invoke-virtual {v1}, LQY0;->d()V

    .line 10
    iput-object v5, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    goto/16 :goto_d

    .line 11
    :cond_3
    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-nez v2, :cond_4

    goto/16 :goto_d

    .line 12
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v2

    .line 13
    iget-object v6, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    iget v7, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    iget v8, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->G:I

    iget v9, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    iget v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->I:I

    iget v11, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->N:I

    iget v12, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->O:I

    check-cast v6, LWY0;

    if-eqz v6, :cond_29

    .line 14
    invoke-static {}, LXX0;->a()V

    const/16 v13, 0xa1

    .line 15
    iput v13, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v13, v8, 0x2

    if-eqz v13, :cond_5

    const v13, 0x800a1

    .line 16
    iput v13, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_5
    const/16 v13, 0xe1

    const v15, 0x8000

    const/high16 v16, 0x20000

    const/4 v3, 0x7

    const/4 v5, 0x2

    const/4 v14, 0x3

    if-nez v9, :cond_e

    if-ne v7, v4, :cond_6

    and-int/lit8 v17, v8, 0x8

    if-nez v17, :cond_d

    .line 17
    iget v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v4, v15

    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    :cond_6
    const/16 v4, 0xe

    if-eq v7, v4, :cond_c

    const/16 v4, 0xf

    if-ne v7, v4, :cond_7

    goto :goto_1

    :cond_7
    if-ne v7, v5, :cond_8

    .line 18
    iput v13, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    :cond_8
    if-ne v7, v3, :cond_9

    const/16 v4, 0x11

    .line 19
    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    if-ne v7, v4, :cond_a

    const/16 v4, 0xd1

    .line 20
    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    :cond_a
    const/4 v4, 0x6

    if-ne v7, v4, :cond_b

    .line 21
    iput v14, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    :cond_b
    const/4 v4, 0x5

    if-ne v7, v4, :cond_d

    const/16 v4, 0x2002

    .line 22
    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    .line 23
    :cond_c
    :goto_1
    iget v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int v4, v4, v16

    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v17, v8, 0x8

    if-nez v17, :cond_d

    or-int/2addr v4, v15

    .line 24
    iput v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_d
    :goto_2
    const/4 v4, 0x6

    goto :goto_3

    :cond_e
    if-eq v9, v14, :cond_13

    const/4 v4, 0x4

    if-eq v9, v4, :cond_12

    const/4 v4, 0x5

    if-eq v9, v4, :cond_11

    const/4 v4, 0x6

    if-eq v9, v4, :cond_10

    if-eq v9, v3, :cond_f

    .line 25
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int v3, v3, v16

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v17, v8, 0x8

    if-nez v17, :cond_14

    or-int/2addr v3, v15

    .line 26
    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_f
    const/16 v3, 0x2002

    .line 27
    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    .line 28
    :cond_10
    iput v5, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_11
    const/16 v3, 0xd1

    const/4 v4, 0x6

    .line 29
    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_12
    const/16 v3, 0x11

    const/4 v4, 0x6

    .line 30
    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_13
    const/4 v4, 0x6

    .line 31
    iput v14, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 32
    :cond_14
    :goto_3
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v15, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int v15, v15, v16

    if-eqz v15, :cond_15

    const/4 v15, 0x1

    goto :goto_4

    :cond_15
    const/4 v15, 0x0

    :goto_4
    if-nez v10, :cond_18

    if-nez v9, :cond_16

    if-ne v7, v14, :cond_16

    goto :goto_7

    :cond_16
    if-eqz v15, :cond_17

    goto :goto_6

    :cond_17
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_19

    goto :goto_5

    :cond_18
    packed-switch v10, :pswitch_data_0

    const/4 v14, 0x0

    goto :goto_7

    :pswitch_0
    const/4 v14, 0x4

    goto :goto_7

    :pswitch_1
    const/4 v14, 0x7

    goto :goto_7

    :goto_5
    :pswitch_2
    const/4 v14, 0x5

    goto :goto_7

    :cond_19
    :pswitch_3
    const/4 v14, 0x2

    goto :goto_7

    :pswitch_4
    const/4 v14, 0x6

    goto :goto_7

    :goto_6
    :pswitch_5
    const/4 v14, 0x1

    :goto_7
    :pswitch_6
    or-int/2addr v3, v14

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v8, 0x80

    if-eqz v3, :cond_1a

    .line 33
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_8

    :cond_1a
    and-int/lit16 v3, v8, 0x100

    if-eqz v3, :cond_1b

    .line 34
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_8

    :cond_1b
    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_1c

    .line 35
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_1c
    :goto_8
    and-int/lit16 v3, v8, 0x1000

    if-eqz v3, :cond_1d

    .line 36
    iput v13, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 37
    :cond_1d
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 38
    iput v12, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1e

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 41
    :cond_1e
    iget-object v1, v6, LWY0;->e:LUY0;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, LUY0;->a()V

    .line 42
    :cond_1f
    iget-boolean v1, v6, LWY0;->g:Z

    if-eqz v1, :cond_23

    .line 43
    iget-boolean v1, v6, LWY0;->f:Z

    if-eqz v1, :cond_20

    goto :goto_9

    .line 44
    :cond_20
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_9

    .line 45
    :cond_21
    new-instance v1, LUY0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, LUY0;-><init>(LSY0;)V

    iput-object v1, v6, LWY0;->e:LUY0;

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, v6, LWY0;->e:LUY0;

    invoke-virtual {v1}, LUY0;->a()V

    .line 47
    :cond_22
    sget-object v1, LVY0;->a:Landroid/os/Handler;

    .line 48
    new-instance v3, LYY0;

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2, v6}, LYY0;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;LWY0;)V

    .line 50
    iput-object v3, v6, LWY0;->c:LYY0;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, v6, LWY0;->f:Z

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, v6, LWY0;->f:Z

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, LSY0;

    invoke-direct {v3, v6, v2}, LSY0;-><init>(LWY0;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    const/4 v5, 0x0

    goto :goto_b

    .line 55
    :cond_23
    iget-object v1, v6, LWY0;->d:LQY0;

    if-nez v1, :cond_24

    .line 56
    new-instance v1, LQY0;

    .line 57
    sget-object v3, LVY0;->a:Landroid/os/Handler;

    .line 58
    invoke-direct {v1, v2, v0, v3}, LQY0;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    iput-object v1, v6, LWY0;->d:LQY0;

    goto :goto_a

    .line 59
    :cond_24
    invoke-static {}, LXX0;->a()V

    .line 60
    iget-object v3, v1, LQY0;->f:Landroid/os/Handler;

    new-instance v4, LMY0;

    invoke-direct {v4, v1}, LMY0;-><init>(LQY0;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :goto_a
    iget-object v5, v6, LWY0;->d:LQY0;

    .line 62
    :goto_b
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-ne v1, v5, :cond_25

    goto :goto_c

    :cond_25
    if-eqz v1, :cond_26

    .line 63
    check-cast v1, LQY0;

    invoke-virtual {v1}, LQY0;->d()V

    .line 64
    :cond_26
    iput-object v5, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    .line 65
    :goto_c
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->D:LSX0;

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    .line 66
    invoke-virtual {v1, v3, v3, v2}, LSX0;->a(ZZLandroid/view/View;)Z

    .line 67
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 68
    iget-wide v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 69
    invoke-static {v1, v2, v0, v3, v3}, LJ/N;->MdwW1P2L(JLjava/lang/Object;ZZ)V

    .line 70
    :cond_28
    iget-object v5, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    :goto_d
    return-object v5

    :cond_29
    move-object v1, v5

    .line 71
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 81
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Landroid/view/KeyEvent;)Z

    .line 82
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public a(LK01;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->g()V

    .line 75
    :cond_0
    iget-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-eqz p2, :cond_2

    .line 76
    check-cast p2, LWY0;

    if-nez p1, :cond_1

    .line 77
    iget-object v0, p2, LWY0;->e:LUY0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LUY0;->a()V

    .line 78
    :cond_1
    iget-object p2, p2, LWY0;->c:LYY0;

    if-eqz p2, :cond_2

    .line 79
    iget-object p2, p2, LYY0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 4

    .line 72
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v12, p0

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_8

    const/16 v0, 0x9

    const/16 v4, 0x9

    .line 98
    :goto_0
    iget-object v0, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK01;

    move-object/from16 v5, p1

    invoke-interface {v3, v5}, LK01;->a(Landroid/view/KeyEvent;)V

    goto :goto_1

    :cond_2
    move-object/from16 v5, p1

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->f()V

    .line 100
    iget-wide v6, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    :cond_5
    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x200

    :cond_6
    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    or-int/lit16 v0, v1, 0x400

    move v8, v0

    goto :goto_2

    :cond_7
    move v8, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    const/4 v14, 0x0

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v15

    move-wide v0, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v5, v8

    move-wide v6, v9

    move v8, v11

    move v9, v13

    move v10, v14

    move v11, v15

    .line 104
    invoke-static/range {v0 .. v11}, LJ/N;->M1qwlrOP(JLjava/lang/Object;Ljava/lang/Object;IIJIIZI)Z

    move-result v0

    return v0

    :cond_8
    return v1
.end method

.method public a(Ljava/lang/CharSequence;IZI)Z
    .locals 15

    move-object v12, p0

    .line 83
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->f()V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 86
    iget-wide v0, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v8, 0xe5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-wide v6, v13

    move/from16 v11, p4

    .line 87
    invoke-static/range {v0 .. v11}, LJ/N;->M1qwlrOP(JLjava/lang/Object;Ljava/lang/Object;IIJIIZI)Z

    if-eqz p3, :cond_1

    .line 88
    iget-wide v0, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 89
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 90
    invoke-static/range {v0 .. v5}, LJ/N;->Mb6t43di(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-wide v0, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 92
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 93
    invoke-static/range {v0 .. v5}, LJ/N;->Mlslst_P(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 94
    :goto_0
    iget-wide v0, v12, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v8, 0xe5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-wide v6, v13

    move/from16 v11, p4

    .line 95
    invoke-static/range {v0 .. v11}, LJ/N;->M1qwlrOP(JLjava/lang/Object;Ljava/lang/Object;IIJIIZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->C:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->C:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    check-cast v1, LYX0;

    invoke-virtual {v1, v0}, LYX0;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    check-cast v1, LYX0;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 6
    :try_start_0
    invoke-virtual {v1}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 9
    :cond_2
    throw v3

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->h()V

    .line 12
    check-cast v0, LQY0;

    invoke-virtual {v0}, LQY0;->d()V

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK01;

    invoke-interface {v1}, LK01;->c()V

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->J:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->q()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v1, v0, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->a:J

    .line 6
    invoke-static {v1, v2, v0}, LJ/N;->MQWja$xA(JLjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    .line 2
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->G:I

    .line 3
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    .line 4
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->S:Z

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->d()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v1

    check-cast v0, LYX0;

    .line 3
    invoke-virtual {v0}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->y:LOX0;

    if-eqz v0, :cond_3

    check-cast v0, LQY0;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->c()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->x:LL01;

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->A:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->A:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    .line 6
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->A:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    .line 7
    check-cast v1, LYX0;

    if-eqz v1, :cond_4

    .line 8
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 9
    :try_start_0
    invoke-virtual {v1}, LYX0;->a()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->s()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, LWY0;

    .line 3
    iget-object v0, v0, LWY0;->c:LYY0;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, LYY0;->A:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, v0, LYY0;->x:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, LYY0;->B:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v0, LYY0;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->M:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->M:Landroid/content/res/Configuration;

    .line 4
    iget p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->F:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->H:I

    if-eq p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->h()V

    .line 6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->i()V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->h()V

    .line 9
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->M:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->d()V

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->i()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCurrentModeChanged(Landroid/view/Display$Mode;)V
    .locals 0

    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->g()V

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, LWY0;

    .line 4
    iget-object v1, v0, LWY0;->e:LUY0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LUY0;->a()V

    .line 5
    :cond_0
    iget-object v0, v0, LWY0;->c:LYY0;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, v0, LYY0;->A:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v0, LYY0;->B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDisplayModesChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onRefreshRateChanged(F)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->z:LNX0;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, LWY0;

    if-nez p1, :cond_0

    .line 3
    iget-object v1, v0, LWY0;->e:LUY0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LUY0;->a()V

    .line 4
    :cond_0
    iget-object v0, v0, LWY0;->c:LYY0;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, LYY0;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
