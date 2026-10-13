.class public Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DeviceEnvironmentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceEnvironmentHeadersType"
.end annotation


# instance fields
.field public Accept_Language:Ljava/lang/String;

.field public User_Agent:Ljava/lang/String;

.field public X_ANDROID_ID:Ljava/lang/String;

.field public X_Build_Model:Ljava/lang/String;

.field public X_Build_Number:Ljava/lang/String;

.field public X_OC_Selected_Headset_Serial:Ljava/lang/String;

.field public X_OC_VrShell_Build_Name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 286
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;-><init>()V

    .line 288
    .local v0, "result":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "Accept-Language"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->Accept_Language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "X-ANDROID-ID"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "X-Build-Model"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "X-Build-Number"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "X-OC-Selected-Headset-Serial"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_Selected_Headset_Serial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v1, "X-OC-VrShell-Build-Name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_VrShell_Build_Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 277
    const-string v0, "Accept-Language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->Accept_Language:Ljava/lang/String;

    .line 278
    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->User_Agent:Ljava/lang/String;

    .line 279
    const-string v0, "X-ANDROID-ID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_ANDROID_ID:Ljava/lang/String;

    .line 280
    const-string v0, "X-Build-Model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Model:Ljava/lang/String;

    .line 281
    const-string v0, "X-Build-Number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_Build_Number:Ljava/lang/String;

    .line 282
    const-string v0, "X-OC-Selected-Headset-Serial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_Selected_Headset_Serial:Ljava/lang/String;

    .line 283
    const-string v0, "X-OC-VrShell-Build-Name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;->X_OC_VrShell_Build_Name:Ljava/lang/String;

    .line 284
    return-void
.end method
