.class public Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "GuardianHandDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructDialogDrawables(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;)V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    move-object/from16 v0, p0

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 80
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->guardian_controller_locator_outline_shape:I

    const/4 v5, 0x0

    .line 89
    invoke-static {v3, v4, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    .line 94
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 95
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/oculus/panelapp/anytimeui/R$drawable;->guardian_controller_locator_fill_shape:I

    .line 100
    invoke-static {v6, v7, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 113
    sget-object v7, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    const/4 v8, 0x1

    move-object/from16 v9, p1

    if-ne v9, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    .line 119
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/oculus/panelapp/anytimeui/R$drawable;->guardian_controller_locator_arrow_shape:I

    .line 118
    invoke-static {v9, v10, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 120
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    .line 121
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 122
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/oculus/panelapp/anytimeui/R$drawable;->guardian_controller_locator_arrow_shape:I

    .line 125
    invoke-static {v10, v11, v5}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v9, :cond_4

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x16

    const/4 v11, 0x4

    .line 133
    invoke-virtual {v9, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 134
    invoke-virtual {v5, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 140
    new-array v10, v4, [I

    mul-int/lit8 v12, v7, -0x26

    const/4 v13, 0x0

    aput v12, v10, v13

    const/16 v12, 0x1d

    aput v12, v10, v8

    .line 141
    new-array v12, v4, [I

    mul-int/lit8 v14, v7, -0x1d

    aput v14, v12, v13

    const/16 v14, 0x26

    aput v14, v12, v8

    .line 142
    new-array v14, v4, [F

    aget v15, v10, v13

    neg-int v15, v15

    int-to-float v15, v15

    const/high16 v16, 0x40800000    # 4.0f

    div-float v15, v15, v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v15, v15, v17

    aput v15, v14, v13

    aget v15, v10, v8

    neg-int v15, v15

    int-to-float v15, v15

    const/high16 v18, 0x41b00000    # 22.0f

    div-float v15, v15, v18

    add-float v15, v15, v17

    aput v15, v14, v8

    .line 147
    new-array v15, v4, [F

    aget v1, v12, v13

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v18

    add-float v1, v1, v17

    aput v1, v15, v13

    aget v1, v12, v8

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, v1, v16

    add-float v1, v1, v17

    aput v1, v15, v8

    .line 154
    invoke-virtual {v9, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 155
    aget v1, v14, v13

    aget v14, v14, v8

    invoke-virtual {v9, v1, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 156
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 157
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 158
    aget v1, v15, v13

    aget v14, v15, v8

    invoke-virtual {v5, v1, v14}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 159
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 162
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v2, v13

    aput-object v3, v2, v8

    aput-object v9, v2, v4

    const/4 v3, 0x3

    aput-object v5, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x11

    .line 167
    invoke-virtual {v1, v13, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 168
    invoke-virtual {v1, v8, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 169
    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 v20, 0x2

    .line 170
    aget v21, v10, v13

    aget v22, v10, v8

    aget v3, v10, v13

    neg-int v3, v3

    aget v4, v10, v8

    neg-int v4, v4

    move-object/from16 v19, v1

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v3, 0x3

    .line 172
    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 v20, 0x3

    .line 173
    aget v21, v12, v13

    aget v22, v12, v8

    aget v2, v12, v13

    neg-int v2, v2

    aget v3, v12, v8

    neg-int v3, v3

    move/from16 v23, v2

    move/from16 v24, v3

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, -0x3de00000    # -40.0f

    .line 181
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->setY(F)V

    mul-int/lit8 v7, v7, 0x28

    int-to-float v1, v7

    .line 182
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->setX(F)V

    const/16 v1, 0x98

    .line 185
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->setMinimumHeight(I)V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        -0xff1a
        -0x83f201
        -0xff1a
    .end array-data
.end method

.method private getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {p1}, Lcom/oculus/vrshell/SystemUXRoute;->fromPath(Ljava/lang/String;)Lcom/oculus/vrshell/SystemUXRoute;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_RIGHT_HAND_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->LEFT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;)V
    .locals 2

    .line 58
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_hand_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;->RIGHT_HAND_LOCATOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;

    if-ne p1, v1, :cond_0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->guardian_hand_right:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->guardian_hand_left:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog;->constructDialogDrawables(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianHandDialog$DialogType;)V

    return-void
.end method
