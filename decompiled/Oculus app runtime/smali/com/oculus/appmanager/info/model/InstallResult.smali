.class public Lcom/oculus/appmanager/info/model/InstallResult;
.super Ljava/lang/Object;
.source "InstallResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/appmanager/info/model/InstallResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final error:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public final packageName:Ljava/lang/String;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResult$1;

    invoke-direct {v0}, Lcom/oculus/appmanager/info/model/InstallResult$1;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/info/model/InstallResult;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/appmanager/info/model/InstallResult;->timestampMs:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p1}, Lcom/oculus/appmanager/info/model/InstallResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/InstallResultError;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/appmanager/info/model/InstallResult;->error:Lcom/oculus/appmanager/info/model/InstallResultError;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/oculus/appmanager/info/model/InstallResult;->error:Lcom/oculus/appmanager/info/model/InstallResultError;

    :goto_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/appmanager/info/model/InstallResult;->packageName:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/oculus/appmanager/info/model/InstallResult;->timestampMs:J

    .line 31
    iput-object p4, p0, Lcom/oculus/appmanager/info/model/InstallResult;->error:Lcom/oculus/appmanager/info/model/InstallResultError;

    return-void
.end method

.method public static createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)Lcom/oculus/appmanager/info/model/InstallResult;
    .locals 1

    .line 21
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/appmanager/info/model/InstallResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)V

    return-object v0
.end method

.method public static createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallResult;
    .locals 2

    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oculus/appmanager/info/model/InstallResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallResultError;)V

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

    .line 46
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallResult;->error:Lcom/oculus/appmanager/info/model/InstallResultError;

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

    .line 69
    iget-object p2, p0, Lcom/oculus/appmanager/info/model/InstallResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/oculus/appmanager/info/model/InstallResult;->timestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object p2, p0, Lcom/oculus/appmanager/info/model/InstallResult;->error:Lcom/oculus/appmanager/info/model/InstallResultError;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/oculus/appmanager/info/model/InstallResultError;->code:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
