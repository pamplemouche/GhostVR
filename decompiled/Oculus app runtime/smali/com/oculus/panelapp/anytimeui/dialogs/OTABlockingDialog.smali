.class public Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "OTABlockingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;
    }
.end annotation


# static fields
.field private static final LANGUAGE_SWAP_TIME_IN_SECONDS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllLanguagesInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStoreView:Landroid/widget/ImageView;

.field private mDialogBody:Landroid/view/View;

.field private mDownloadText:Landroid/widget/TextView;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mGooglePlayView:Landroid/widget/ImageView;

.field private mNextIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    .line 37
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->TAG:Ljava/lang/String;

    const-string p2, "OTABlockingDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->updateLanguage()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mNextIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mNextIndex:I

    return p1
.end method

.method static synthetic access$204(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)I
    .locals 1

    .line 32
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mNextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mNextIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mDownloadText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAppStoreView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mGooglePlayView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mDialogBody:Landroid/view/View;

    return-object p0
.end method

.method private displayHeadsetCode()V
    .locals 5

    .line 92
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->headset_code_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->headset_code_text:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getHeadsetCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v3

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    const/16 v1, 0x8

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getHeadsetCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "SHA-256"

    .line 76
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/16 v0, 0x8

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double v5, p2

    .line 82
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    rem-double/2addr v0, v3

    double-to-long v0, v0

    long-to-int p1, v0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "d"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    sget-object p2, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->TAG:Ljava/lang/String;

    const-string v0, "Error calculating the headset code"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private setupAppStoreLanguages()V
    .locals 19

    move-object/from16 v6, p0

    .line 108
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->dialog_body:I

    invoke-virtual {v6, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mDialogBody:Landroid/view/View;

    .line 109
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->title_text:I

    invoke-virtual {v6, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mDownloadText:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->appstore_icon:I

    invoke-virtual {v6, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAppStoreView:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->googleplay_icon:I

    invoke-virtual {v6, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mGooglePlayView:Landroid/widget/ImageView;

    .line 113
    new-instance v7, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_en:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_en:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_en:I

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 118
    new-instance v8, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_jp:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_jp:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_jp:I

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 123
    new-instance v9, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_ru:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_ru:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_ru:I

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 128
    new-instance v10, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_fr:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_fr:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_fr:I

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 133
    new-instance v11, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_it:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_it:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_it:I

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 138
    new-instance v12, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_kr:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_kr:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_ko:I

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 143
    new-instance v13, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_es:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_es:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_es:I

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 148
    new-instance v14, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_pt:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_ptbr:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_ptbr:I

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 153
    new-instance v15, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_de:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_de:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_de:I

    move-object v0, v15

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 158
    new-instance v5, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_sch:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_cnsc:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_cnzh:I

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 163
    new-instance v5, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->ota_blocking_dialog_title_quest_tch:I

    sget v3, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_appstore_cntc:I

    sget v4, Lcom/oculus/panelapp/anytimeui/R$drawable;->img_ota_googleplay_zhtw:I

    move-object v0, v5

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$LanguageInfo;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;IIILcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;)V

    .line 171
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mAllLanguagesInfos:Ljava/util/List;

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 191
    iput v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mNextIndex:I

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->updateLanguage()V

    const/4 v0, 0x1

    .line 194
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 196
    iget-object v7, v6, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;

    invoke-direct {v8, v6}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x3

    const-wide/16 v11, 0x3

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private updateLanguage()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$anim;->fade_and_translate_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-static {v0, v1}, Lcom/oculus/vrshell/panels/InterpolatorUtils;->setInterpolator(Landroid/view/animation/Animation;Z)V

    .line 219
    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 249
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->mDialogBody:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V

    .line 44
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->displayHeadsetCode()V

    .line 51
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->setupAppStoreLanguages()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->suppressToasts()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->onDetachedFromWindow()V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/notifications/NotificationDataSetService;->getInstance(Landroid/content/Context;)Lcom/oculus/notifications/NotificationDataSetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/notifications/NotificationDataSetService;->unsuppressToasts()V

    return-void
.end method
