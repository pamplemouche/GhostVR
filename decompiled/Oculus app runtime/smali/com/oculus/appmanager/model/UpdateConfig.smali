.class public Lcom/oculus/appmanager/model/UpdateConfig;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_DOWNLOAD_SIZE:J = -0x1L


# instance fields
.field public final binaryId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final downloadName:Ljava/lang/String;

.field public final downloadSize:J

.field public final downloadUrl:Ljava/lang/String;

.field public final externalSignatures:Ljava/lang/String;

.field public final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final signature:Ljava/lang/String;

.field public final updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

.field public final versionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/oculus/appmanager/model/UpdateConfig$1;

    invoke-direct {v0}, Lcom/oculus/appmanager/model/UpdateConfig$1;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/model/UpdateConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/oculus/appmanager/model/UpdateConfig;->fromBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    :cond_2
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p1, v2

    :cond_3
    iput-object p1, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v11, p9

    .line 39
    invoke-direct/range {v0 .. v11}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    .line 61
    invoke-direct/range {v0 .. v13}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    .line 89
    iput-object p4, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 91
    iput-object p6, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    .line 93
    iput-wide p8, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    .line 94
    iput-object p10, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    .line 95
    iput-object p11, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    .line 96
    iput-object p12, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    .line 97
    iput-object p13, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    return-void
.end method

.method private fromBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 162
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 163
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extras key is not string value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private toBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 120
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-virtual {p2}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->asInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/oculus/appmanager/model/UpdateConfig;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
