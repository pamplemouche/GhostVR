.class public Lcom/oculus/horizon/util/validators/EmailValidator;
.super Ljava/lang/Object;
.source "EmailValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/util/validators/EmailValidator$Error;
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

.method public static validate(Ljava/lang/String;)Lcom/oculus/horizon/util/validators/EmailValidator$Error;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    if-eqz p0, :invalid

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :invalid

    const/4 v0, 0x0

    goto :done

    :invalid
    sget-object v0, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->WrongFormat:Lcom/oculus/horizon/util/validators/EmailValidator$Error;

    :done
    return-object v0
.end method
