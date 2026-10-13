.class final enum Lcom/oculus/installer/service/AssetManager$DownloadStatus;
.super Ljava/lang/Enum;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/installer/service/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/installer/service/AssetManager$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/installer/service/AssetManager$DownloadStatus;

.field public static final enum AVAILABLE:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

.field public static final enum INSTALLED:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

.field public static final enum IN_PROGRESS:Lcom/oculus/installer/service/AssetManager$DownloadStatus;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    const-string v1, "INSTALLED"

    const-string v2, "installed"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/installer/service/AssetManager$DownloadStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->INSTALLED:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    .line 61
    new-instance v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    const-string v1, "AVAILABLE"

    const-string v2, "available"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/installer/service/AssetManager$DownloadStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->AVAILABLE:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    .line 62
    new-instance v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    const-string v1, "IN_PROGRESS"

    const-string v2, "in-progress"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/installer/service/AssetManager$DownloadStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->IN_PROGRESS:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    sget-object v1, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->INSTALLED:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->AVAILABLE:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->IN_PROGRESS:Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->$VALUES:[Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->value:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/installer/service/AssetManager$DownloadStatus;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/installer/service/AssetManager$DownloadStatus;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/oculus/installer/service/AssetManager$DownloadStatus;->$VALUES:[Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    invoke-virtual {v0}, [Lcom/oculus/installer/service/AssetManager$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/installer/service/AssetManager$DownloadStatus;

    return-object v0
.end method
