.class public final enum Lcom/oculus/http/core/base/ApiError$Type;
.super Ljava/lang/Enum;
.source "ApiError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/http/core/base/ApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/http/core/base/ApiError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/http/core/base/ApiError$Type;

.field public static final enum CONVERSION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

.field public static final enum HTTP_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

.field public static final enum NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

.field public static final enum UNEXPECTED_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

.field public static final enum VALIDATIION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/oculus/http/core/base/ApiError$Type;

    const-string v1, "HTTP_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/oculus/http/core/base/ApiError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->HTTP_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    .line 148
    new-instance v0, Lcom/oculus/http/core/base/ApiError$Type;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/oculus/http/core/base/ApiError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    .line 149
    new-instance v0, Lcom/oculus/http/core/base/ApiError$Type;

    const-string v1, "CONVERSION_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/oculus/http/core/base/ApiError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->CONVERSION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    .line 150
    new-instance v0, Lcom/oculus/http/core/base/ApiError$Type;

    const-string v1, "UNEXPECTED_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/oculus/http/core/base/ApiError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->UNEXPECTED_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    .line 151
    new-instance v0, Lcom/oculus/http/core/base/ApiError$Type;

    const-string v1, "VALIDATIION_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/oculus/http/core/base/ApiError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->VALIDATIION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->HTTP_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->CONVERSION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->UNEXPECTED_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->VALIDATIION_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/http/core/base/ApiError$Type;->$VALUES:[Lcom/oculus/http/core/base/ApiError$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/http/core/base/ApiError$Type;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/oculus/http/core/base/ApiError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/core/base/ApiError$Type;

    return-object v0
.end method

.method public static values()[Lcom/oculus/http/core/base/ApiError$Type;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/oculus/http/core/base/ApiError$Type;->$VALUES:[Lcom/oculus/http/core/base/ApiError$Type;

    invoke-virtual {v0}, [Lcom/oculus/http/core/base/ApiError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/http/core/base/ApiError$Type;

    return-object v0
.end method
