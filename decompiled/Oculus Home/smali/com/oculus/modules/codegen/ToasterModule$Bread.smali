.class public Lcom/oculus/modules/codegen/ToasterModule$Bread;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "ToasterModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/ToasterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bread"
.end annotation


# instance fields
.field public duration:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ToasterModule$Bread;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 123
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/ToasterModule$Bread;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ToasterModule$Bread;-><init>()V

    .line 125
    .local v0, "result":Lcom/oculus/modules/codegen/ToasterModule$Bread;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/ToasterModule$Bread;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->duration:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "duration"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->icon:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "icon"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "message"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->title:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "title"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_3
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 117
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->duration:Ljava/lang/String;

    .line 118
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->icon:Ljava/lang/String;

    .line 119
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->message:Ljava/lang/String;

    .line 120
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-object v1, p0, Lcom/oculus/modules/codegen/ToasterModule$Bread;->title:Ljava/lang/String;

    .line 121
    return-void

    .line 117
    :cond_0
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 120
    :cond_3
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
