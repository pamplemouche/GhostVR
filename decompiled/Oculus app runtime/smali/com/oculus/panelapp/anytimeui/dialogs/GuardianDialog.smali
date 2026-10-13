.class public Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "GuardianDialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;,
        Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;,
        Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;
    }
.end annotation


# static fields
.field private static GUARDIAN_DIALOG_NORMAL_HEIGHT:I = 0x352

.field private static GUARDIAN_DIALOG_NORMAL_PADDING:I = 0xe1

.field private static GUARDIAN_DIALOG_NORMAL_SPACER:I = 0xc8

.field private static GUARDIAN_DIALOG_SHORT_HEIGHT:I = 0x1aa

.field private static GUARDIAN_DIALOG_SHORT_PADDING:I = 0x76

.field private static GUARDIAN_DIALOG_SHORT_SPACER:I = 0x50

.field private static GUARDIAN_DIALOG_SURVEY_HEIGHT:I = 0x352

.field private static GUARDIAN_DIALOG_SURVEY_PADDING:I = 0xe1

.field private static GUARDIAN_DIALOG_SURVEY_SPACER:I = 0xc8

.field private static displayType:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

.field private static displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;


# instance fields
.field private btn1Result:Ljava/lang/String;

.field private btn2Result:Ljava/lang/String;

.field private btn3Result:Ljava/lang/String;

.field private btnBackResult:Ljava/lang/String;

.field private dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mDialogSpacer:Landroid/view/View;

.field private mDialogSpacerNoAnimatic:Landroid/view/View;

.field private mFailedSurvey:Landroid/widget/LinearLayout;

.field private mFirstActionButton:Landroid/widget/Button;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGuardianPadding:Landroid/widget/LinearLayout;

.field private mManualSurvey:Landroid/widget/LinearLayout;

.field private mSecondActionButton:Landroid/widget/Button;

.field private mShowCancelAction:Z

.field private mShowSurvey:I

.field private mSurveyCBs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mSurveyContainer:Landroid/widget/LinearLayout;

