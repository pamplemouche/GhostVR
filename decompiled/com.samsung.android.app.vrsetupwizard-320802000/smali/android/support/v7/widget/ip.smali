.class Landroid/support/v7/widget/ip;
.super Landroid/view/accessibility/AccessibilityNodeProvider;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;

.field private final b:Landroid/graphics/Rect;

.field private final c:[I

.field private d:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ip;->b:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/ip;->c:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/ip;->d:I

    return-void
.end method

.method private a(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v1, p0, Landroid/support/v7/widget/ip;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ip;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SeslNumberPicker;->a(Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->c:[I

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p2, p2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    aget p2, p1, v3

    aget p1, p1, v4

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p3, p3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3, v1}, Landroid/support/v7/widget/SeslNumberPicker;->a(Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p3, p0, Landroid/support/v7/widget/ip;->c:[I

    iget-object p4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p4, p4, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-eq p2, p1, :cond_0

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->z(Landroid/support/v7/widget/if;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->z(Landroid/support/v7/widget/if;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p3, p3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p3, p3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p3, p3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/SeslNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ip;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ip;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ip;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/ip;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ip;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v0}, Landroid/support/v7/widget/if;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v1}, Landroid/support/v7/widget/if;->l()I

    move-result v1

    if-le v0, v1, :cond_0

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

.method private b(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/a/j;->a(Landroid/content/res/Resources;)F

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/ip;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v3, v1}, Landroid/support/v4/c/f;->a(Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->c:[I

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p2, p2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SeslNumberPicker;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v3, v1}, Landroid/support/v4/c/f;->a(Landroid/graphics/Rect;F)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p0, Landroid/support/v7/widget/ip;->d:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x40

    goto :goto_0

    :cond_2
    const/16 p1, 0x80

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->j()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p2}, Landroid/support/v7/widget/if;->m()I

    move-result p2

    if-ge p1, p2, :cond_4

    :cond_3
    const/16 p1, 0x1000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->j()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p2}, Landroid/support/v7/widget/if;->l()I

    move-result p2

    if-le p1, p2, :cond_6

    :cond_5
    const/16 p1, 0x2000

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    return-object v0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v0}, Landroid/support/v7/widget/if;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v0}, Landroid/support/v7/widget/if;->k()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {v1}, Landroid/support/v7/widget/if;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

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

.method private c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->A(Landroid/support/v7/widget/if;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->B(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1, v0}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->C(Landroid/support/v7/widget/if;)I

    move-result v1

    if-lt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2, v0}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->C(Landroid/support/v7/widget/if;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->D(Landroid/support/v7/widget/if;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->A(Landroid/support/v7/widget/if;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->B(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1, v0}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->m(Landroid/support/v7/widget/if;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2, v0}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->C(Landroid/support/v7/widget/if;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->D(Landroid/support/v7/widget/if;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->A(Landroid/support/v7/widget/if;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->B(Landroid/support/v7/widget/if;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1, v0}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v1}, Landroid/support/v7/widget/if;->m(Landroid/support/v7/widget/if;)I

    move-result v1

    if-gt v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2, v0}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v3}, Landroid/support/v7/widget/if;->C(Landroid/support/v7/widget/if;)I

    move-result v3

    sub-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->D(Landroid/support/v7/widget/if;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ip;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ip;->a(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ip;->a(IILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v1, v1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v2, v2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v3, v3, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v4, v4, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollX()I

    move-result v8

    iget-object v4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v4, v4, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslNumberPicker;->getScrollY()I

    move-result v9

    iget-object v4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v4}, Landroid/support/v7/widget/if;->v(Landroid/support/v7/widget/if;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v4}, Landroid/support/v7/widget/if;->w(Landroid/support/v7/widget/if;)I

    move-result v4

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_1

    :cond_0
    if-eq p1, v5, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    :cond_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    const/4 v6, 0x3

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->d()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result p1

    iget-object v4, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v4}, Landroid/support/v7/widget/if;->x(Landroid/support/v7/widget/if;)I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    sub-int/2addr v3, v2

    add-int v11, v9, v3

    move-object v5, p0

    move v9, p1

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/ip;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p1

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->x(Landroid/support/v7/widget/if;)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v2}, Landroid/support/v7/widget/if;->x(Landroid/support/v7/widget/if;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v8, p1, v1, v0}, Landroid/support/v7/widget/ip;->a(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/ip;->c()Ljava/lang/String;

    move-result-object v7

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->x(Landroid/support/v7/widget/if;)I

    move-result v0

    add-int v11, p1, v0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/support/v7/widget/ip;->a(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_6
    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    sub-int/2addr v3, v2

    add-int/2addr v3, v9

    invoke-direct {p0, v8, v9, v1, v3}, Landroid/support/v7/widget/ip;->b(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, v0, p2, v1}, Landroid/support/v7/widget/ip;->a(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0, v5, v1}, Landroid/support/v7/widget/ip;->a(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v4, v1}, Landroid/support/v7/widget/ip;->a(Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v0, v3, v1}, Landroid/support/v7/widget/ip;->a(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->y(Landroid/support/v7/widget/if;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v0, v0, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object v2, v2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const/16 v5, 0x80

    const/16 v6, 0x40

    const/4 v7, 0x1

    if-eq p1, v3, :cond_1c

    const/high16 v3, 0x10000

    const v8, 0x8000

    const/16 v9, 0x10

    if-eq p1, v7, :cond_15

    const/4 v10, 0x2

    if-eq p1, v10, :cond_8

    const/4 v10, 0x3

    if-eq p1, v10, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eq p2, v9, :cond_6

    if-eq p2, v6, :cond_4

    if-eq p2, v5, :cond_2

    return v1

    :cond_2
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-ne p2, p1, :cond_3

    iput v4, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_3
    return v1

    :cond_4
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-eq p2, p1, :cond_5

    iput p1, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_5
    return v1

    :cond_6
    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p2, p2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, v1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, v7}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;Z)V

    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v7}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    return v7

    :cond_7
    return v1

    :cond_8
    if-eq p2, v7, :cond_13

    if-eq p2, v10, :cond_11

    if-eq p2, v9, :cond_f

    const/16 v2, 0x20

    if-eq p2, v2, :cond_d

    if-eq p2, v6, :cond_b

    if-eq p2, v5, :cond_9

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_9
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-ne p2, p1, :cond_a

    iput v4, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result p3

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_a
    return v1

    :cond_b
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->r(Landroid/support/v7/widget/if;)I

    move-result p3

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_c
    return v1

    :cond_d
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->i()V

    return v7

    :cond_e
    return v1

    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->h()V

    return v7

    :cond_10
    return v1

    :cond_11
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return v7

    :cond_12
    return v1

    :cond_13
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    return p1

    :cond_14
    return v1

    :cond_15
    if-eq p2, v9, :cond_1a

    if-eq p2, v6, :cond_18

    if-eq p2, v5, :cond_16

    return v1

    :cond_16
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-ne p2, p1, :cond_17

    iput v4, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_17
    return v1

    :cond_18
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-eq p2, p1, :cond_19

    iput p1, p0, Landroid/support/v7/widget/ip;->d:I

    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->t(Landroid/support/v7/widget/if;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    return v7

    :cond_19
    return v1

    :cond_1a
    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p2, p2, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, v1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, v1}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;Z)V

    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/ip;->a(II)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v7}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    return v7

    :cond_1b
    return v1

    :cond_1c
    if-eq p2, v6, :cond_25

    if-eq p2, v5, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1d
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->j()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p2}, Landroid/support/v7/widget/if;->l()I

    move-result p2

    if-le p1, p2, :cond_1f

    :cond_1e
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v1}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v7}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    return v7

    :cond_1f
    return v1

    :cond_20
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->j()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p1}, Landroid/support/v7/widget/if;->k()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-virtual {p2}, Landroid/support/v7/widget/if;->m()I

    move-result p2

    if-ge p1, p2, :cond_22

    :cond_21
    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v7}, Landroid/support/v7/widget/if;->f(Landroid/support/v7/widget/if;Z)V

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    invoke-static {p1, v7}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;Z)V

    return v7

    :cond_22
    return v1

    :cond_23
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-ne p2, p1, :cond_24

    iput v4, p0, Landroid/support/v7/widget/ip;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {p1}, Landroid/support/v4/view/aw;->d(Landroid/view/View;)V

    return v7

    :cond_24
    return v1

    :cond_25
    iget p2, p0, Landroid/support/v7/widget/ip;->d:I

    if-eq p2, p1, :cond_26

    iput p1, p0, Landroid/support/v7/widget/ip;->d:I

    iget-object p1, p0, Landroid/support/v7/widget/ip;->a:Landroid/support/v7/widget/if;

    iget-object p1, p1, Landroid/support/v7/widget/if;->a:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {p1}, Landroid/support/v4/view/aw;->e(Landroid/view/View;)Z

    return v7

    :cond_26
    return v1
.end method
