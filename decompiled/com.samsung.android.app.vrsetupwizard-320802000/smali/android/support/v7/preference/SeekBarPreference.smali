.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/support/v7/widget/SeslSeekBar;

.field private m:Z

.field private n:Z

.field private o:Landroid/support/v7/widget/jl;

.field private p:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/ao;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/support/v7/preference/au;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/au;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->o:Landroid/support/v7/widget/jl;

    new-instance v0, Landroid/support/v7/preference/av;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/av;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->p:Landroid/view/View$OnKeyListener;

    sget-object v0, Landroid/support/v7/preference/at;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    sget p2, Landroid/support/v7/preference/at;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->j(I)V

    sget p2, Landroid/support/v7/preference/at;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->k(I)V

    sget p2, Landroid/support/v7/preference/at;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->m:Z

    sget p2, Landroid/support/v7/preference/at;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->n:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(IZ)V
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->h(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->i()V

    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/SeekBarPreference;Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->a(Landroid/support/v7/widget/SeslSeekBar;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->a(IZ)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->k:Z

    return p0
.end method

.method static synthetic a(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->k:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    return p0
.end method

.method static synthetic c(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    return p0
.end method

.method static synthetic d(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v7/preference/SeekBarPreference;->m:Z

    return p0
.end method

.method static synthetic e(Landroid/support/v7/preference/SeekBarPreference;)Landroid/support/v7/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->b:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    iget p1, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->c:I

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->i()V

    return-void
.end method

.method public a(Landroid/support/v7/preference/am;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/am;)V

    iget-object v0, p1, Landroid/support/v7/preference/am;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->p:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Landroid/support/v7/preference/aq;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/am;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SeslSeekBar;

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    if-nez p1, :cond_0

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->o:Landroid/support/v7/widget/jl;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroid/support/v7/widget/jl;)V

    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setMax(I)V

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->j:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->j:I

    :goto_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setProgress(I)V

    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->l:Landroid/support/v7/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->z()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslSeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->i(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->l(I)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->i()V

    :cond_1
    return-void
.end method

.method protected k()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->k()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->g:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->a:I

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->b:I

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->c:I

    return-object v1
.end method

.method public final k(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->j:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->i:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->h:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->j:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->i()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->a(IZ)V

    return-void
.end method
