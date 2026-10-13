.class public Lcom/oculus/horizon/widget/SwitchSetting;
.super Landroid/widget/LinearLayout;
.source "SwitchSetting.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final mSpinnerView:Landroid/view/View;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mSwitch:Landroid/widget/Switch;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/SwitchSetting;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/oculus/horizon/R$layout;->widget_switch_setting:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setGravity(I)V

    .line 45
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mTitle:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSubtitle:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->switchView:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->spinnerView:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSpinnerView:Landroid/view/View;

    .line 50
    if-nez p2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/oculus/horizon/R$styleable;->SwitchSetting:[I

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchSetting_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchSetting_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setTitle(Ljava/lang/String;)V

    .line 61
    :cond_2
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchSetting_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    sget v1, Lcom/oculus/horizon/R$styleable;->SwitchSetting_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 72
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSpinnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSpinnerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V
    .locals 2
    .param p1    # Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oculus/horizon/widget/SwitchSetting$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/widget/SwitchSetting$1;-><init>(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oculus/horizon/widget/SwitchSetting$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/widget/SwitchSetting$2;-><init>(Lcom/oculus/horizon/widget/SwitchSetting;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSubtitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/SwitchSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setTitle(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 82
    return-void
.end method
