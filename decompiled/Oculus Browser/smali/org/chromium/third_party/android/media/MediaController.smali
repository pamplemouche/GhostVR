.class public Lorg/chromium/third_party/android/media/MediaController;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/lang/StringBuilder;

.field public G:Ljava/util/Formatter;

.field public H:Landroid/widget/ImageButton;

.field public I:Landroid/widget/ImageButton;

.field public J:Landroid/widget/ImageButton;

.field public K:Landroid/widget/ImageButton;

.field public L:Landroid/widget/ImageButton;

.field public M:Landroid/view/View$OnClickListener;

.field public N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public O:Landroid/view/View$OnClickListener;

.field public P:Landroid/view/View$OnClickListener;

.field public w:Landroid/content/Context;

.field public x:Landroid/view/ViewGroup;

.field public y:Landroid/widget/SeekBar;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, LIb1;

    invoke-direct {p2, p0}, LIb1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->M:Landroid/view/View$OnClickListener;

    .line 3
    new-instance p2, LJb1;

    invoke-direct {p2, p0}, LJb1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    new-instance p2, LKb1;

    invoke-direct {p2, p0}, LKb1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->O:Landroid/view/View$OnClickListener;

    .line 5
    new-instance p2, LLb1;

    invoke-direct {p2, p0}, LLb1;-><init>(Lorg/chromium/third_party/android/media/MediaController;)V

    iput-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->P:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->w:Landroid/content/Context;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lorg/chromium/third_party/android/media/MediaController;->C:Z

    const-string v0, "layout_inflater"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e0102

    .line 9
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b033b

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->H:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 12
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->H:Landroid/widget/ImageButton;

    iget-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x7f0b01c1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->I:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 14
    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->I:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lorg/chromium/third_party/android/media/MediaController;->C:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    const p1, 0x7f0b0386

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->J:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    .line 17
    iget-object v1, p0, Lorg/chromium/third_party/android/media/MediaController;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->J:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lorg/chromium/third_party/android/media/MediaController;->C:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    const p1, 0x7f0b02d4

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->K:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    const p1, 0x7f0b035e

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->L:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_6
    const p1, 0x7f0b025d

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->x:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    const p2, 0x7f0b025c

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->y:Landroid/widget/SeekBar;

    if-eqz p1, :cond_7

    .line 25
    iget-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->N:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 26
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->y:Landroid/widget/SeekBar;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_7
    const p1, 0x7f0b048f

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->z:Landroid/widget/TextView;

    const p1, 0x7f0b0490

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->A:Landroid/widget/TextView;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->F:Ljava/lang/StringBuilder;

    .line 30
    new-instance p1, Ljava/util/Formatter;

    iget-object p2, p0, Lorg/chromium/third_party/android/media/MediaController;->F:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->G:Ljava/util/Formatter;

    .line 31
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->K:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->K:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/chromium/third_party/android/media/MediaController;->D:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 34
    :cond_8
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->L:Landroid/widget/ImageButton;

    if-eqz p1, :cond_9

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lorg/chromium/third_party/android/media/MediaController;->L:Landroid/widget/ImageButton;

    iget-boolean p2, p0, Lorg/chromium/third_party/android/media/MediaController;->E:Z

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public static synthetic a(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static synthetic b(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lorg/chromium/third_party/android/media/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method