.field private mSurveyOpts:[Z

.field private mThirdActionButton:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayType:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 259
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 257
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->NUM_DIALOG_RESERVED_SLOTS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p1

    new-array p1, p1, [Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    const-string p1, ""

    .line 809
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn1Result:Ljava/lang/String;

    .line 810
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn2Result:Ljava/lang/String;

    .line 811
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn3Result:Ljava/lang/String;

    .line 812
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btnBackResult:Ljava/lang/String;

    const/4 p2, 0x0

    .line 814
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowCancelAction:Z

    .line 820
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    const/4 p2, 0x5

    .line 825
    new-array p2, p2, [Z

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyOpts:[Z

    .line 827
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mapId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 828
    iput p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    .line 265
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    const-string v0, "US"

    if-ne p2, v0, :cond_0

    const-string p2, "_imperial"

    goto :goto_0

    :cond_0
    const-string p2, "_metric"

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->GUARDIAN_WELCOME:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v1

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v3, "guardian_welcome_title"

    .line 271
    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v3, "guardian_welcome_body"

    .line 272
    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v3, "guardian_btn_continue"

    .line 273
    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v4, "startSetup"

    .line 274
    invoke-virtual {v2, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const/4 v5, 0x1

    .line 275
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const/4 v5, 0x1

    .line 276
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 278
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->CONFIRM_FLOOR:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v1

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v5, "guardian_setup_confirm_floor"

    .line 280
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v5, "guardian_setup_confirm_floor_body"

    .line 281
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v5, "guardian_btn_reset"

    .line 282
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v5, "resetFloorHeight"

    .line 283
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v5, "guardian_btn_confirm"

    .line 284
    invoke-virtual {v2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    const-string v6, "setFloorHeight"

    .line 285
    invoke-virtual {v2, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {v2, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p1

    const/4 v2, 0x1

    .line 287
    invoke-virtual {p1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object p1

    aput-object p1, v0, v1

    .line 289
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->DRAW_BOUNDARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v2, "guardian_boundary_title"

    .line 291
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v6, "guardian_boundary_body"

    .line 292
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v6, "guardian_btn_skip"

    .line 293
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v6, "selectStationary"

    .line 294
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn3Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const/4 v6, 0x1

    .line 296
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->reduceHeight(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v1

    aput-object v1, p1, v0

    .line 299
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_SETUP_FAILED:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 301
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guardian_setup_failed_body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v6, "guardian_btn_try_again"

    .line 303
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v7, "startBoundaryMode"

    .line 304
    invoke-virtual {v1, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 305
    invoke-virtual {v1, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v8, "selectStationary"

    .line 306
    invoke-virtual {v1, v8}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 307
    invoke-virtual {v1, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const/4 v8, 0x1

    .line 308
    invoke-virtual {v1, v8}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v1

    aput-object v1, p1, v0

    .line 310
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SIZE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 312
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "guardian_setup_not_optimal"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 316
    invoke-virtual {v1, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const-string v2, "completeDrawing"

    .line 317
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {v1, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 319
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v1

    aput-object v1, p1, v0

    .line 321
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_CONFIRM:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v2, "guardian_roomscale_confirm_title"

    .line 323
    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "guardian_roomscale_confirm_body"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 324
    invoke-virtual {v1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    .line 326
    invoke-virtual {p2, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    .line 327
    invoke-virtual {p2, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    const-string v1, "completeDrawing"

    .line 328
    invoke-virtual {p2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    .line 329
    invoke-virtual {p2, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    const/4 v1, 0x1

    .line 330
    invoke-virtual {p2, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object p2

    .line 331
    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object p2

    aput-object p2, p1, v0

    .line 333
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SET_FORWARD:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_setup_forward_title"

    .line 335
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_setup_forward_desc"

    .line 336
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "forwardSet"

    .line 338
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 339
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 343
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_roomscale_complete"

    .line 345
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_roomscale_complete_body"

    .line 346
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {v0, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "setupComplete"

    .line 348
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 349
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 353
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->STATIONARY_COMPLETE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_stationary_complete"

    .line 355
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_stationary_complete_body"

    .line 356
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "stationaryComplete"

    .line 358
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 359
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 363
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->BOUNDARY_COMPLETE_NOT_OPTIMAL:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_roomscale_complete"

    .line 365
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_roomscale_small_complete_body"

    .line 366
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "setupComplete"

    .line 368
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 369
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v7}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btnBackReturn(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 371
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->hasVideo(Z)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 374
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_oob_title"

    .line 376
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_oob_body"

    .line 377
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_btn_stationary"

    .line 378
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "switchToStationary"

    .line 379
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "guardian_btn_roomscale"

    .line 380
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "forceSetup"

    .line 381
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v3, 0x1

    .line 382
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 384
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_STATIONARY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v3, "guardian_oob_title"

    .line 386
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "guardian_oob_body"

    .line 387
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "guardian_btn_roomscale"

    .line 390
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "switchToRoomscale"

    .line 391
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v3, 0x1

    .line 392
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 394
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->LEFT_BOUNDS_IN_BLACK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v3, "guardian_oob_title_in_black"

    .line 396
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "guardian_oob_body_in_black"

    .line 397
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_btn_roomscale"

    .line 400
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "forceSetup"

    .line 401
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 402
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 405
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_FOUND:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_map_found"

    .line 407
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_map_found_desc"

    .line 408
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_btn_change"

    .line 409
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "forceSetup"

    .line 410
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_btn_confirm_guardian"

    .line 411
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "confirm"

    .line 412
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn2Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 414
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_RELOC:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_map_reloc"

    .line 416
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_map_reloc_desc"

    .line 417
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 419
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->MAP_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_new_map"

    .line 421
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_new_map_desc"

    .line 422
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_create"

    .line 423
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 424
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 429
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_error_tracking"

    .line 431
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_lost_body"

    .line 432
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 434
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 436
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_too_bright"

    .line 437
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 439
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 441
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_too_dark"

    .line 442
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 444
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_bad_texture"

    .line 447
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 451
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 453
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_lost_body_continue"

    .line 454
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_btn_enable_3dof"

    .line 455
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "disableInsight"

    .line 456
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 458
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 460
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v4, "guardian_tracking_too_bright_continue"

    .line 461
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 463
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 465
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 467
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v4, "guardian_tracking_too_dark_continue"

    .line 468
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 470
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 472
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_CONTINUE:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v4, "guardian_tracking_bad_texture_continue"

    .line 475
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 476
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 477
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 481
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_LOST_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 483
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_tracking_lost_quit"

    .line 484
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v2, "guardian_btn_quit_app"

    .line 485
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v3, "quitApplication"

    .line 486
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 488
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_BRIGHT_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 490
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v4, "guardian_tracking_too_bright_quit"

    .line 491
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 492
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 495
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_TOO_DARK_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 497
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v4, "guardian_tracking_too_dark_quit"

    .line 498
    invoke-virtual {v0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 502
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->TRACKING_BAD_TEXTURE_QUIT:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 504
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_tracking_bad_texture_quit"

    .line 505
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 507
    invoke-virtual {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 510
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_pt_warning_title"

    .line 512
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_pt_warning_body"

    .line 513
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_acknowledge_pt_warning"

    .line 514
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "acknowledgePtWarning"

    .line 515
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 516
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 519
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->PT_WARNING_SETUP:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_pt_warning_setup_title"

    .line 521
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_pt_warning_setup_body"

    .line 522
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->bodyId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "guardian_acknowledge_pt_warning"

    .line 523
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "acknowledgePtWarning"

    .line 524
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 525
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    .line 528
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p2

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    const-string v1, "guardian_survey_title"

    .line 530
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->titleId(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "home_dialog_button_bug_report"

    .line 531
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Id(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const-string v1, "submitSurvey"

    .line 532
    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1Return(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 533
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->btn1UsePrimaryStyle(Ljava/lang/Boolean;)Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogBuilder;->buildInfo()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    move-result-object v0

    aput-object v0, p1, p2

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mapId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyOpts:[Z

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->resetSurveyValues()V

    return-void
.end method

.method static synthetic access$500()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn1Result:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn2Result:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn3Result:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btnBackResult:Ljava/lang/String;

    return-object p0
.end method

.method private getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 778
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 780
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private resetSurveyValues()V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 785
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 787
    :cond_0
    iput v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    .line 788
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, ""

    .line 789
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mapId:Ljava/lang/String;

    return-void
.end method

.method private updateContentsForSurvey()V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFailedSurvey:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mManualSurvey:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1

    .line 663
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 665
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->updateContentsForSurvey()V

    .line 667
    sput-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 668
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;)V

    goto :goto_0

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->resetSurveyValues()V

    .line 671
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;)V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 539
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 540
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_body:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBodyTextView:Landroid/widget/TextView;

    .line 541
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_btn1:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    .line 542
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_btn2:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    .line 543
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_btn3:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    .line 544
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_spacer:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    .line 545
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_dialog_spacer_no_anim:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacerNoAnimatic:Landroid/view/View;

    .line 546
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_back_btn:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBackButton:Landroid/widget/ImageButton;

    .line 547
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_frame:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 548
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_padding:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    .line 550
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_survey:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyContainer:Landroid/widget/LinearLayout;

    .line 551
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_survey_reloc_failed:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFailedSurvey:Landroid/widget/LinearLayout;

    .line 552
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->guardian_survey_manual_setup:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mManualSurvey:Landroid/widget/LinearLayout;

    .line 554
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 555
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_failed_a:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_failed_b:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_failed_c:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_failed_d:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_failed_e:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_manual_a:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_manual_b:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_manual_c:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_manual_d:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->survey_manual_e:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->addPanelFrameCallback(Lcom/oculus/vrshell/panels/AndroidPanelApp$PanelFrameCallback;)V

    .line 569
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBackButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;

    invoke-direct {v2, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSurveyCBs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 620
    new-instance v2, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;

    invoke-direct {v2, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$5;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBeginFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public onEndFrame(Lcom/oculus/vrshell/panels/InputFrame;)V
    .locals 0

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowCancelAction:Z

    const-string v1, "setupForced"

    .line 640
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 641
    iput-boolean v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowCancelAction:Z

    :cond_0
    const-string v1, "showFailedSurvey"

    .line 645
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "showManualSurvey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    .line 648
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 649
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v4, p1, v0

    const-string v5, "mapId="

    .line 650
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "="

    .line 651
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 652
    array-length v5, v4

    if-ne v5, v3, :cond_3

    .line 653
    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mapId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v4, ""

    .line 655
    iput-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mapId:Ljava/lang/String;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;)V
    .locals 5

    .line 679
    sput-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayType:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    .line 680
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result p1

    aget-object p1, v0, p1

    .line 681
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    :goto_0
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    :goto_1
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 698
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn1Result:Ljava/lang/String;

    .line 700
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->button_background_primary:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->button_background_secondary:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFirstActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 710
    :goto_2
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 711
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 713
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1700(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn2Result:Ljava/lang/String;

    .line 715
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 716
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->button_background_primary:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->button_background_secondary:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mSecondActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 725
    :goto_3
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 726
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2000(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn3Result:Ljava/lang/String;

    goto :goto_4

    .line 729
    :cond_6
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowCancelAction:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    if-nez v0, :cond_7

    .line 730
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    const-string v4, "guardian_btn_cancel"

    invoke-direct {p0, v4}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "cancel"

    .line 732
    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btn3Result:Ljava/lang/String;

    goto :goto_4

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mThirdActionButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :goto_4
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 738
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->btnBackResult:Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5

    .line 741
    :cond_8
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mBackButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 744
    :goto_5
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Z

    move-result v0

    .line 745
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayType:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->SURVEY:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    if-ne v1, v4, :cond_9

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->INVALID_DIALOG:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    if-eq v1, v4, :cond_9

    .line 746
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->dialogData:[Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->displayTypeAfterSurvey:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 747
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Z

    move-result v0

    .line 750
    :cond_9
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacerNoAnimatic:Landroid/view/View;

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 753
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;->access$2300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogInfo;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 754
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_HEIGHT:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 755
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_HEIGHT:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 756
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_PADDING:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 757
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_PADDING:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 758
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_SPACER:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 759
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SHORT_SPACER:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    .line 760
    :cond_c
    iget p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mShowSurvey:I

    if-eqz p1, :cond_d

    .line 761
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_HEIGHT:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 762
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_HEIGHT:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 763
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_PADDING:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 764
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_PADDING:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 765
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_SPACER:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 766
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_SURVEY_SPACER:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    .line 768
    :cond_d
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_HEIGHT:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 769
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_HEIGHT:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 770
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_PADDING:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 771
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mGuardianPadding:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_PADDING:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 772
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_SPACER:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 773
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->mDialogSpacer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sget v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->GUARDIAN_DIALOG_NORMAL_SPACER:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_8
    return-void
.end method
