.class public Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogConfig"
.end annotation


# instance fields
.field public backButton:Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

.field public body:Ljava/lang/String;

.field public dialogId:Ljava/lang/String;

.field public iconButton:Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

.field public informationBox:Ljava/lang/String;

.field public inlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;",
            ">;"
        }
    .end annotation
.end field

.field public primaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

.field public secondaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

.field public stylePrimaryAsSecondary:Ljava/lang/Boolean;

.field public tertiaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;-><init>()V

    .line 154
    .local v0, "result":Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->backButton:Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    if-eqz v1, :cond_0

    const-string v2, "backButton"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->backButton:Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    if-nez v1, :cond_a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "body"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_1
    const-string v1, "dialogId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->dialogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->iconButton:Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    if-eqz v1, :cond_2

    const-string v2, "iconButton"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->iconButton:Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    if-nez v1, :cond_b

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->informationBox:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "informationBox"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->informationBox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->inlineImages:Ljava/util/List;

    if-eqz v1, :cond_4

    const-string v2, "inlineImages"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->inlineImages:Ljava/util/List;

    if-nez v1, :cond_c

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->primaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-eqz v1, :cond_5

    const-string v2, "primaryButton"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->primaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-nez v1, :cond_d

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->secondaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-eqz v1, :cond_6

    const-string v2, "secondaryButton"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->secondaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-nez v1, :cond_e

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->stylePrimaryAsSecondary:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const-string v1, "stylePrimaryAsSecondary"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->stylePrimaryAsSecondary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->tertiaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-eqz v1, :cond_8

    const-string v2, "tertiaryButton"

    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->tertiaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    if-nez v1, :cond_f

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->title:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "title"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_9
    :goto_6
    return-object v0

    .line 124
    :cond_a
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->backButton:Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    .line 127
    :cond_b
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->iconButton:Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 129
    :cond_c
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->inlineImages:Ljava/util/List;

    invoke-static {v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_2

    .line 130
    :cond_d
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->primaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_3

    .line 131
    :cond_e
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->secondaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_4

    .line 133
    :cond_f
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->tertiaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->convertToJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_5

    .line 135
    :catch_0
    move-exception v1

    goto :goto_6
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "backButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->backButton:Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    .line 140
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->body:Ljava/lang/String;

    .line 141
    const-string v0, "dialogId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->dialogId:Ljava/lang/String;

    .line 142
    const-string v0, "iconButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->iconButton:Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    .line 143
    const-string v0, "informationBox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->informationBox:Ljava/lang/String;

    .line 144
    const-string v0, "inlineImages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->inlineImages:Ljava/util/List;

    .line 145
    const-string v0, "primaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->primaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    .line 146
    const-string v0, "secondaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->secondaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    .line 147
    const-string v0, "stylePrimaryAsSecondary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->stylePrimaryAsSecondary:Ljava/lang/Boolean;

    .line 148
    const-string v0, "tertiaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->tertiaryButton:Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    .line 149
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_9
    iput-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogConfig;->title:Ljava/lang/String;

    .line 150
    return-void

    .line 139
    :cond_0
    const-string v0, "backButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_2
    const-string v0, "iconButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_3
    const-string v0, "informationBox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 144
    :cond_4
    const-string v0, "inlineImages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v2, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;

    invoke-static {v0, v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 145
    :cond_5
    const-string v0, "primaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    move-result-object v0

    goto :goto_5

    .line 146
    :cond_6
    const-string v0, "secondaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    move-result-object v0

    goto :goto_6

    .line 147
    :cond_7
    const-string v0, "stylePrimaryAsSecondary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 148
    :cond_8
    const-string v0, "tertiaryButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    move-result-object v0

    goto :goto_8

    .line 149
    :cond_9
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method
