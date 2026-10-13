.class public final enum Lcom/oculus/horizon/service_media/FileCapture$Mode;
.super Ljava/lang/Enum;
.source "FileCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/FileCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/FileCapture$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/FileCapture$Mode;

.field public static final enum ABUSE_CAPTURE:Lcom/oculus/horizon/service_media/FileCapture$Mode;

.field public static final enum CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

.field public static final enum UNKNOWN:Lcom/oculus/horizon/service_media/FileCapture$Mode;


# instance fields
.field public final mVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;

    const-string v1, "CAPTURE_TO_DISK"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/horizon/service_media/FileCapture$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    .line 68
    new-instance v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;

    const-string v1, "ABUSE_CAPTURE"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/horizon/service_media/FileCapture$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->ABUSE_CAPTURE:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    .line 69
    new-instance v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/service_media/FileCapture$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->UNKNOWN:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/service_media/FileCapture$Mode;

    sget-object v1, Lcom/oculus/horizon/service_media/FileCapture$Mode;->CAPTURE_TO_DISK:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/service_media/FileCapture$Mode;->ABUSE_CAPTURE:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/service_media/FileCapture$Mode;->UNKNOWN:Lcom/oculus/horizon/service_media/FileCapture$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->$VALUES:[Lcom/oculus/horizon/service_media/FileCapture$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->mVal:I

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/FileCapture$Mode;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/FileCapture$Mode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/oculus/horizon/service_media/FileCapture$Mode;->$VALUES:[Lcom/oculus/horizon/service_media/FileCapture$Mode;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/FileCapture$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/FileCapture$Mode;

    return-object v0
.end method
