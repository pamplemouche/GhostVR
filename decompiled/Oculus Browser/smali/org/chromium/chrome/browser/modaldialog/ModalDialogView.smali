.class public Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;
.super Lorg/chromium/chrome/browser/ui/widget/BoundedLinearLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/view/ViewGroup;

.field public F:Landroid/view/View;

.field public G:Landroid/widget/Button;

.field public H:Landroid/widget/Button;

.field public I:Lorg/chromium/base/Callback;

.field public J:Z

.field public K:Z

.field public z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ui/widget/BoundedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public static final synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    const-class p0, Landroid/view/MotionEvent;

    const-string v0, "FLAG_WINDOW_IS_PARTIALLY_OBSCURED"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reflection failure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ModalDialogView"

    invoke-static {v0, p0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(I)Landroid/widget/Button;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    return-object p1

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 11
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->F:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 3
    :goto_2
    iget-object v5, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->D:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 4
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->J:Z

    if-eqz v6, :cond_3

    if-nez v4, :cond_5

    :cond_3
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 5
    :cond_5
    :goto_3
    iget-object v6, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->D:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->I:Lorg/chromium/base/Callback;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->I:Lorg/chromium/base/Callback;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0280

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    const v0, 0x7f0b0498

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    const v1, 0x7f0b0494

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->B:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->A:Landroid/view/ViewGroup;

    const v1, 0x7f0b049a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->C:Landroid/widget/ImageView;

    const v0, 0x7f0b0278

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->D:Landroid/widget/TextView;

    const v0, 0x7f0b012f

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->E:Landroid/view/ViewGroup;

    const v0, 0x7f0b008f

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->F:Landroid/view/View;

    const v0, 0x7f0b0358

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    const v0, 0x7f0b02c4

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->G:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->b()V

    .line 14
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->a()V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/modaldialog/ModalDialogView;->z:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    sget-object v1, Lcl0;->w:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
