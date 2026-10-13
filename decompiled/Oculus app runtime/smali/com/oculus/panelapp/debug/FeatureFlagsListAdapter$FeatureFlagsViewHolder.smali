.class public Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FeatureFlagsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureFlagsViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;
    }
.end annotation


# instance fields
.field private final mActionButton:Landroid/widget/Button;

.field private final mCategoryHeader:Landroid/widget/TextView;

.field private final mEditText:Landroid/widget/EditText;

.field private final mLabel:Landroid/widget/TextView;

.field private final mSaveText:Landroid/widget/Button;

.field private final mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

.field private mSetting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

.field private final mSpinner:Landroid/widget/Spinner;

.field private mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

.field private final mSwitch:Landroid/widget/Switch;

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    .line 57
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 407
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mTimer:Ljava/util/Timer;

    .line 58
    iput-object p3, p1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mContext:Landroid/content/Context;

    .line 59
    sget p1, Lcom/oculus/panelapp/debug/R$id;->category_label:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mCategoryHeader:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_label:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_switch:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 62
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_edittext:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    .line 63
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_savetext:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    .line 64
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_spinner:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    .line 65
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_seekbar_instance:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    .line 66
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_action_button:I

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    .line 68
    new-instance p1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$1;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Spinner;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindModel(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Ljava/util/Timer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Switch;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    return-object p0
.end method

.method private bindAction(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$1;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    const-string v0, "(Action)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private bindBoolean(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 2

    .line 144
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$2;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$2;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V

    .line 158
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->bind(Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V

    .line 159
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getSetting()V

    .line 161
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$3;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSwitch:Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    return-void
.end method

.method private bindCategoryHeader(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mCategoryHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mCategoryHeader:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private bindEditText(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 5

    .line 197
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$4;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$4;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V

    .line 212
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v1

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->INTEGER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v1

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->FLOAT:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v1, v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    const/16 v2, 0x3002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v1

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->STRING:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 220
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 229
    :goto_0
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->bind(Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V

    .line 230
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getSetting()V

    .line 233
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$5;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$5;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 249
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$6;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$6;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 223
    :cond_2
    invoke-static {}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Invalid type specified for setting %s: %s"

    .line 224
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private bindModel(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSetting:Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Setting %s.%s not unbound before binding new setting"

    .line 75
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->hideAllWidgets()V

    .line 81
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v0

    sget-object v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->CATEGORY_HEADER:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v0, v2, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindCategoryHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->BOOLEAN:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v0, v1, :cond_2

    .line 88
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindBoolean(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;->ACTION:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    if-ne v0, v1, :cond_3

    .line 90
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindAction(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindValue(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    :goto_0
    return-void
.end method

.method private bindSeekBar(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 5

    .line 286
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$7;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$7;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;)V

    .line 300
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getPresets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getPresets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getPresets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setType(Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;)V

    .line 315
    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getInputHint()Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setStyle(Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;)V

    .line 316
    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    invoke-virtual {v2, v1}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setPresets(Ljava/util/List;)V

    .line 318
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->bind(Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V

    .line 319
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getSetting()V

    .line 321
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$8;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 343
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setVisibility(I)V

    return-void

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The setting must have at least 2 presets for a SeekBar"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindSpinner(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 4

    .line 269
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getPresets()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 272
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 274
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    invoke-virtual {v1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;->reset()V

    .line 275
    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 276
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;->setSetting(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    .line 278
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->bind(Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V

    .line 279
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getSetting()V

    .line 280
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinnerListener:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder$SpinnerListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 282
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    return-void
.end method

.method private bindValue(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V
    .locals 2

    .line 178
    invoke-static {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->access$600(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getInputHint()Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_DISCRETE:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    if-eq v0, v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getInputHint()Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;->SLIDER_CONTINUOUS:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    if-ne v0, v1, :cond_1

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindSeekBar(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void

    .line 187
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getPresets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindSpinner(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->bindEditText(Lcom/oculus/panelapp/debug/SettingsIPC$Setting;)V

    return-void
.end method

.method private hideAllWidgets()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mCategoryHeader:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSaveText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mSeekBar:Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagSeekBar;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter$FeatureFlagsViewHolder;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
