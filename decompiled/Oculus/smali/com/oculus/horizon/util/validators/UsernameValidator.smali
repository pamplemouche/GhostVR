.class public Lcom/oculus/horizon/util/validators/UsernameValidator;
.super Ljava/lang/Object;
.source "UsernameValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/util/validators/UsernameValidator$Error;
    }
.end annotation


# static fields
.field private static final USERNAME_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "[a-zA-z]+[a-zA-Z0-9._-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator;->USERNAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLetter(C)Z
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validate(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/UsernameValidator$Error;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->WrongLength:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    .line 48
    :goto_0
    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/util/validators/UsernameValidator;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->StartsNonLetter:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator;->USERNAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    sget-object v0, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->ContainsNonLettersNumbers:Lcom/oculus/horizon/util/validators/UsernameValidator$Error;

    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
