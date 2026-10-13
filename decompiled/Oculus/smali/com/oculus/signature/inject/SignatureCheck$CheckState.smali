.class final enum Lcom/oculus/signature/inject/SignatureCheck$CheckState;
.super Ljava/lang/Enum;
.source "SignatureCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/signature/inject/SignatureCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/signature/inject/SignatureCheck$CheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/signature/inject/SignatureCheck$CheckState;

.field public static final enum FAILED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

.field public static final enum PASSED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

.field public static final enum UNCHECKED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    const-string v1, "UNCHECKED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/signature/inject/SignatureCheck$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->UNCHECKED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    .line 23
    new-instance v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    const-string v1, "PASSED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/signature/inject/SignatureCheck$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->PASSED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    .line 24
    new-instance v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/signature/inject/SignatureCheck$CheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->FAILED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    sget-object v1, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->UNCHECKED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->PASSED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->FAILED:Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->$VALUES:[Lcom/oculus/signature/inject/SignatureCheck$CheckState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/signature/inject/SignatureCheck$CheckState;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    return-object v0
.end method

.method public static values()[Lcom/oculus/signature/inject/SignatureCheck$CheckState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/signature/inject/SignatureCheck$CheckState;->$VALUES:[Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    invoke-virtual {v0}, [Lcom/oculus/signature/inject/SignatureCheck$CheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/signature/inject/SignatureCheck$CheckState;

    return-object v0
.end method
