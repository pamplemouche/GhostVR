.class public final enum Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;
.super Ljava/lang/Enum;
.source "StoresRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/store/StoresRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreOverride"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

.field public static final enum CONCEPTS_TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

.field public static final enum NONE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

.field public static final enum TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;


# instance fields
.field public final graphQLString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    const-string v1, "NONE"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->NONE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    .line 15
    new-instance v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    const-string v1, "TEST_STORE"

    const-string v2, "HORIZON_TEST_STORE"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    .line 17
    new-instance v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    const-string v1, "CONCEPTS_TEST_STORE"

    const-string v2, "HORIZON_CONCEPTS_TEST_STORE"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->CONCEPTS_TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    sget-object v1, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->NONE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->CONCEPTS_TEST_STORE:Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->$VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->graphQLString:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->$VALUES:[Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    invoke-virtual {v0}, [Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/api/store/StoresRequest$StoreOverride;

    return-object v0
.end method
