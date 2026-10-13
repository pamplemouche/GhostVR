.class public Lcom/oculus/appmanager/info/model/UninstallResult;
.super Ljava/lang/Object;
.source "UninstallResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/appmanager/info/model/UninstallResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final error:Lcom/oculus/appmanager/info/model/UninstallResultError;

.field public final packageName:Ljava/lang/String;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResult$1;

    invoke-direct {v0}, Lcom/oculus/appmanager/info/model/UninstallResult$1;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/info/model/UninstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->packageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->timestampMs:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {p1}, Lcom/oculus/appmanager/info/model/UninstallResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/UninstallResultError;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->error:Lcom/oculus/appmanager/info/model/UninstallResultError;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->error:Lcom/oculus/appmanager/info/model/UninstallResultError;

    :goto_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/UninstallResultError;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->packageName:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->timestampMs:J

    .line 30
    iput-object p4, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->error:Lcom/oculus/appmanager/info/model/UninstallResultError;

    return-void
.end method

.method public static creatForError(Ljava/lang/String;Lcom/oculus/appmanager/info/model/UninstallResultError;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 3

    .line 20
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/oculus/appmanager/info/model/UninstallResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/UninstallResultError;)V

    return-object v0
.end method

.method public static createForSuccess(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 4

    .line 24
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/UninstallResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/UninstallResultError;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->error:Lcom/oculus/appmanager/info/model/UninstallResultError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 68
    iget-object p2, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-wide v0, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->timestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object p2, p0, Lcom/oculus/appmanager/info/model/UninstallResult;->error:Lcom/oculus/appmanager/info/model/UninstallResultError;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/oculus/appmanager/info/model/UninstallResultError;->code:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
