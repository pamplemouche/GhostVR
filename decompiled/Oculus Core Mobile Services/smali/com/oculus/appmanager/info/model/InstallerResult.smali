.class public Lcom/oculus/appmanager/info/model/InstallerResult;
.super Ljava/lang/Object;
.source "InstallerResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/appmanager/info/model/InstallerResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final error:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public final packageName:Ljava/lang/String;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResult$1;

    invoke-direct {v0}, Lcom/oculus/appmanager/info/model/InstallerResult$1;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->timestampMs:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-static {v0}, Lcom/oculus/appmanager/info/model/InstallerResultError;->fromInt(I)Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->timestampMs:J

    .line 31
    iput-object p4, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 32
    return-void
.end method

.method public static createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oculus/appmanager/info/model/InstallerResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)V

    return-object v0
.end method

.method public static createForSuccess(Ljava/lang/String;J)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oculus/appmanager/info/model/InstallerResult;-><init>(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->timestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/info/model/InstallerResult;->error:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget v0, v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->code:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
