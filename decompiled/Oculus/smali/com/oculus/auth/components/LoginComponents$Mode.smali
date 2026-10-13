.class public final enum Lcom/oculus/auth/components/LoginComponents$Mode;
.super Ljava/lang/Enum;
.source "LoginComponents.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/components/LoginComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/auth/components/LoginComponents$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/auth/components/LoginComponents$Mode;

.field public static final enum CLAIM_DEVICE:Lcom/oculus/auth/components/LoginComponents$Mode;

.field public static final enum NORMAL:Lcom/oculus/auth/components/LoginComponents$Mode;

.field public static final enum SECURED_ACTION:Lcom/oculus/auth/components/LoginComponents$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    new-instance v0, Lcom/oculus/auth/components/LoginComponents$Mode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/auth/components/LoginComponents$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->NORMAL:Lcom/oculus/auth/components/LoginComponents$Mode;

    .line 174
    new-instance v0, Lcom/oculus/auth/components/LoginComponents$Mode;

    const-string v1, "SECURED_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/oculus/auth/components/LoginComponents$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->SECURED_ACTION:Lcom/oculus/auth/components/LoginComponents$Mode;

    .line 175
    new-instance v0, Lcom/oculus/auth/components/LoginComponents$Mode;

    const-string v1, "CLAIM_DEVICE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/auth/components/LoginComponents$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->CLAIM_DEVICE:Lcom/oculus/auth/components/LoginComponents$Mode;

    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/auth/components/LoginComponents$Mode;

    sget-object v1, Lcom/oculus/auth/components/LoginComponents$Mode;->NORMAL:Lcom/oculus/auth/components/LoginComponents$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/auth/components/LoginComponents$Mode;->SECURED_ACTION:Lcom/oculus/auth/components/LoginComponents$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/auth/components/LoginComponents$Mode;->CLAIM_DEVICE:Lcom/oculus/auth/components/LoginComponents$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->$VALUES:[Lcom/oculus/auth/components/LoginComponents$Mode;

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
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/auth/components/LoginComponents$Mode;
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/oculus/auth/components/LoginComponents$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/components/LoginComponents$Mode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/auth/components/LoginComponents$Mode;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/oculus/auth/components/LoginComponents$Mode;->$VALUES:[Lcom/oculus/auth/components/LoginComponents$Mode;

    invoke-virtual {v0}, [Lcom/oculus/auth/components/LoginComponents$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/auth/components/LoginComponents$Mode;

    return-object v0
.end method
