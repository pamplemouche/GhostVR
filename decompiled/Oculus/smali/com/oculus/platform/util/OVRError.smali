.class public final enum Lcom/oculus/platform/util/OVRError;
.super Ljava/lang/Enum;
.source "OVRError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/platform/util/OVRError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/platform/util/OVRError;

.field public static final enum AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

.field public static final enum CALLER_NOT_SIGNED:Lcom/oculus/platform/util/OVRError;

.field public static final enum NETWORK_ERROR:Lcom/oculus/platform/util/OVRError;

.field public static final enum PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

.field public static final enum STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

.field public static final enum UNKNOWN_SERVER_ERROR:Lcom/oculus/platform/util/OVRError;


# instance fields
.field public final mCode:I

.field public final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    const-string v3, "An Unknown error occurred"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    .line 15
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "AUTHENTICATION_ERROR"

    const-string v2, "The user isn\'t signed in or their account state wasn\'t in a recoverable state."

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

    .line 19
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "The request could not be completed due to lack of network connectivity, network timeouts, etc"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->NETWORK_ERROR:Lcom/oculus/platform/util/OVRError;

    .line 24
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "STORE_INSTALLATION_ERROR"

    const-string v2, "Either the service couldn\'t be connected to, Horizon isn\'t installed, or you\'re running an incompatible version of Home/Horizon"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    .line 29
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "CALLER_NOT_SIGNED"

    const-string v2, "The app isn\'t VR signed."

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->CALLER_NOT_SIGNED:Lcom/oculus/platform/util/OVRError;

    .line 33
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "UNKNOWN_SERVER_ERROR"

    const/4 v2, 0x6

    const-string v3, "An unknown error occurred on the server."

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->UNKNOWN_SERVER_ERROR:Lcom/oculus/platform/util/OVRError;

    .line 37
    new-instance v0, Lcom/oculus/platform/util/OVRError;

    const-string v1, "PERMISSIONS_FAILURE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "Caller does not have permission to use platform on behalf of this user"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/platform/util/OVRError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/platform/util/OVRError;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oculus/platform/util/OVRError;->AUTHENTICATION_ERROR:Lcom/oculus/platform/util/OVRError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/platform/util/OVRError;->NETWORK_ERROR:Lcom/oculus/platform/util/OVRError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/platform/util/OVRError;->CALLER_NOT_SIGNED:Lcom/oculus/platform/util/OVRError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_SERVER_ERROR:Lcom/oculus/platform/util/OVRError;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/platform/util/OVRError;->$VALUES:[Lcom/oculus/platform/util/OVRError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/oculus/platform/util/OVRError;->mCode:I

    .line 47
    iput-object p4, p0, Lcom/oculus/platform/util/OVRError;->mErrorMessage:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static fromInt(I)Lcom/oculus/platform/util/OVRError;
    .locals 5

    .prologue
    .line 51
    invoke-static {}, Lcom/oculus/platform/util/OVRError;->values()[Lcom/oculus/platform/util/OVRError;

    move-result-object v2

    .line 52
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 53
    iget v4, v0, Lcom/oculus/platform/util/OVRError;->mCode:I

    if-ne v4, p0, :cond_0

    .line 57
    :goto_1
    return-object v0

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/platform/util/OVRError;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/util/OVRError;

    return-object v0
.end method

.method public static values()[Lcom/oculus/platform/util/OVRError;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/platform/util/OVRError;->$VALUES:[Lcom/oculus/platform/util/OVRError;

    invoke-virtual {v0}, [Lcom/oculus/platform/util/OVRError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/platform/util/OVRError;

    return-object v0
.end method
