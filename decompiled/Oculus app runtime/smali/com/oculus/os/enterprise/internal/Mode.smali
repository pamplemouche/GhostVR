.class public Lcom/oculus/os/enterprise/internal/Mode;
.super Ljava/lang/Object;
.source "Mode.java"

# interfaces
.implements Lcom/oculus/os/enterprise/Mode;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/os/enterprise/internal/Mode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final applications:[Ljava/lang/String;

.field final auiCapabilities:[Lcom/oculus/os/enterprise/AUICapability;

.field final defaultApplication:Ljava/lang/String;

.field final displayName:Ljava/lang/String;

.field final homeButtonBehaviour:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

.field final pin:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final version:Lcom/oculus/os/enterprise/internal/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/oculus/os/enterprise/internal/Mode$1;

    invoke-direct {v0}, Lcom/oculus/os/enterprise/internal/Mode$1;-><init>()V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/os/enterprise/internal/Version;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/oculus/os/enterprise/AUICapability;Lcom/oculus/os/enterprise/HomeButtonBehaviour;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/os/enterprise/internal/Version;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/oculus/os/enterprise/AUICapability;",
            "Lcom/oculus/os/enterprise/HomeButtonBehaviour;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/os/enterprise/internal/Mode;->version:Lcom/oculus/os/enterprise/internal/Version;

    .line 29
    iput-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->displayName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oculus/os/enterprise/internal/Mode;->applications:[Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/oculus/os/enterprise/internal/Mode;->defaultApplication:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/oculus/os/enterprise/internal/Mode;->auiCapabilities:[Lcom/oculus/os/enterprise/AUICapability;

    .line 33
    iput-object p6, p0, Lcom/oculus/os/enterprise/internal/Mode;->homeButtonBehaviour:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    .line 34
    iput-object p7, p0, Lcom/oculus/os/enterprise/internal/Mode;->pin:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApplications()[Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->applications:[Ljava/lang/String;

    return-object v0
.end method

.method public getAuiCapabilities()[Lcom/oculus/os/enterprise/AUICapability;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->auiCapabilities:[Lcom/oculus/os/enterprise/AUICapability;

    return-object v0
.end method

.method public getDefaultApplication()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->defaultApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeButtonBehaviour()Lcom/oculus/os/enterprise/HomeButtonBehaviour;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->homeButtonBehaviour:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    return-object v0
.end method

.method public getPin()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/oculus/os/enterprise/internal/Mode;->pin:Ljava/util/Optional;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 74
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->applications:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->defaultApplication:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->pin:Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->version:Lcom/oculus/os/enterprise/internal/Version;

    sget-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_1:Lcom/oculus/os/enterprise/internal/Version;

    invoke-virtual {p2, v0}, Lcom/oculus/os/enterprise/internal/Version;->isAtLeast(Lcom/oculus/os/enterprise/internal/Version;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->auiCapabilities:[Lcom/oculus/os/enterprise/AUICapability;

    array-length p2, p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/oculus/os/enterprise/internal/Mode;->auiCapabilities:[Lcom/oculus/os/enterprise/AUICapability;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 81
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oculus/os/enterprise/AUICapability;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->version:Lcom/oculus/os/enterprise/internal/Version;

    sget-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_2:Lcom/oculus/os/enterprise/internal/Version;

    invoke-virtual {p2, v0}, Lcom/oculus/os/enterprise/internal/Version;->isAtLeast(Lcom/oculus/os/enterprise/internal/Version;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/oculus/os/enterprise/internal/Mode;->homeButtonBehaviour:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    invoke-virtual {p2}, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
