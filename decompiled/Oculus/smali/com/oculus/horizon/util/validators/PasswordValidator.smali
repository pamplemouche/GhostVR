.class public Lcom/oculus/horizon/util/validators/PasswordValidator;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/util/validators/PasswordValidator$Error;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasSingleCharacter(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 54
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 56
    if-eq v3, v2, :cond_0

    move v0, v1

    .line 62
    :goto_1
    return v0

    .line 59
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/util/validators/PasswordValidator$Error;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->TooShort:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/oculus/horizon/util/validators/PasswordValidator;->hasSingleCharacter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/oculus/horizon/util/validators/PasswordValidator$Error;->OneCharacter:Lcom/oculus/horizon/util/validators/PasswordValidator$Error;

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
