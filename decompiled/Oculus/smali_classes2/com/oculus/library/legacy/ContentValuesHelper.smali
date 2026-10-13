.class public Lcom/oculus/library/legacy/ContentValuesHelper;
.super Ljava/lang/Object;
.source "ContentValuesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnumOptional(Landroid/content/ContentValues;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-object p3

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p3

    goto :goto_0
.end method

.method public static getEnumRequiredOrThrow(Landroid/content/ContentValues;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oculus/library/legacy/ContentValuesHelper;->getEnumOptional(Landroid/content/ContentValues;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/oculus/library/legacy/ContentValuesHelper;->getRequiredOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public static getImagesRequiredOrThrow(Landroid/content/ContentValues;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, "images_blob"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/oculus/library/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    invoke-static {v0, v1}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/oculus/library/model/ParcelableModelHelper;->convertImageListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {}, Lcom/oculus/library/model/Image$ImageName;->values()[Lcom/oculus/library/model/Image$ImageName;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 31
    :cond_0
    invoke-static {v0}, Lcom/oculus/library/legacy/ContentValuesHelper;->getRequiredOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getOptional(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v0, "ContentValuesHelper"

    const-string v1, "Null value, using default value "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static getPermissionsRequiredOrThrow(Landroid/content/ContentValues;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "permissions_blob"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/oculus/library/model/AppPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    invoke-static {v0, v1}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/oculus/library/legacy/ContentValuesHelper;->getRequiredOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getRequiredOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create App because of missing value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-object p0
.end method

.method public static getSupportedInputDevicesRequiredOrThrow(Landroid/content/ContentValues;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "supported_input_devices_blob"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/oculus/library/model/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    invoke-static {v0, v1}, Lcom/oculus/library/model/ParcelableModelHelper;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/oculus/library/legacy/ContentValuesHelper;->getRequiredOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
