.class public Lcom/oculus/appmanager/model/UpdateConfig;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/appmanager/model/UpdateConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final binaryId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final downloadChecksum:Ljava/lang/String;

.field public final downloadName:Ljava/lang/String;

.field public final downloadSize:J

.field public final downloadUrl:Ljava/lang/String;

.field public final externalSignatures:Ljava/lang/String;

.field public final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 147
    new-instance v0, Lcom/oculus/appmanager/model/UpdateConfig$1;

    invoke-direct {v0}, Lcom/oculus/appmanager/model/UpdateConfig$1;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/model/UpdateConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadChecksum:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/oculus/appmanager/model/UpdateConfig;->fromBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iput-object v1, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    .line 124
    return-void

    :cond_3
    move-object v1, v0

    .line 123
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 14

    .prologue
    .line 41
    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 65
    const/4 v12, 0x0

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    .line 65
    invoke-direct/range {v0 .. v14}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 94
    iput-wide p2, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    .line 95
    iput-object p4, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 97
    iput-object p6, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    .line 99
    iput-object p8, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadChecksum:Ljava/lang/String;

    .line 100
    iput-wide p9, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    .line 101
    iput-object p11, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    .line 102
    iput-object p12, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    .line 103
    iput-object p13, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    .line 104
    iput-object p14, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    .line 105
    return-void
.end method

.method private fromBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 172
    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extras key is not string value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_1
    return-object v2
.end method

.method private toBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->versionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->asInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadChecksum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-wide v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->downloadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->extras:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/oculus/appmanager/model/UpdateConfig;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->externalSignatures:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/oculus/appmanager/model/UpdateConfig;->binaryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void
.end method
