.class public final enum Lcom/oculus/auth/service/AuthService$AuthResult;
.super Ljava/lang/Enum;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/service/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/auth/service/AuthService$AuthResult;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum ANOMALOUS_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum HTTP_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum INVALID_CREDENTIALS:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum LIMITED_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum LOGIN_APPROVALS_INVALID_CODE:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum LOGIN_APPROVALS_NOT_IN_CHECKPOINT:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum LOGIN_APPROVALS_RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum NETWORK_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum SUCCESS:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum TWO_FACTOR_LOGIN_REQUIRED:Lcom/oculus/auth/service/AuthService$AuthResult;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v4}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->SUCCESS:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 142
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "INVALID_CREDENTIALS"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->INVALID_CREDENTIALS:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 143
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "ANOMALOUS_LOGIN"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->ANOMALOUS_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 144
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "TWO_FACTOR_LOGIN_REQUIRED"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->TWO_FACTOR_LOGIN_REQUIRED:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 145
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "LOGIN_APPROVALS_NOT_IN_CHECKPOINT"

    const/16 v2, -0x9

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_NOT_IN_CHECKPOINT:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 146
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "LOGIN_APPROVALS_INVALID_CODE"

    const/4 v2, 0x5

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_INVALID_CODE:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 147
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "LOGIN_APPROVALS_RATE_LIMITED"

    const/4 v2, 0x6

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 148
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "LIMITED_LOGIN"

    const/4 v2, 0x7

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->LIMITED_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 149
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->NETWORK_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 150
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "RATE_LIMITED"

    const/16 v2, 0x9

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 151
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "HTTP_ERROR"

    const/16 v2, 0xa

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->HTTP_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 152
    new-instance v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0xb

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/auth/service/AuthService$AuthResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->UNKNOWN_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    .line 139
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/oculus/auth/service/AuthService$AuthResult;

    sget-object v1, Lcom/oculus/auth/service/AuthService$AuthResult;->SUCCESS:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/auth/service/AuthService$AuthResult;->INVALID_CREDENTIALS:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/auth/service/AuthService$AuthResult;->ANOMALOUS_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/auth/service/AuthService$AuthResult;->TWO_FACTOR_LOGIN_REQUIRED:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_NOT_IN_CHECKPOINT:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_INVALID_CODE:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->LOGIN_APPROVALS_RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->LIMITED_LOGIN:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->NETWORK_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->RATE_LIMITED:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->HTTP_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/auth/service/AuthService$AuthResult;->UNKNOWN_ERROR:Lcom/oculus/auth/service/AuthService$AuthResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->$VALUES:[Lcom/oculus/auth/service/AuthService$AuthResult;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lcom/oculus/auth/service/AuthService$AuthResult;->mCode:I

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/auth/service/AuthService$AuthResult;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/AuthService$AuthResult;

    return-object v0
.end method

.method public static values()[Lcom/oculus/auth/service/AuthService$AuthResult;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/oculus/auth/service/AuthService$AuthResult;->$VALUES:[Lcom/oculus/auth/service/AuthService$AuthResult;

    invoke-virtual {v0}, [Lcom/oculus/auth/service/AuthService$AuthResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/auth/service/AuthService$AuthResult;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/oculus/auth/service/AuthService$AuthResult;->mCode:I

    return v0
.end method
