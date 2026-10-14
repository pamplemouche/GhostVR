.class public abstract Landroid/support/v7/preference/DialogPreference;
.super Landroid/support/v7/preference/Preference;


# instance fields
.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/ao;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/a/a/w;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Landroid/support/v7/preference/at;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->DialogPreference_dialogTitle:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->g:Ljava/lang/CharSequence;

    iget-object p2, p0, Landroid/support/v7/preference/DialogPreference;->g:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->x()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->g:Ljava/lang/CharSequence;

    :cond_0
    sget p2, Landroid/support/v7/preference/at;->DialogPreference_dialogMessage:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->h:Ljava/lang/CharSequence;

    sget p2, Landroid/support/v7/preference/at;->DialogPreference_dialogIcon:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_dialogIcon:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->i:Landroid/graphics/drawable/Drawable;

    sget p2, Landroid/support/v7/preference/at;->DialogPreference_positiveButtonText:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->j:Ljava/lang/CharSequence;

    sget p2, Landroid/support/v7/preference/at;->DialogPreference_negativeButtonText:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/DialogPreference;->k:Ljava/lang/CharSequence;

    sget p2, Landroid/support/v7/preference/at;->DialogPreference_dialogLayout:I

    sget p3, Landroid/support/v7/preference/at;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/a/a/w;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/DialogPreference;->l:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/DialogPreference;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/DialogPreference;->l:I

    return v0
.end method

.method protected g()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/DialogPreference;->M()Landroid/support/v7/preference/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/af;->a(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
