.class final enum Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
.super Ljava/lang/Enum;
.source "SignatureChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/SignatureChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SignatureLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

.field public static final enum DEVELOPER:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

.field public static final enum UNSIGNED:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

.field public static final enum VR:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    const-string v1, "UNSIGNED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->UNSIGNED:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    .line 20
    new-instance v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->DEVELOPER:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    .line 21
    new-instance v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    const-string v1, "VR"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->VR:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    sget-object v1, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->UNSIGNED:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->DEVELOPER:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->VR:Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->$VALUES:[Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->$VALUES:[Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service/SignatureChecker$SignatureLevel;

    return-object v0
.end method
