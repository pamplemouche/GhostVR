.class public final enum Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;
.super Ljava/lang/Enum;
.source "StoresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/store/StoresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

.field public static final enum V2:Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;


# instance fields
.field public final headerValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    const-string v1, "V2"

    const-string/jumbo v2, "v2"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->V2:Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    sget-object v1, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->V2:Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->$VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->headerValue:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->$VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/store/StoresRequest$StoreVersion;

    return-object v0
.end method
