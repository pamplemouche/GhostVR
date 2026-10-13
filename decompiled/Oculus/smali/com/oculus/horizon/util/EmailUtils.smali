.class public Lcom/oculus/horizon/util/EmailUtils;
.super Ljava/lang/Object;
.source "EmailUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maskEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/util/validators/EmailValidator;->validate(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/oculus/horizon/util/TextSpanUtils;->unicodeLength(Ljava/lang/String;)I

    move-result v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 28
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    int-to-char v0, v0

    .line 30
    div-int/lit8 v5, v4, 0x2

    if-le v1, v5, :cond_1

    if-ge v1, v4, :cond_1

    .line 31
    const/16 v0, 0x2a

    .line 33
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
