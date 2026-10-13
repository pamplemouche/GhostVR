.class public Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;
.super Ljava/lang/Object;
.source "MinimumAppVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/MinimumAppVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinimumAppVersionEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public display_name:Ljava/lang/String;

.field public download_uri:Ljava/lang/String;

.field public download_version:I

.field public external_signature:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minimum_version:I

.field public obbSize:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public obbUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public package_name:Ljava/lang/String;

.field public size:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->size:Lcom/google/common/base/Optional;

    .line 31
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbUri:Lcom/google/common/base/Optional;

    .line 32
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbSize:Lcom/google/common/base/Optional;

    .line 33
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->external_signature:Lcom/google/common/base/Optional;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->size:Lcom/google/common/base/Optional;

    .line 31
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbUri:Lcom/google/common/base/Optional;

    .line 32
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbSize:Lcom/google/common/base/Optional;

    .line 33
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->external_signature:Lcom/google/common/base/Optional;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->download_uri:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->download_version:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->display_name:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->minimum_version:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 44
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->size:Lcom/google/common/base/Optional;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbUri:Lcom/google/common/base/Optional;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 48
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbSize:Lcom/google/common/base/Optional;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->external_signature:Lcom/google/common/base/Optional;

    .line 52
    return-void

    .line 44
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_2

    .line 51
    :cond_3
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->download_uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->download_version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->minimum_version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->size:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->size:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbSize:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->obbSize:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->external_signature:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/api/common/MinimumAppVersion$MinimumAppVersionEntry;->external_signature:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void

    :cond_1
    move-wide v0, v2

    .line 61
    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 62
    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 64
    goto :goto_2
.end method
