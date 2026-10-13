.class public final enum Lcom/oculus/os/enterprise/internal/Version;
.super Ljava/lang/Enum;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/os/enterprise/internal/Version;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/enterprise/internal/Version;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/os/enterprise/internal/Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VERSION_0:Lcom/oculus/os/enterprise/internal/Version;

.field public static final enum VERSION_1:Lcom/oculus/os/enterprise/internal/Version;

.field public static final enum VERSION_2:Lcom/oculus/os/enterprise/internal/Version;

.field public static final enum VERSION_3:Lcom/oculus/os/enterprise/internal/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/oculus/os/enterprise/internal/Version;

    const/4 v1, 0x0

    const-string v2, "VERSION_0"

    invoke-direct {v0, v2, v1}, Lcom/oculus/os/enterprise/internal/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_0:Lcom/oculus/os/enterprise/internal/Version;

    .line 15
    new-instance v0, Lcom/oculus/os/enterprise/internal/Version;

    const/4 v2, 0x1

    const-string v3, "VERSION_1"

    invoke-direct {v0, v3, v2}, Lcom/oculus/os/enterprise/internal/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_1:Lcom/oculus/os/enterprise/internal/Version;

    .line 16
    new-instance v0, Lcom/oculus/os/enterprise/internal/Version;

    const/4 v3, 0x2

    const-string v4, "VERSION_2"

    invoke-direct {v0, v4, v3}, Lcom/oculus/os/enterprise/internal/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_2:Lcom/oculus/os/enterprise/internal/Version;

    .line 17
    new-instance v0, Lcom/oculus/os/enterprise/internal/Version;

    const/4 v4, 0x3

    const-string v5, "VERSION_3"

    invoke-direct {v0, v5, v4}, Lcom/oculus/os/enterprise/internal/Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->VERSION_3:Lcom/oculus/os/enterprise/internal/Version;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/oculus/os/enterprise/internal/Version;

    sget-object v5, Lcom/oculus/os/enterprise/internal/Version;->VERSION_0:Lcom/oculus/os/enterprise/internal/Version;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/os/enterprise/internal/Version;->VERSION_1:Lcom/oculus/os/enterprise/internal/Version;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/internal/Version;->VERSION_2:Lcom/oculus/os/enterprise/internal/Version;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/enterprise/internal/Version;->VERSION_3:Lcom/oculus/os/enterprise/internal/Version;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->$VALUES:[Lcom/oculus/os/enterprise/internal/Version;

    .line 40
    new-instance v0, Lcom/oculus/os/enterprise/internal/Version$1;

    invoke-direct {v0}, Lcom/oculus/os/enterprise/internal/Version$1;-><init>()V

    sput-object v0, Lcom/oculus/os/enterprise/internal/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static latest()Lcom/oculus/os/enterprise/internal/Version;
    .locals 2

    .line 26
    invoke-static {}, Lcom/oculus/os/enterprise/internal/Version;->values()[Lcom/oculus/os/enterprise/internal/Version;

    move-result-object v0

    .line 27
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/enterprise/internal/Version;
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/os/enterprise/internal/Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/os/enterprise/internal/Version;

    return-object p0
.end method

.method public static values()[Lcom/oculus/os/enterprise/internal/Version;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/os/enterprise/internal/Version;->$VALUES:[Lcom/oculus/os/enterprise/internal/Version;

    invoke-virtual {v0}, [Lcom/oculus/os/enterprise/internal/Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/enterprise/internal/Version;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAtLeast(Lcom/oculus/os/enterprise/internal/Version;)Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/oculus/os/enterprise/internal/Version;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/oculus/os/enterprise/internal/Version;->ordinal()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/oculus/os/enterprise/internal/Version;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
