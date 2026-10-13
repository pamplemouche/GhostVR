.class public abstract LKp0;
.super LNo0;
.source "PG"


# static fields
.field public static final m0:LUU;

.field public static final n0:LUU;

.field public static final o0:LUU;

.field public static final p0:LdV;

.field public static final q0:LdV;

.field public static final r0:LdV;


# instance fields
.field public F:J

.field public G:Z

.field public H:Z

.field public I:I

.field public J:LGp0;

.field public K:LJp0;

.field public L:Landroid/text/TextWatcher;

.field public M:LHp0;

.field public N:LIp0;

.field public final O:Landroid/view/GestureDetector;

.field public final P:LVo0;

.field public Q:Z

.field public R:Z

.field public S:Landroid/view/MotionEvent;

.field public T:Z

.field public U:Z

.field public V:I

.field public W:I

.field public a0:Ljava/lang/String;

.field public b0:I

.field public c0:I

.field public d0:F

.field public e0:Z

.field public f0:Z

.field public final g0:[I

.field public h0:F

.field public i0:I

.field public j0:I

.field public k0:Ljava/lang/CharSequence;

.field public l0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, LKp0;

    .line 2
    new-instance v0, LUU;

    const-string v1, "Omnibox.LongPress.Copy"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->m0:LUU;

    .line 3
    new-instance v0, LUU;

    const-string v1, "Omnibox.LongPress.Cut"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->n0:LUU;

    .line 4
    new-instance v0, LUU;

    const-string v1, "Omnibox.LongPress.Share"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->o0:LUU;

    .line 5
    new-instance v0, LdV;

    const-string v1, "Omnibox.TimeUntilFirst.Copy"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->p0:LdV;

    .line 6
    new-instance v0, LdV;

    const-string v1, "Omnibox.TimeUntilFirst.Cut"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->q0:LdV;

    .line 7
    new-instance v0, LdV;

    const-string v1, "Omnibox.TimeUntilFirst.Share"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    sput-object v0, LKp0;->r0:LdV;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, LNo0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, LKp0;->T:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, LKp0;->g0:[I

    const/4 p1, 0x3

    .line 4
    iput p1, p0, LKp0;->I:I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "default_input_method"

    .line 8
    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.htc.android.htcime"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    or-int/lit16 p1, p1, 0xb0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 11
    :cond_0
    new-instance p1, Landroid/view/GestureDetector;

    .line 12
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, LCp0;

    invoke-direct {v0, p0}, LCp0;-><init>(LKp0;)V

    .line 13
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p1, p0, LKp0;->O:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 15
    new-instance p1, LVo0;

    new-instance p2, LDp0;

    invoke-direct {p2, p0}, LDp0;-><init>(LKp0;)V

    invoke-direct {p1, p0, p2}, LVo0;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object p1, p0, LKp0;->P:LVo0;

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 17
    invoke-static {p0}, LbT;->a(Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public static a(IJ)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, LKp0;->r0:LdV;

    invoke-virtual {p0, v0, v1}, LdV;->a(J)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, LKp0;->p0:LdV;

    invoke-virtual {p0, v0, v1}, LdV;->a(J)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, LKp0;->q0:LdV;

    invoke-virtual {p0, v0, v1}, LdV;->a(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, LKp0;->U:Z

    .line 22
    iget-boolean v2, v0, LKp0;->Q:Z

    if-eqz v2, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move/from16 v3, p1

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 28
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v8, v10

    .line 29
    iget v9, v0, LKp0;->W:I

    if-ne v3, v9, :cond_3

    iget-object v9, v0, LKp0;->a0:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v0, LKp0;->b0:I

    if-ne v8, v9, :cond_3

    iget v9, v0, LKp0;->d0:F

    cmpl-float v9, v5, v9

    if-nez v9, :cond_3

    iget-boolean v9, v0, LKp0;->e0:Z

    if-ne v6, v9, :cond_3

    .line 30
    iget v1, v0, LKp0;->c0:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LkN0;->scrollTo(II)V

    return-void

    :cond_3
    const/4 v9, 0x0

    if-eq v3, v7, :cond_7

    if-eq v3, v4, :cond_4

    return-void

    .line 31
    :cond_4
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 34
    invoke-static {}, Ly6;->a()Ly6;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v7

    .line 35
    iget-object v4, v4, Ly6;->c:LA6;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    check-cast v4, LE6;

    invoke-virtual {v4, v7, v1, v10}, LE6;->a(Ljava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v9, v1

    goto :goto_2

    .line 37
    :cond_5
    invoke-static {}, Ly6;->a()Ly6;

    move-result-object v7

    .line 38
    iget-object v7, v7, Ly6;->c:LA6;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    check-cast v7, LE6;

    invoke-virtual {v7, v4, v1, v10}, LE6;->a(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v7

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v7, v7

    sub-float/2addr v1, v7

    add-float/2addr v1, v4

    .line 42
    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    :cond_6
    :goto_2
    float-to-int v1, v9

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    invoke-virtual {v0, v1, v4}, LkN0;->scrollTo(II)V

    goto/16 :goto_6

    .line 44
    :cond_7
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v12

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 47
    iget v12, v0, LKp0;->i0:I

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 48
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    .line 49
    invoke-virtual {v11, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    .line 50
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v14

    if-ne v14, v7, :cond_8

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    add-int/lit8 v7, v12, -0x1

    .line 51
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    :goto_3
    cmpg-float v7, v7, v13

    if-gez v7, :cond_9

    int-to-float v1, v10

    sub-float/2addr v13, v1

    .line 52
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v12, -0x1

    add-int/lit8 v14, v12, -0x2

    :goto_4
    move/from16 v16, v14

    move v14, v7

    move/from16 v7, v16

    if-ltz v7, :cond_b

    .line 53
    invoke-virtual {v11, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v15

    cmpl-float v15, v15, v13

    if-lez v15, :cond_a

    add-int/lit8 v14, v7, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v14, v14, -0x1

    .line 54
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 55
    :cond_b
    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 56
    invoke-interface {v4, v14, v12}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v4, v10

    cmpg-float v7, v1, v4

    if-gez v7, :cond_c

    add-float/2addr v13, v1

    sub-float/2addr v13, v4

    .line 58
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5

    :cond_c
    add-float v1, v13, v4

    :goto_5
    float-to-int v1, v1

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    invoke-virtual {v0, v1, v4}, LkN0;->scrollTo(II)V

    .line 60
    :goto_6
    iput v3, v0, LKp0;->W:I

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LKp0;->a0:Ljava/lang/String;

    .line 62
    iput v8, v0, LKp0;->b0:I

    .line 63
    iput v5, v0, LKp0;->d0:F

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v1

    iput v1, v0, LKp0;->c0:I

    .line 65
    iput-boolean v6, v0, LKp0;->e0:Z

    return-void
.end method

.method public a(LGp0;)V
    .locals 0

    .line 12
    iput-object p1, p0, LKp0;->J:LGp0;

    return-void
.end method

.method public a(LHp0;)V
    .locals 0

    .line 7
    iput-object p1, p0, LKp0;->M:LHp0;

    return-void
.end method

.method public a(LIp0;)V
    .locals 2

    .line 8
    iput-object p1, p0, LKp0;->N:LIp0;

    if-eqz p1, :cond_0

    .line 9
    iget v0, p0, LKp0;->I:I

    check-cast p1, LZo0;

    .line 10
    iget-object v1, p1, LZo0;->a:Lep0;

    invoke-static {v1, v0}, LA7;->g(Landroid/view/View;I)V

    .line 11
    iget-object p1, p1, LZo0;->a:Lep0;

    iget-object p1, p1, Lep0;->B:LPq0;

    check-cast p1, Lar0;

    invoke-virtual {p1}, Lar0;->a()V

    :cond_0
    return-void
.end method

.method public a(LJp0;)V
    .locals 0

    .line 13
    iput-object p1, p0, LKp0;->K:LJp0;

    return-void
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1

    .line 14
    iget-object v0, p0, LKp0;->L:Landroid/text/TextWatcher;

    .line 15
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, LKp0;->L:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    :cond_1
    iput-object p1, p0, LKp0;->L:Landroid/text/TextWatcher;

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 20
    iput-object p1, p0, LKp0;->k0:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lk00;)V
    .locals 1

    .line 5
    iget-object v0, p0, LKp0;->P:LVo0;

    .line 6
    iput-object p1, v0, LVo0;->A:Lk00;

    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 67
    iget-object v0, p0, LKp0;->K:LJp0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 68
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    goto :goto_0

    :cond_1
    const/16 p1, 0xfa0

    .line 69
    :goto_0
    invoke-virtual {p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-gt v2, p1, :cond_3

    .line 71
    iget-boolean p1, p0, LKp0;->f0:Z

    if-eqz p1, :cond_2

    .line 72
    const-class p1, LFp0;

    invoke-interface {v1, v0, v2, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LFp0;

    if-eqz p1, :cond_2

    .line 73
    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 74
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 75
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_2
    iput-boolean v0, p0, LKp0;->f0:Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    .line 77
    iput-boolean v3, p0, LKp0;->f0:Z

    .line 78
    const-class v3, LFp0;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    if-eq v3, v2, :cond_4

    goto :goto_2

    .line 79
    :cond_4
    div-int/lit8 p1, p1, 0x2

    .line 80
    sget-object v3, LFp0;->w:LFp0;

    sub-int/2addr v2, p1

    const/16 v4, 0x11

    invoke-interface {v1, v3, p1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "cr_UrlBar"

    const-string v1, "Text change observed, triggering autocomplete."

    .line 81
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, LKp0;->K:LJp0;

    .line 83
    invoke-virtual {p0}, LNo0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LNo0;->h()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-interface {p1, v0, v1}, LJp0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, LKp0;->i0:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    iput p2, p0, LKp0;->i0:I

    .line 3
    :goto_0
    iput p1, p0, LKp0;->j0:I

    .line 4
    invoke-virtual {p0}, LKp0;->p()V

    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LKp0;->Q:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, LNo0;->bringPointIntoView(I)Z

    move-result p1

    return p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LKp0;->T:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, LNo0;->B:Z

    .line 2
    iget-object v0, p0, LNo0;->A:LSo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LSo0;->b(Z)V

    :cond_0
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, LKp0;->J:LGp0;

    invoke-interface {v0}, LGp0;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, LKp0;->J:LGp0;

    invoke-interface {p1}, LGp0;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/EditText;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 2
    iget-boolean v0, p0, LKp0;->l0:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, LKp0;->k0:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LKp0;->Q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LKp0;->J:LGp0;

    invoke-interface {v0}, LGp0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextDirection(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextDirection(I)V

    :goto_1
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, LKp0;->I:I

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 1
    invoke-super {p0, p1}, LNo0;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2
    iget-object v1, p0, LKp0;->J:LGp0;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LGp0;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, LKp0;->H:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, LKp0;->H:Z

    .line 4
    iget-boolean p1, p0, LKp0;->T:Z

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5
    iget-boolean p1, p0, LKp0;->T:Z

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    .line 9
    :cond_3
    :goto_0
    iget p1, p0, LKp0;->I:I

    if-eq v0, p1, :cond_5

    .line 10
    iput v0, p0, LKp0;->I:I

    .line 11
    iget-object p1, p0, LKp0;->N:LIp0;

    if-eqz p1, :cond_4

    .line 12
    check-cast p1, LZo0;

    .line 13
    iget-object v1, p1, LZo0;->a:Lep0;

    invoke-static {v1, v0}, LA7;->g(Landroid/view/View;I)V

    .line 14
    iget-object p1, p1, LZo0;->a:Lep0;

    iget-object p1, p1, Lep0;->B:LPq0;

    check-cast p1, Lar0;

    invoke-virtual {p1}, Lar0;->a()V

    .line 15
    :cond_4
    invoke-virtual {p0}, LKp0;->p()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LKp0;->Q:Z

    .line 2
    invoke-super {p0, p1, p2, p3}, LNo0;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, LKp0;->U:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, LKp0;->F:J

    .line 5
    :cond_0
    iput-boolean p1, p0, LKp0;->G:Z

    .line 6
    invoke-virtual {p0}, LKp0;->n()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, LNo0;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LKp0;->P:LVo0;

    .line 3
    invoke-virtual {v0}, LVo0;->b()V

    .line 4
    iget-object v2, v0, LVo0;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, LVo0;->A:Lk00;

    .line 6
    iget-object v2, v0, LVo0;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    iput-boolean v1, v0, LVo0;->B:Z

    .line 8
    invoke-virtual {v0}, LVo0;->a()I

    move-result v1

    iput v1, v0, LVo0;->C:I

    .line 9
    iget-object v1, v0, LVo0;->w:Landroid/view/View;

    iget-object v0, v0, LVo0;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, LKp0;->U:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, LKp0;->j0:I

    invoke-virtual {p0, p1}, LKp0;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, LKp0;->V:I

    sub-int/2addr p4, p2

    if-eq p1, p4, :cond_1

    .line 5
    iget p1, p0, LKp0;->j0:I

    invoke-virtual {p0, p1}, LKp0;->a(I)V

    .line 6
    iput p4, p0, LKp0;->V:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, LKp0;->M:LHp0;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    return v1

    :cond_0
    const v3, 0x1020022

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_9

    .line 2
    check-cast v2, LQp0;

    if-eqz v2, :cond_8

    .line 3
    sget-object v1, LzT;->a:Landroid/content/Context;

    const-string v2, "clipboard"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 5
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 8
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, LJ/N;->M14CHwRm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v5}, LD01;->a(I)LF01;

    move-result-object v1

    .line 12
    invoke-interface {v1}, LF01;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 14
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v7

    .line 15
    iget-wide v7, v7, Lorg/chromium/ui/base/Clipboard;->c:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v7, v8}, LJ/N;->MN49cYVC(J)J

    move-result-wide v9

    :goto_2
    sub-long/2addr v2, v9

    const-wide/16 v14, 0x1

    const-wide/32 v16, 0x36ee80

    const/16 v18, 0x64

    const-string v11, "MobileOmnibox.LongPressPasteAge"

    move-wide v12, v2

    .line 17
    invoke-static/range {v11 .. v18}, LfV;->a(Ljava/lang/String;JJJI)V

    if-eqz v1, :cond_5

    const-wide/16 v14, 0x1

    const-wide/32 v16, 0x36ee80

    const/16 v18, 0x64

    const-string v11, "MobileOmnibox.LongPressPasteAge.URL"

    move-wide v12, v2

    .line 18
    invoke-static/range {v11 .. v18}, LfV;->a(Ljava/lang/String;JJJI)V

    goto :goto_3

    :cond_5
    const-wide/16 v14, 0x1

    const-wide/32 v16, 0x36ee80

    const/16 v18, 0x64

    const-string v11, "MobileOmnibox.LongPressPasteAge.TEXT"

    move-wide v12, v2

    .line 19
    invoke-static/range {v11 .. v18}, LfV;->a(Ljava/lang/String;JJJI)V

    :goto_3
    if-eqz v4, :cond_7

    .line 20
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 26
    :goto_4
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 27
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 28
    invoke-virtual/range {p0 .. p0}, LNo0;->k()V

    :cond_7
    return v5

    .line 29
    :cond_8
    throw v4

    :cond_9
    const v2, 0x1020021

    const v3, 0x1020020

    if-eq v1, v3, :cond_a

    if-ne v1, v2, :cond_15

    .line 30
    :cond_a
    iget-object v7, v0, LKp0;->J:LGp0;

    .line 31
    invoke-interface {v7}, LGp0;->g()Z

    move-result v7

    if-nez v7, :cond_15

    if-ne v1, v3, :cond_b

    .line 32
    sget-object v3, LKp0;->n0:LUU;

    invoke-virtual {v3}, LUU;->c()V

    goto :goto_5

    .line 33
    :cond_b
    sget-object v3, LKp0;->m0:LUU;

    invoke-virtual {v3}, LUU;->c()V

    .line 34
    :goto_5
    iget-boolean v3, v0, LKp0;->G:Z

    if-eqz v3, :cond_d

    if-ne v1, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    .line 35
    :goto_6
    iget-wide v7, v0, LKp0;->F:J

    .line 36
    invoke-static {v2, v7, v8}, LKp0;->a(IJ)V

    .line 37
    iput-boolean v6, v0, LKp0;->G:Z

    .line 38
    :cond_d
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v3, v0, LKp0;->M:LHp0;

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    .line 41
    check-cast v3, LQp0;

    .line 42
    iget-object v9, v3, LQp0;->z:LNp0;

    if-eqz v9, :cond_12

    iget-object v9, v9, LNp0;->a:Ljava/lang/String;

    if-nez v9, :cond_e

    goto :goto_8

    :cond_e
    if-eqz v7, :cond_f

    goto :goto_8

    .line 43
    :cond_f
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 44
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, v3, LQp0;->z:LNp0;

    iget-object v10, v10, LNp0;->a:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v10, v3, LQp0;->z:LNp0;

    .line 46
    iget-object v11, v10, LNp0;->c:Ljava/lang/String;

    if-eqz v11, :cond_10

    goto :goto_7

    :cond_10
    iget-object v11, v10, LNp0;->b:Ljava/lang/CharSequence;

    .line 47
    :goto_7
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 48
    invoke-static {v10, v11}, LQp0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    iget-object v3, v3, LQp0;->z:LNp0;

    iget-object v3, v3, LNp0;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, LQp0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 51
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_11

    goto :goto_8

    .line 52
    :cond_11
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :catch_0
    nop

    :cond_12
    :goto_8
    if-nez v4, :cond_13

    .line 53
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    return v1

    .line 54
    :cond_13
    invoke-virtual {v0, v5}, LKp0;->d(Z)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 57
    invoke-virtual {v0, v6}, LKp0;->d(Z)V

    .line 58
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    .line 59
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 60
    invoke-virtual {v0, v5}, LKp0;->d(Z)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, LKp0;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 63
    invoke-virtual {v0, v6}, LKp0;->d(Z)V

    :cond_14
    return v1

    :cond_15
    const v2, 0x1020035

    if-ne v1, v2, :cond_16

    .line 64
    sget-object v2, LKp0;->o0:LUU;

    invoke-virtual {v2}, LUU;->c()V

    .line 65
    iget-boolean v2, v0, LKp0;->G:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    .line 66
    iget-wide v3, v0, LKp0;->F:J

    invoke-static {v2, v3, v4}, LKp0;->a(IJ)V

    .line 67
    iput-boolean v6, v0, LKp0;->G:Z

    .line 68
    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "cr_UrlBar"

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, LKp0;->g0:[I

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 3
    iget-object v1, p0, LKp0;->g0:[I

    aget v1, v1, v2

    int-to-float v1, v1

    iput v1, p0, LKp0;->h0:F

    .line 4
    iget-boolean v1, p0, LKp0;->Q:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, LKp0;->R:Z

    .line 5
    :cond_0
    iget-boolean v1, p0, LKp0;->Q:Z

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LKp0;->S:Landroid/view/MotionEvent;

    .line 8
    :cond_1
    iget-object v0, p0, LKp0;->O:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, LKp0;->S:Landroid/view/MotionEvent;

    .line 12
    :cond_4
    iget-boolean v1, p0, LKp0;->R:Z

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    return v2

    :cond_5
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Ignoring IndexOutOfBoundsException in UrlBar#onTouchEvent."

    .line 15
    invoke-static {v0, p1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p1

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_6

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "Ignoring NPE in UrlBar#onTouchEvent."

    .line 17
    invoke-static {v0, p1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 18
    :cond_6
    throw p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, LEp0;

    invoke-direct {p1, p0}, LEp0;-><init>(LKp0;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, LKp0;->j0:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, LKp0;->U:Z

    return-void

    .line 3
    :cond_1
    iget v0, p0, LKp0;->j0:I

    invoke-virtual {p0, v0}, LKp0;->a(I)V

    return-void
.end method

.method public performLongClick()Z
    .locals 4

    .line 1
    iget-object v0, p0, LKp0;->g0:[I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 2
    iget v0, p0, LKp0;->h0:F

    iget-object v1, p0, LKp0;->g0:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return v3

    .line 3
    :cond_1
    iget-object v0, p0, LKp0;->S:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 4
    invoke-super {p0, v0}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LKp0;->S:Landroid/view/MotionEvent;

    .line 6
    :cond_2
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LNo0;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2
    invoke-virtual {p0}, LKp0;->n()V

    return-void
.end method
