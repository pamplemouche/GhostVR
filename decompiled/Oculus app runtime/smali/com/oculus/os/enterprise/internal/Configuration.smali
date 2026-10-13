.class public Lcom/oculus/os/enterprise/internal/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Lcom/oculus/os/enterprise/Configuration;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/os/enterprise/internal/Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final controllerMode:Lcom/oculus/os/enterprise/ControllerMode;

.field public final defaultModeIndex:I

.field public final guardianMode:Lcom/oculus/os/enterprise/GuardianMode;

.field public final licenseExpirationDate:Ljava/util/Date;

.field public final modes:[Lcom/oculus/os/enterprise/internal/Mode;

.field final version:Lcom/oculus/os/enterprise/internal/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/oculus/os/enterprise/internal/Configuration$1;

    invoke-direct {v0}, Lcom/oculus/os/enterprise/internal/Configuration$1;-><init>()V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/os/enterprise/internal/Version;[Lcom/oculus/os/enterprise/internal/Mode;ILjava/util/Date;Lcom/oculus/os/enterprise/ControllerMode;Lcom/oculus/os/enterprise/GuardianMode;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/os/enterprise/internal/Configuration;->version:Lcom/oculus/os/enterprise/internal/Version;

    .line 27
    iput-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->modes:[Lcom/oculus/os/enterprise/internal/Mode;

    .line 28
    iput p3, p0, Lcom/oculus/os/enterprise/internal/Configuration;->defaultModeIndex:I

    .line 29
    iput-object p4, p0, Lcom/oculus/os/enterprise/internal/Configuration;->licenseExpirationDate:Ljava/util/Date;

    .line 30
    iput-object p5, p0, Lcom/oculus/os/enterprise/internal/Configuration;->controllerMode:Lcom/oculus/os/enterprise/ControllerMode;

    .line 31
    iput-object p6, p0, Lcom/oculus/os/enterprise/internal/Configuration;->guardianMode:Lcom/oculus/os/enterprise/GuardianMode;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getControllerMode()Lcom/oculus/os/enterprise/ControllerMode;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Configuration;->controllerMode:Lcom/oculus/os/enterprise/ControllerMode;

    return-object v0
.end method

.method public getDefaultModeIndex()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/oculus/os/enterprise/internal/Configuration;->defaultModeIndex:I

    return v0
.end method

.method public getGuardianMode()Lcom/oculus/os/enterprise/GuardianMode;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Configuration;->guardianMode:Lcom/oculus/os/enterprise/GuardianMode;

    return-object v0
.end method

.method public getLicenseExpirationDate()Ljava/util/Date;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Configuration;->licenseExpirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getModes()[Lcom/oculus/os/enterprise/Mode;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/oculus/os/enterprise/internal/Configuration;->getModes()[Lcom/oculus/os/enterprise/internal/Mode;

    move-result-object v0

    return-object v0
.end method

.method public getModes()[Lcom/oculus/os/enterprise/internal/Mode;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Configuration;->modes:[Lcom/oculus/os/enterprise/internal/Mode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 66
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->modes:[Lcom/oculus/os/enterprise/internal/Mode;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 67
    iget p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->defaultModeIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->licenseExpirationDate:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->version:Lcom/oculus/os/enterprise/internal/Version;

    sget-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_3:Lcom/oculus/os/enterprise/internal/Version;

    invoke-virtual {p2, v0}, Lcom/oculus/os/enterprise/internal/Version;->isAtLeast(Lcom/oculus/os/enterprise/internal/Version;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->controllerMode:Lcom/oculus/os/enterprise/ControllerMode;

    invoke-virtual {p2}, Lcom/oculus/os/enterprise/ControllerMode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Configuration;->guardianMode:Lcom/oculus/os/enterprise/GuardianMode;

    invoke-virtual {p2}, Lcom/oculus/os/enterprise/GuardianMode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
