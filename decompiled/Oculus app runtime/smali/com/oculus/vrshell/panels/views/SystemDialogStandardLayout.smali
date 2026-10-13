.class public Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
.super Lcom/oculus/vrshell/panels/views/SystemDialog;
.source "SystemDialogStandardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemDialogStandardLayout"


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mAcceptResult:Ljava/lang/String;

.field private mBackResult:Ljava/lang/String;

.field private mCalloutTextView:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelResult:Ljava/lang/String;

.field private mContentTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mGearButton:Landroid/widget/Button;

.field private mGearResult:Ljava/lang/String;

.field private mMiddleButton:Landroid/widget/Button;

.field private mMiddleResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/vrshell/panels/views/SystemDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    sget v1, Lcom/oculus/vrshell/shellpanel/R$layout;->system_dialog_standard_layout_dialog:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout:[I

    const/4 v3, 0x0

    .line 262
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 263
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_title:I

    .line 264
    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 265
    sget v1, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_titleText:I

    .line 266
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 265
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_contentText:I

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setContentText(Ljava/lang/CharSequence;)V

    .line 270
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_calloutText:I

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setCalloutText(Ljava/lang/CharSequence;)V

    .line 273
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_customLayout:I

    .line 274
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 277
    sget v1, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_custom_layout:I

    .line 278
    invoke-virtual {p0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 279
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCustomView:Landroid/view/View;

    .line 280
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    :cond_0
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_button_cancel:I

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelButton:Landroid/widget/Button;

    .line 284
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_cancelResult:I

    .line 285
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelResult:Ljava/lang/String;

    .line 286
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_cancelText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setCancelText(Ljava/lang/CharSequence;)V

    .line 288
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_button_middle:I

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    .line 289
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_middleResult:I

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleResult:Ljava/lang/String;

    .line 291
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_middleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setMiddleText(Ljava/lang/CharSequence;)V

    .line 293
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_button_accept:I

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptButton:Landroid/widget/Button;

    .line 294
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_acceptResult:I

    .line 295
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptResult:Ljava/lang/String;

    .line 296
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_acceptText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setAcceptText(Ljava/lang/CharSequence;)V

    .line 298
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_backResult:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mBackResult:Ljava/lang/String;

    .line 300
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_gear_btn:I

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearButton:Landroid/widget/Button;

    .line 301
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_gearResult:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearResult:Ljava/lang/String;

    .line 302
    iget-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getGearResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    .line 305
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptButton:Landroid/widget/Button;

    .line 306
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 308
    sget p2, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_button_bar_container:I

    invoke-virtual {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_2
    sget p2, Lcom/oculus/vrshell/shellpanel/R$styleable;->SystemDialogStandardLayout_tags:I

    .line 312
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 313
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->parseTags(I)V

    .line 315
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseTags(I)V
    .locals 9

    if-eqz p1, :cond_1

    .line 320
    sget v0, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_title:I

    .line 321
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 322
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 323
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const/4 v5, -0x1

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "[ButtonBarMargin=0]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "[TitleBottomMargin=6]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "[HideMiddleButtonOnLoad]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    const-string v6, "[ContentTextGravity=Center]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "[TitleLeftBottomMargin=48,24]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_5
    const-string v6, "[Title=85%]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_6
    const-string v6, "[Padding=Small]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 370
    sget-object v5, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 366
    :pswitch_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x30

    const/16 v6, 0x18

    .line 367
    invoke-virtual {v4, v5, v2, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 362
    :pswitch_1
    iget-object v4, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 347
    :pswitch_2
    invoke-virtual {p0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 348
    sget v5, Lcom/oculus/vrshell/shellpanel/R$dimen;->system_dialog_standard_layout_padding_small_top:I

    .line 350
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/oculus/vrshell/shellpanel/R$dimen;->system_dialog_standard_layout_padding_small_left:I

    .line 352
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sget v7, Lcom/oculus/vrshell/shellpanel/R$dimen;->system_dialog_standard_layout_padding_small_right:I

    .line 355
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sget v8, Lcom/oculus/vrshell/shellpanel/R$dimen;->system_dialog_standard_layout_padding_small_bottom:I

    .line 358
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 348
    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setPadding(IIII)V

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x11

    .line 344
    invoke-virtual {p0, v4}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setContentGravity(I)V

    goto :goto_2

    .line 337
    :pswitch_4
    sget v4, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_button_bar_container:I

    .line 338
    invoke-virtual {p0, v4}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 340
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 333
    :pswitch_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 334
    invoke-virtual {v4, v2, v2, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 329
    :pswitch_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    const v5, 0x3f59999a    # 0.85f

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xd861923 -> :sswitch_6
        -0x7912a4b -> :sswitch_5
        0x1ff9f8d3 -> :sswitch_4
        0x23e2168e -> :sswitch_3
        0x38e202f4 -> :sswitch_2
        0x63e0390e -> :sswitch_1
        0x681fa3f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, ""

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAcceptResult()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptResult:Ljava/lang/String;

    return-object v0
.end method

.method public getBackResult()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mBackResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelResult()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelResult:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getGearResult()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearResult:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleResult()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleResult:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCalloutGravity(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 177
    sget v0, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_callout:I

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setCalloutText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 163
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 164
    sget v0, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_callout:I

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCalloutTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCancelText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentGravity(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 150
    sget v0, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 137
    sget v0, Lcom/oculus/vrshell/shellpanel/R$id;->system_dialog_standard_layout_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mContentTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMiddleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$1;-><init>(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$2;-><init>(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$3;-><init>(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$4;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$4;-><init>(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mCancelButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mMiddleButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->mGearButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
