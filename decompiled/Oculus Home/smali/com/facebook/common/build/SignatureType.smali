.class public final enum Lcom/facebook/common/build/SignatureType;
.super Ljava/lang/Enum;
.source "SignatureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/build/SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/build/SignatureType;

.field public static final enum DEBUG:Lcom/facebook/common/build/SignatureType;

.field public static final enum IN_HOUSE:Lcom/facebook/common/build/SignatureType;

.field public static final enum PROD:Lcom/facebook/common/build/SignatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    .line 55
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "IN_HOUSE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->IN_HOUSE:Lcom/facebook/common/build/SignatureType;

    .line 56
    new-instance v0, Lcom/facebook/common/build/SignatureType;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/build/SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/common/build/SignatureType;

    sget-object v1, Lcom/facebook/common/build/SignatureType;->DEBUG:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/common/build/SignatureType;->IN_HOUSE:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/common/build/SignatureType;->$VALUES:[Lcom/facebook/common/build/SignatureType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/build/SignatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/facebook/common/build/SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/build/SignatureType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/build/SignatureType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/common/build/SignatureType;->$VALUES:[Lcom/facebook/common/build/SignatureType;

    invoke-virtual {v0}, [Lcom/facebook/common/build/SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/build/SignatureType;

    return-object v0
.end method


# virtual methods
.method public getPermission()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "com.facebook.permission.%s.FB_APP_COMMUNICATION"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/common/build/SignatureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverPermission()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/common/build/SignatureType;->PROD:Lcom/facebook/common/build/SignatureType;

    invoke-virtual {p0, v0}, Lcom/facebook/common/build/SignatureType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "com.facebook.receiver.permission.ACCESS"

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.receiver.permission.%s.ACCESS"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/common/build/SignatureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
