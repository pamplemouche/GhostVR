.class public final enum Lcom/oculus/horizon/util/validators/PasswordValidator$Error;
.super Ljava/lang/Enum;
.source "PasswordValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/util/validators/PasswordValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/util/validators/PasswordValidator$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

.field public static final enum ContainsUsername:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

.field public static final enum OneCharacter:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

.field public static final enum TooShort:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;


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

    .line 15
    new-instance v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    const-string v1, "TooShort"

    sget v2, Lcom/oculus/horizon/R$string;->common_password_error_length:I

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->TooShort:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    .line 16
    new-instance v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    const-string v1, "OneCharacter"

    sget v2, Lcom/oculus/horizon/R$string;->common_password_error_single_character:I

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->OneCharacter:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    .line 17
    new-instance v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    const-string v1, "ContainsUsername"

    sget v2, Lcom/oculus/horizon/R$string;->common_password_error_contain_username:I

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->ContainsUsername:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    sget-object v1, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->TooShort:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->OneCharacter:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->ContainsUsername:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->mStringResId:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/PasswordValidator$Error;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/util/validators/PasswordValidator$Error;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->$VALUES:[Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    invoke-virtual {v0}, [Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    return-object v0
.end method


# virtual methods
.method public getString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->mStringResId:I

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->mStringResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
