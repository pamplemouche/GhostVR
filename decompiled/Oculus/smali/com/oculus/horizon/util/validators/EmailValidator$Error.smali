.class public final enum Lcom/oculus/horizon/util/validators/EmailValidator$Error;
.super Ljava/lang/Enum;
.source "EmailValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/util/validators/EmailValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/util/validators/EmailValidator$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/util/validators/EmailValidator$Error;

.field public static final enum WrongFormat:Lcom/oculus/horizon/util/validators/EmailValidator$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    const-string v1, "WrongFormat"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/util/validators/EmailValidator$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->WrongFormat:Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    sget-object v1, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->WrongFormat:Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/EmailValidator$Error;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/EmailValidator$Error;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/util/validators/EmailValidator$Error;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    invoke-virtual {v0}, [Lcom/oculus/horizon/util/validators/EmailValidator$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    return-object v0
.end method


# virtual methods
.method public getString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/oculus/horizon/R$string;->common_email_address_error_invalid:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
