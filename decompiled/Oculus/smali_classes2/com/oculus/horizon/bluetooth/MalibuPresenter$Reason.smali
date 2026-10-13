.class public final enum Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;
.super Ljava/lang/Enum;
.source "MalibuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/MalibuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

.field public static final enum UNABLE_TO_BOND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

.field public static final enum UNABLE_TO_FIND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-instance v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    const-string v1, "UNABLE_TO_FIND"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->UNABLE_TO_FIND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    .line 441
    new-instance v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    const-string v1, "UNABLE_TO_BOND"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->UNABLE_TO_BOND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->UNABLE_TO_FIND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->UNABLE_TO_BOND:Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->$VALUES:[Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

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
    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;
    .locals 1

    .prologue
    .line 439
    const-class v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->$VALUES:[Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    invoke-virtual {v0}, [Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
