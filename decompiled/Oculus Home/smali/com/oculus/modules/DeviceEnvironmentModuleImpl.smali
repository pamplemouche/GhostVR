.class public Lcom/oculus/modules/DeviceEnvironmentModuleImpl;
.super Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.source "DeviceEnvironmentModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceEnvironmentHeaders:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;-><init>()V

    sput-object v0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;-><init>()V

    .line 35
    sget-object v0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call init before creating DeviceEnvironmentModuleImpl instance."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/oculus/device/NetworkHeaders;->getHeaders(Landroid/content/Context;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->mDeviceEnvironmentHeaders:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    .line 40
    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_0
    const-string p0, ""

    .line 215
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "first":C
    :cond_1
    :goto_0
    return-object p0

    .line 211
    .end local v0    # "first":C
    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 212
    .restart local v0    # "first":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 161
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 154
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 168
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 169
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-static {v1}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDeviceOTACode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p0, "serial"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 227
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 228
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 230
    .local v3, "hashSum":[B
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 231
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    const/4 v8, 0x4

    invoke-virtual {v0, v3, v5, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 232
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 233
    .local v6, "num":J
    long-to-double v8, v6

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    int-to-double v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    rem-double/2addr v8, v10

    double-to-long v8, v8

    long-to-int v1, v8

    .line 235
    .local v1, "code":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "d"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 238
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "code":I
    .end local v3    # "hashSum":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v6    # "num":J
    :goto_0
    return-object v5

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->TAG:Ljava/lang/String;

    const-string v8, "Error calculating the headset code"

    invoke-static {v5, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const-string v5, ""

    goto :goto_0
.end method

.method public static getDeviceSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-string v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/oculus/device/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsADBEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    .line 121
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getIsUnknownSourcesEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    .line 140
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static getRepositoryLocation(Ljava/lang/String;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;
    .locals 7
    .param p0, "repositoryLocationString"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    invoke-direct {v2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;-><init>()V

    .line 180
    .local v2, "repositoryLocation":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "repositoryLocationJson":Lorg/json/JSONObject;
    invoke-virtual {v2, v3}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->setFromJSONObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v3    # "repositoryLocationJson":Lorg/json/JSONObject;
    :goto_0
    iget-object v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->nodes:Ljava/util/List;

    if-nez v4, :cond_0

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->nodes:Ljava/util/List;

    .line 200
    :cond_0
    iget-object v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->remoteBookmark:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 201
    const-string v4, ""

    iput-object v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->remoteBookmark:Ljava/lang/String;

    .line 204
    :cond_1
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v4, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repository location is invalid JSON:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    .end local v0    # "jsonException":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "nullPointerException":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repository location is missing parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceRegion"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "headsetType"    # Ljava/lang/String;
    .param p4, "shellFeatureSets"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v2, "com.oculus.browser"

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 54
    .local v0, "details":Lcom/oculus/panellib/AppDetails;
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget v3, v0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionCode:D

    .line 55
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->browserVersionName:Ljava/lang/String;

    .line 57
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceApiLevel:D

    .line 58
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-static {p0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceId:Ljava/lang/String;

    .line 59
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-static {p0}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceLocale:Ljava/lang/String;

    .line 60
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-static {}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceName:Ljava/lang/String;

    .line 61
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceOTACode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceOTACode:Ljava/lang/String;

    .line 62
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iput-object p1, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceRegionCode:Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceSerial:Ljava/lang/String;

    .line 64
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iput-object p2, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->deviceTypeCode:Ljava/lang/String;

    .line 66
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iput-object p3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->headsetTypeRaw:Ljava/lang/String;

    .line 68
    const-string v2, "com.oculus.horizon"

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 69
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget v3, v0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionCode:D

    .line 70
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->horizonVersionName:Ljava/lang/String;

    .line 72
    const-string v2, "com.oculus.mediagallery"

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-boolean v3, v0, Lcom/oculus/panellib/AppDetails;->isInstalled:Z

    iput-boolean v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->mediaGalleryInstalled:Z

    .line 75
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->osVersionName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iput-object v1, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->packageName:Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    const-string v3, "{\"dirty\":true,\"nodes\":[{\"date\":1585662752.0252,\"landed\":true,\"node\":\"7ff354c8f99053d28d62c224e58b1fda812cbe14\",\"remoteBookmark\":\"remote/release-si-oculus-ovrs-2019.08.18\"}],\"remoteBookmark\":\"remote/release-si-oculus-ovrs-2019.08.18\"}"

    invoke-static {v3}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getRepositoryLocation(Ljava/lang/String;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->repositoryLocation:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    .line 82
    const-string v2, "com.oculus.vrshell"

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->getWithMetaData(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 83
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->metaData:Landroid/os/Bundle;

    const-string v4, "com.oculus.vrshell.systemux.capability_level"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellCapabilityLevel:D

    .line 84
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    const-string v3, ","

    invoke-virtual {p4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellFeatureSets:Ljava/util/List;

    .line 85
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget v3, v0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionCode:D

    .line 86
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->shellVersionName:Ljava/lang/String;

    .line 88
    const-string v2, "com.oculus.systemactivities"

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 89
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget v3, v0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionCode:D

    .line 91
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->systemActivitiesVersionName:Ljava/lang/String;

    .line 93
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    invoke-static {}, Lcom/oculus/device/NetworkHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->userAgent:Ljava/lang/String;

    .line 95
    invoke-static {p0, v1}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 96
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget v3, v0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    int-to-double v4, v3

    iput-wide v4, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionCode:D

    .line 97
    sget-object v2, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->versionName:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method protected getDeviceEnvironmentHeadersImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;>;"
    iget-object v0, p0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->mDeviceEnvironmentHeaders:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected isADBEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getIsADBEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 114
    .local v1, "enabled":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "enabled":Z
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected isUnknownSourcesEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getIsUnknownSourcesEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 133
    .local v1, "enabled":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "enabled":Z
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected marshallJSConstantEnvironment()Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->sDeviceEnvironmentBlob:Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    return-object v0
.end method
