.class public Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DeviceEnvironmentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceEnvironmentBlobType"
.end annotation


# instance fields
.field public browserVersionCode:D

.field public browserVersionName:Ljava/lang/String;

.field public deviceApiLevel:D

.field public deviceId:Ljava/lang/String;

.field public deviceLocale:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public deviceOTACode:Ljava/lang/String;

.field public deviceRegionCode:Ljava/lang/String;

.field public deviceSerial:Ljava/lang/String;

.field public deviceTypeCode:Ljava/lang/String;

.field public headsetTypeRaw:Ljava/lang/String;

.field public horizonVersionCode:D

.field public horizonVersionName:Ljava/lang/String;

.field public mediaGalleryInstalled:Z

.field public osVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public repositoryLocation:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

.field public shellCapabilityLevel:D

.field public shellFeatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shellVersionCode:D

.field public shellVersionName:Ljava/lang/String;

.field public systemActivitiesVersionCode:D

.field public systemActivitiesVersionName:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;

.field public versionCode:D

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 196
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;-><init>()V

    .line 198
    .local v0, "result":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "browserVersionCode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionCode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 139
    const-string v1, "browserVersionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "deviceApiLevel"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceApiLevel:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "deviceLocale"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v1, "deviceName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "deviceOTACode"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceOTACode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "deviceRegionCode"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceRegionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v1, "deviceSerial"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceSerial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "deviceTypeCode"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceTypeCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v1, "headsetTypeRaw"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->headsetTypeRaw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v1, "horizonVersionCode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionCode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    const-string v1, "horizonVersionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v1, "mediaGalleryInstalled"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->mediaGalleryInstalled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    const-string v1, "osVersionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->osVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v1, "repositoryLocation"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->repositoryLocation:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "shellCapabilityLevel"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellCapabilityLevel:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    const-string v1, "shellFeatureSets"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellFeatureSets:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "shellVersionCode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionCode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 158
    const-string v1, "shellVersionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "systemActivitiesVersionCode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionCode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 160
    const-string v1, "systemActivitiesVersionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "userAgent"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "versionCode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionCode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    const-string v1, "versionName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    const-string v0, "browserVersionCode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionCode:D

    .line 169
    const-string v0, "browserVersionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionName:Ljava/lang/String;

    .line 170
    const-string v0, "deviceApiLevel"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceApiLevel:D

    .line 171
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceId:Ljava/lang/String;

    .line 172
    const-string v0, "deviceLocale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceLocale:Ljava/lang/String;

    .line 173
    const-string v0, "deviceName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceName:Ljava/lang/String;

    .line 174
    const-string v0, "deviceOTACode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceOTACode:Ljava/lang/String;

    .line 175
    const-string v0, "deviceRegionCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceRegionCode:Ljava/lang/String;

    .line 176
    const-string v0, "deviceSerial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceSerial:Ljava/lang/String;

    .line 177
    const-string v0, "deviceTypeCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceTypeCode:Ljava/lang/String;

    .line 178
    const-string v0, "headsetTypeRaw"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->headsetTypeRaw:Ljava/lang/String;

    .line 179
    const-string v0, "horizonVersionCode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionCode:D

    .line 180
    const-string v0, "horizonVersionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionName:Ljava/lang/String;

    .line 181
    const-string v0, "mediaGalleryInstalled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->mediaGalleryInstalled:Z

    .line 182
    const-string v0, "osVersionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->osVersionName:Ljava/lang/String;

    .line 183
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->packageName:Ljava/lang/String;

    .line 184
    const-string v0, "repositoryLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->repositoryLocation:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    .line 185
    const-string v0, "shellCapabilityLevel"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellCapabilityLevel:D

    .line 186
    const-string v0, "shellFeatureSets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellFeatureSets:Ljava/util/List;

    .line 187
    const-string v0, "shellVersionCode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionCode:D

    .line 188
    const-string v0, "shellVersionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionName:Ljava/lang/String;

    .line 189
    const-string v0, "systemActivitiesVersionCode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionCode:D

    .line 190
    const-string v0, "systemActivitiesVersionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionName:Ljava/lang/String;

    .line 191
    const-string v0, "userAgent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->userAgent:Ljava/lang/String;

    .line 192
    const-string v0, "versionCode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionCode:D

    .line 193
    const-string v0, "versionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionName:Ljava/lang/String;

    .line 194
    return-void
.end method
