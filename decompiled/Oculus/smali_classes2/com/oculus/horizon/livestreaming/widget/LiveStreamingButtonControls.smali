.class public Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;
.super Landroid/widget/LinearLayout;
.source "LiveStreamingButtonControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;,
        Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;
    }
.end annotation


# static fields
.field private static final mCubicInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isTalkButtonLongPressOngoing:Z

.field private final mActionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private final mJoinInVRButton:Landroid/widget/ImageButton;

.field private final mJoinInVRButtonText:Landroid/widget/TextView;

.field private final mLeaveButton:Landroid/widget/ImageButton;

.field private final mLeaveButtonText:Landroid/widget/TextView;

.field private final mTalkButton:Landroid/widget/Button;

.field private mTalkButtonAnimationsEnabled:Z

.field private mTalkButtonCallbackRunnable:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTalkButtonTapInstructionsDismissCallbackRunnable:Ljava/lang/Runnable;

.field private final mTalkButtonText:Landroid/widget/TextView;

.field private onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const v0, 0x3f2e147b    # 0.68f

    const v1, -0x40f33333    # -0.55f

    const v2, 0x3e87ae14    # 0.265f

    const v3, 0x3fc66666    # 1.55f

    .line 54
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/facebook/inject/ForAppContext;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x11

    const/4 v2, -0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v4, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->isTalkButtonLongPressOngoing:Z

    .line 65
    iput-boolean v3, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonAnimationsEnabled:Z

    .line 66
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonCallbackRunnable:Ljava/lang/Runnable;

    .line 67
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;

    .line 68
    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->live_streaming_button_controls:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    invoke-virtual {p0, v4}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setOrientation(I)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setGravity(I)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 90
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mContext:Landroid/content/Context;

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->join_in_vr_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    .line 93
    sget v0, Lcom/oculus/horizon/R$id;->talk_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 94
    sget v0, Lcom/oculus/horizon/R$id;->leave_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->leave_button_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->join_in_vr_button_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->talk_button_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mActionHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v1, Landroid/text/style/ImageSpan;

    sget v2, Lcom/oculus/horizon/R$drawable;->ic_mic_closed:I

    invoke-direct {v1, p1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 104
    const/16 v2, 0x21

    invoke-interface {v0, v1, v4, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    new-instance v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonTapInstructionsDismissCallbackRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    iput-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonCallbackRunnable:Ljava/lang/Runnable;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchUp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonAnimationsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->clearTalkButtonHoldIntructions()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateFontAlpha(Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic access$502(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->isTalkButtonLongPressOngoing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPress()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method private animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 347
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$5;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    if-eqz p5, :cond_0

    .line 361
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    :cond_0
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    if-eqz p4, :cond_1

    .line 365
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 369
    return-void
.end method

.method private animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 8

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 381
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 382
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 383
    new-instance v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$6;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/view/View;IIII)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    if-eqz p6, :cond_0

    .line 399
    invoke-virtual {v7, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    :cond_0
    int-to-long v0, p4

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    if-eqz p5, :cond_1

    .line 403
    invoke-virtual {v7, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    :cond_1
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    return-void

    .line 382
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFontAlpha(Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    .prologue
    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$7;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 426
    if-eqz p5, :cond_0

    .line 427
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 431
    return-void
.end method

.method private clearTalkButtonHoldIntructions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 271
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$drawable;->button_white_on_blue_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 274
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$drawable;->ic_mic_closed:I

    invoke-direct {v1, v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 275
    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {v0, v1, v2, v4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 276
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method private clearTalkButtonPressState()V
    .locals 7

    .prologue
    const/16 v4, 0xfa

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;->onLongPressReleased()V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 240
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 241
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v5, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;

    invoke-direct {v5, p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 238
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 260
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 262
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 263
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x0

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 267
    return-void
.end method

.method private onTalkButtonLongPress()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x96

    const/16 v1, 0x8

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonLongPressListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonLongPressListener;->onLongPress()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setTalkButtonEnabledState()V

    .line 291
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 293
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_full_screen_button_size:I

    .line 295
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v5, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 291
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 299
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 301
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_full_screen_button_size:I

    .line 303
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v5, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 299
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 307
    return-void
.end method

.method private onTalkButtonTouchDown()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x96

    .line 155
    iget-boolean v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonAnimationsEnabled:Z

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;->onTouchDown()V

    .line 163
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->isTalkButtonLongPressOngoing:Z

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonCallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonTapInstructionsDismissCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 169
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_touched_button_size:I

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 172
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_touched_button_margin:I

    .line 174
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 178
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_touched_button_size:I

    .line 182
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 183
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_touched_button_margin:I

    .line 185
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method private onTalkButtonTouchUp()V
    .locals 8

    .prologue
    const/16 v7, 0x96

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    invoke-interface {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;->onTouchUp()V

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->isTalkButtonLongPressOngoing:Z

    if-eqz v0, :cond_1

    .line 197
    iput-boolean v2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->isTalkButtonLongPressOngoing:Z

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0xfa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateFontAlpha(Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V

    .line 202
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 204
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    .line 206
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v4, v7

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 211
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    .line 215
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 216
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$dimen;->livestreaming_button_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v6, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mCubicInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v4, v7

    .line 211
    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButtonMargins(Landroid/view/View;IIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v0, Landroid/text/SpannableString;

    .line 223
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->live_streaming_hold_to_talk_help_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mActionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonTapInstructionsDismissCallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->clearTalkButtonPressState()V

    goto :goto_0
.end method


# virtual methods
.method public registerJoinInVRClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method

.method public registerLeaveButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method public registerTalkButtonTouchListener(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->onTalkButtonTouchListener:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$OnTalkButtonTouchListener;

    .line 330
    return-void
.end method

.method public setHeadphonesPluggedIn(Z)V
    .locals 3

    .prologue
    .line 528
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonAnimationsEnabled:Z

    .line 530
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->live_streaming_request_talk_button_headphones_on_label:I

    .line 531
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    if-eqz p1, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setTalkButtonEnabledState()V

    .line 541
    :goto_2
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->live_streaming_request_talk_button_label:I

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setTalkButtonMutedState()V

    goto :goto_2
.end method

.method public setTalkButtonEnabledState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_green_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 315
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$drawable;->ic_mic_open:I

    invoke-direct {v1, v2, v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 316
    const/16 v2, 0x21

    invoke-interface {v0, v1, v4, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 317
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public setTalkButtonMutedState()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->clearTalkButtonHoldIntructions()V

    .line 322
    return-void
.end method

.method public updateButtonVisibility(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
    .locals 6

    .prologue
    const/16 v3, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 434
    sget-object v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$8;->$SwitchMap$com$oculus$horizon$livestreaming$model$LiveStreamingSessionStatus:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 460
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    .line 469
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    .line 471
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p0

    move-object v5, v4

    .line 467
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 475
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    .line 477
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_large_button_size:I

    .line 479
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p0

    move-object v5, v4

    .line 475
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 483
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    .line 485
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_small_button_size:I

    .line 487
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p0

    move-object v5, v4

    .line 483
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 491
    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    .line 493
    invoke-virtual {p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$dimen;->livestreaming_small_button_size:I

    .line 495
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p0

    move-object v5, v4

    .line 491
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->animateButton(Landroid/view/View;IILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 501
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 509
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 517
    :pswitch_6
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mLeaveButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mTalkButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->mJoinInVRButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
