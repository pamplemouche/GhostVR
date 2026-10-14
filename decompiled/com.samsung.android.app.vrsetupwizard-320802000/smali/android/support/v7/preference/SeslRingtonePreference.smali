.class public Landroid/support/v7/preference/SeslRingtonePreference;
.super Landroid/support/v7/preference/Preference;


# instance fields
.field protected g:I

.field protected h:Landroid/content/Context;

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/ao;->ringtonePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeslRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeslRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Landroid/support/v7/preference/at;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/preference/at;->RingtonePreference_android_ringtoneType:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->i:I

    sget p2, Landroid/support/v7/preference/at;->RingtonePreference_android_showDefault:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->j:Z

    sget p2, Landroid/support/v7/preference/at;->RingtonePreference_android_showSilent:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeslRingtonePreference;->k:Z

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslRingtonePreference;->a(Landroid/content/Intent;)V

    invoke-static {}, Landroid/support/v4/os/l;->a()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeslRingtonePreference;->j(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/support/v4/a/f;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeslRingtonePreference;->e(Ljava/lang/String;)Z

    return-void
.end method

.method protected a(Landroid/support/v7/preference/af;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/af;)V

    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeslRingtonePreference;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public j(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->g:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeslRingtonePreference;->J()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/preference/SeslRingtonePreference;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeslRingtonePreference;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/SeslRingtonePreference;->h:Landroid/content/Context;

    return-void
.end method
