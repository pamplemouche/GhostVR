.class public Lcom/oculus/horizon/widget/CustomSelectableSetting;
.super Landroid/widget/FrameLayout;
.source "CustomSelectableSetting.java"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_ENABLED:[I


# instance fields
.field private mSelectedIcon:Landroid/widget/ImageView;

.field private mSettingIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->STATE_ENABLED:[I

    .line 26
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->STATE_DISABLED:[I

    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 2

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSettingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSettingIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSettingIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {p1}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomSelectableSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 105
    return-void
.end method
