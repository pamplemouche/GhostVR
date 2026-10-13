.class public Lcom/oculus/systemdialog/DialogDefinitionCustom;
.super Lcom/oculus/systemdialog/DialogDefinitionBase;
.source "DialogDefinitionCustom.java"


# static fields
.field public static final DIALOG_BACK_BUTTON_KEY:Ljava/lang/String; = "backButton"

.field public static final DIALOG_BODY_KEY:Ljava/lang/String; = "body"

.field public static final DIALOG_ICON_BUTTON_KEY:Ljava/lang/String; = "iconButton"

.field public static final DIALOG_INFORMATION_BOX_KEY:Ljava/lang/String; = "informationBox"

.field public static final DIALOG_INLINE_IMAGES_KEY:Ljava/lang/String; = "inlineImages"

.field public static final DIALOG_LIST_KEY:Ljava/lang/String; = "list"

.field public static final DIALOG_PRIMARY_BUTTON_KEY:Ljava/lang/String; = "primaryButton"

.field public static final DIALOG_SECONDARY_BUTTON_KEY:Ljava/lang/String; = "secondaryButton"

.field public static final DIALOG_STYLE_PRIMARY_AS_SECONDARY_KEY:Ljava/lang/String; = "stylePrimaryAsSecondary"

.field public static final DIALOG_TERTIARY_BUTTON_KEY:Ljava/lang/String; = "tertiaryButton"

.field public static final DIALOG_TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogBackButton:Lcom/oculus/systemdialog/DialogButton;

.field private final mDialogBody:Ljava/lang/String;

.field private mDialogIconButton:Lcom/oculus/systemdialog/DialogButtonIcon;

.field private mDialogInformationBox:Ljava/lang/String;

.field private mDialogInlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/systemdialog/DialogInlineImage;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogList:Lcom/oculus/systemdialog/DialogList;

.field private mDialogPrimaryButton:Lcom/oculus/systemdialog/DialogButtonText;

.field private mDialogSecondaryButton:Lcom/oculus/systemdialog/DialogButtonText;

.field private mDialogStylePrimaryAsSecondary:Z

.field private mDialogTertiaryButton:Lcom/oculus/systemdialog/DialogButtonText;

.field private final mDialogTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/oculus/systemdialog/DialogDefinitionBase;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogStylePrimaryAsSecondary:Z

    .line 44
    iput-object p2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogTitle:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addInlineImage(Lcom/oculus/systemdialog/DialogInlineImage;)V
    .locals 1

    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lcom/oculus/systemdialog/DialogDefinitionCustom;->TAG:Ljava/lang/String;

    const-string v0, "Dialog inline image must be non-null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInlineImages:Ljava/util/List;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInlineImages:Ljava/util/List;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInlineImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDialogConfigurationIPCParcel()Ljava/lang/String;
    .locals 4

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "custom"

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dialogId"

    .line 100
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 101
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    .line 102
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInformationBox:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "informationBox"

    .line 105
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInformationBox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogList:Lcom/oculus/systemdialog/DialogList;

    if-eqz v1, :cond_1

    const-string v1, "list"

    .line 109
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogList:Lcom/oculus/systemdialog/DialogList;

    .line 110
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogList;->getDialogListConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogPrimaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    if-eqz v1, :cond_2

    const-string v1, "primaryButton"

    .line 114
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogPrimaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    .line 116
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonText;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogSecondaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    if-eqz v1, :cond_3

    const-string v1, "secondaryButton"

    .line 120
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogSecondaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    .line 122
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonText;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogTertiaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    if-eqz v1, :cond_4

    const-string v1, "tertiaryButton"

    .line 126
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogTertiaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    .line 128
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonText;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogIconButton:Lcom/oculus/systemdialog/DialogButtonIcon;

    if-eqz v1, :cond_5

    const-string v1, "iconButton"

    .line 132
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogIconButton:Lcom/oculus/systemdialog/DialogButtonIcon;

    .line 133
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonIcon;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogBackButton:Lcom/oculus/systemdialog/DialogButton;

    if-eqz v1, :cond_6

    const-string v1, "backButton"

    .line 137
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogBackButton:Lcom/oculus/systemdialog/DialogButton;

    .line 138
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButton;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_6
    iget-boolean v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogStylePrimaryAsSecondary:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogPrimaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogSecondaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    if-eqz v1, :cond_7

    const-string v1, "stylePrimaryAsSecondary"

    .line 151
    iget-boolean v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogStylePrimaryAsSecondary:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInlineImages:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 156
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInlineImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/systemdialog/DialogInlineImage;

    .line 159
    invoke-virtual {v3}, Lcom/oculus/systemdialog/DialogInlineImage;->getDialogInlineImageConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_8
    const-string v2, "inlineImages"

    .line 162
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lcom/oculus/systemdialog/DialogDefinitionCustom;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog configuration JSON."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public setBackButton(Lcom/oculus/systemdialog/DialogButton;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogBackButton:Lcom/oculus/systemdialog/DialogButton;

    return-void
.end method

.method public setIconButton(Lcom/oculus/systemdialog/DialogButtonIcon;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogIconButton:Lcom/oculus/systemdialog/DialogButtonIcon;

    return-void
.end method

.method public setInformationBox(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogInformationBox:Ljava/lang/String;

    return-void
.end method

.method public setList(Lcom/oculus/systemdialog/DialogList;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogList:Lcom/oculus/systemdialog/DialogList;

    return-void
.end method

.method public setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogPrimaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    return-void
.end method

.method public setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogSecondaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    return-void
.end method

.method public setTertiaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogTertiaryButton:Lcom/oculus/systemdialog/DialogButtonText;

    return-void
.end method

.method public stylePrimaryAsSecondary()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/oculus/systemdialog/DialogDefinitionCustom;->mDialogStylePrimaryAsSecondary:Z

    return-void
.end method
