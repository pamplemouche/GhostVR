.class public final enum Lcom/oculus/horizon/util/validators/UsernameValidator$Error;
.super Ljava/lang/Enum;
.source "UsernameValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/util/validators/UsernameValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/util/validators/UsernameValidator$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

.field public static final enum ContainsNonLettersNumbers:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

.field public static final enum StartsNonLetter:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

.field public static final enum WrongLength:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;


# instance fields
.field private mStringResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    const-string v1, "WrongLength"

    sget v2, Lcom/oculus/horizon/R$string;->registration_username_error_length:I

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->WrongLength:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    .line 19
    new-instance v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    const-string v1, "StartsNonLetter"

    sget v2, Lcom/oculus/horizon/R$string;->registration_username_error_first_char:I

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->StartsNonLetter:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    .line 20
    new-instance v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    const-string v1, "ContainsNonLettersNumbers"

    sget v2, Lcom/oculus/horizon/R$string;->registration_username_error_regex:I

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->ContainsNonLettersNumbers:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    sget-object v1, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->WrongLength:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->StartsNonLetter:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->ContainsNonLettersNumbers:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->mStringResId:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/UsernameValidator$Error;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/util/validators/UsernameValidator$Error;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    invoke-virtual {v0}, [Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    return-object v0
.end method


# virtual methods
.method public getString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->mStringResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
